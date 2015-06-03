using System;
using System.Linq;
using System.Web.UI;
using BAL;

namespace Forum
{
    public partial class Default : Page
    {
        override protected void OnInit(EventArgs e)
        {
            PostMessageControl.MessageCreated += PostMessageControl_MessageCreated;
            base.OnInit(e);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                PostMessageControl.Visible = false;
                //MessagesControl.ParentId = null;
                BindMessages();
            }
        }

        private void BindMessages()
        {
            var messages = Serializer.Deserialize();
            messages = messages.Where(m => !m.ParentId.HasValue).OrderBy(m => m.Created).ToList();
            MessagesControl.Messages = messages;
            MessagesControl.BindData();
        }

        protected void PostMessageControl_MessageCreated(object sender, EventArgs e)
        {
            btnAskQuestion.Visible = true;
            BindMessages();
        }

        protected void btnAskQuestion_Click(object sender, EventArgs e)
        {
            PostMessageControl.Visible = true;
            btnAskQuestion.Visible = false;
        }
    }
}
