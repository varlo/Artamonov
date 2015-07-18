using System;
using System.Linq;
using System.Web.UI;
using BAL;
using stroytehnadzor.PageControls;

namespace stroytehnadzor
{
    public class BasePage : Page
    {
        protected PostMessage PostMessageControl;

        protected Answers AnswersControl;

        protected virtual Guid PageId { get; set; }

        protected override void OnInit(EventArgs e)
        {
            PostMessageControl.MessageCreated += PostMessageControl_MessageCreated;
            AnswersControl.EditMessage += MessagesControl_EditMessage;
            AnswersControl.DeleteMessage += MessagesControl_DeleteMessage;
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