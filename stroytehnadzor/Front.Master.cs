using System;
using System.Linq;
using System.Web.UI;
using BAL;
using Stroytehnadzor;

namespace StroyTehNadzor
{
    public partial class Front : MasterPage
    {
        Guid PageId
        {
            get
            {
                var page = Page as BasePage;
                return page != null ? page.PageId : Guid.Empty;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (String.Compare(Request.Url.Authority, "stroytehnadzor.com", StringComparison.InvariantCultureIgnoreCase) == 0)
                Response.Redirect("http://stroytehnadzor.com.ua" + Request.Path);
            if (String.Compare(Request.Url.Authority, "www.stroytehnadzor.com", StringComparison.InvariantCultureIgnoreCase) == 0)
                Response.Redirect("http://www.stroytehnadzor.com.ua" + Request.Path);
            if (!Page.IsPostBack && PostMessageControl != null)
            {
                PostMessageControl.Initialize(PageId);
                BindMessages();
            }
        }

        protected override void OnInit(EventArgs e)
        {
            if (PostMessageControl != null && AnswersControl != null)
            {
                PostMessageControl.MessageCreated += PostMessageControl_MessageCreated;
                AnswersControl.EditMessage += MessagesControl_EditMessage;
                AnswersControl.DeleteMessage += MessagesControl_DeleteMessage;
            }
            base.OnInit(e);
        }

        protected void PostMessageControl_MessageCreated(object sender, EventArgs e)
        {
            BindMessages();
        }

        protected void MessagesControl_EditMessage(object sender, IdEventArgs e)
        {
            PostMessageControl.Initialize(e.Id);
            PostMessageControl.CreateNew = false;
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

        private void BindMessages()
        {
            var messages = Serializer.Deserialize();
            messages = messages.Where(m => m.ParentId == PageId).OrderBy(m => m.Created).ToList();
            AnswersControl.Messages = messages;
            AnswersControl.BindData();
        }
    }
}
