using System;
using System.Linq;
using System.Web.UI;
using BAL;

namespace Forum
{
    public partial class Topic : Page
    {
        public Guid? TopicId
        {
            get
            {
                if (String.IsNullOrEmpty(Request["Id"]))
                    return null;
                return new Guid(Request["Id"]);
            }
        }

        override protected void OnInit(EventArgs e)
        {
            AnswersControl.ReplyMessage += MessagesControl_ReplyMessage;
            AnswersControl.ReplyWithQuoteMessage += MessagesControl_ReplyWithQuoteMessage;
            AnswersControl.EditMessage += MessagesControl_EditMessage;
            AnswersControl.DeleteMessage += MessagesControl_DeleteMessage;
            PostMessageControl.MessageCreated += PostMessageControl_MessageCreated;
            base.OnInit(e);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (String.IsNullOrEmpty(Request["Id"]))
                    Response.Redirect("~/Default.aspx");
                PostMessageControl.Visible = false;
                btnBack1.Visible = btnBack2.Visible = true;
                //MessagesControl.ParentId = new Guid(Request["Id"]);
                BindMessages();
            }
        }

        private void BindMessages()
        {
            var messages = Serializer.Deserialize();
            if (TopicId.HasValue)
            {
                var currentMessage = messages.SingleOrDefault(m => m.Id == TopicId);
                if (currentMessage == null)
                    Response.Redirect("~/Default.aspx");
                messages = messages.Where(m => m.Ancestor != null && m.Ancestor.Id == TopicId).OrderBy(m => m.Created).ToList();
                messages.Insert(0, currentMessage);
                if (currentMessage != null) 
                    AnswersControl.Header = currentMessage.Subject;
            }
            else
                messages = messages.Where(m => !m.ParentId.HasValue).OrderBy(m => m.Created).ToList();
            AnswersControl.Messages = messages;
            AnswersControl.BindData();
        }

        protected void PostMessageControl_MessageCreated(object sender, EventArgs e)
        {
            BindMessages();
            btnBack1.Visible = btnBack2.Visible = true;
        }

        protected void MessagesControl_ReplyMessage(object sender, IdEventArgs e)
        {
            PostMessageControl.IsReply = true;
            PostMessageControl.Initialize(e.Id);
            PostMessageControl.Visible = true;
        }

        protected void MessagesControl_ReplyWithQuoteMessage(object sender, IdEventArgs e)
        {
            PostMessageControl.IsReply = true;
            PostMessageControl.Initialize(e.Id, true);
            PostMessageControl.Visible = true;
        }

        protected void MessagesControl_EditMessage(object sender, IdEventArgs e)
        {
            PostMessageControl.Initialize(e.Id);
            PostMessageControl.Visible = true;
        }

        protected void MessagesControl_DeleteMessage(object sender, IdEventArgs e)
        {
            if (e.Id.HasValue)
            {
                var messages = Serializer.Deserialize();
                Message currentMessage = messages.Single(m => m.Id == e.Id);
                messages.Remove(currentMessage);
                Serializer.Serialize(messages);
                BindMessages();
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
}
