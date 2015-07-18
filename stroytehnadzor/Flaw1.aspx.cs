using System;
using System.Linq;
using System.Web.UI;
using BAL;

namespace Stroytehnadzor
{
    public partial class Flaw1 : Page
    {
        private readonly Guid _pageId = new Guid("3EB3D8C5-4D2C-4D90-84BB-286A5E0F85D8");

        protected override void OnInit(EventArgs e)
        {
            PostMessageControl.MessageCreated += PostMessageControl_MessageCreated;
            AnswersControl.EditMessage += MessagesControl_EditMessage;
            AnswersControl.DeleteMessage += MessagesControl_DeleteMessage;
            base.OnInit(e);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                PostMessageControl.Initialize(_pageId);
                BindMessages();
            }
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
            messages = messages.Where(m => m.ParentId == _pageId).OrderBy(m => m.Created).ToList();
            AnswersControl.Messages = messages;
            AnswersControl.BindData();
        }
    }
}
