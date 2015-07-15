using System;
using System.Linq;
using System.Threading;
using System.Web.UI.WebControls;
using BAL;

namespace Forum.PageControls
{
    public partial class PostMessage : BaseControl
    {
        public event EventHandler MessageCreated;

        public bool HideTitle { get; set; }

        public bool CreateNew { get; set; }

        public bool IsReply
        {
            get
            {
                if (ViewState["IsReply"] == null)
                    ViewState["IsReply"] = false;
                return Convert.ToBoolean(ViewState["IsReply"]);
            }
            set
            {
                ViewState["IsReply"] = value;
            }
        }

        public void Initialize(Guid? id)
        {
            lMessage.Text = String.Empty;
            Messages = Serializer.Deserialize();
            divTitle.Visible = !HideTitle;
            if (id.HasValue)
            {
                if (!IsReply)
                {
                    var currentMessage = Messages.Single(m => m.Id == id);
                    tbSubject.Text = currentMessage.Subject;
                    tbBody.Text = currentMessage.Body.Replace("<br />", Environment.NewLine);
                    tbName.Text = currentMessage.Name;
                }
                hId.Value = id.Value.ToString();
            }
        }

        protected void rptMessages_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            var msg = e.Item.DataItem as Message;
            if (msg != null)
            {
                var lCreated = e.Item.FindControl("lCreated") as Literal;
                if (lCreated != null) lCreated.Text = msg.Created.ToString("dd/MM/yyyy HH:mm:ss");
                var lName = e.Item.FindControl("lName") as Literal;
                if (lName != null) lName.Text = msg.Name;
                var lSubject = e.Item.FindControl("lSubject") as Literal;
                if (lSubject != null) lSubject.Text = msg.Subject;
                var lBody = e.Item.FindControl("lBody") as Literal;
                if (lBody != null) lBody.Text = msg.Body;
            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            var id = !String.IsNullOrEmpty(hId.Value) ? new Guid(hId.Value) : (Guid?)null;
            //var id = !String.IsNullOrEmpty(Request["id"]) ? new Guid(Request["id"]) : (Guid?)null;
            Messages = Serializer.Deserialize();
            if (!IsReply && !CreateNew) //редактирование
            {
                var currentMessage = Messages.Single(m => m.Id == id);
                //currentMessage.Created = DateTime.Now;
                currentMessage.Subject = tbSubject.Text;
                currentMessage.Body = tbBody.Text.Replace(Environment.NewLine, "<br />");
                currentMessage.Name = tbName.Text;

                Serializer.Serialize(Messages);
            }
            else
            {
                var message = new Message
                {
                    Id = Guid.NewGuid(),
                    Created = DateTime.Now,
                    Subject = tbSubject.Text,
                    ParentId = id,
                    Body = tbBody.Text.Replace(Environment.NewLine, "<br />"),
                    Name = tbName.Text
                };
                Messages.Add(message);
                Serializer.Serialize(Messages);

                var sendEmail = new Thread(new EmailSender(Serializer.BackFilePath).SendEmail);
                sendEmail.Start(message);
            }
            ResetControl();
            if (MessageCreated != null)
                MessageCreated(sender, e);
            Visible = false;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            if (MessageCreated != null)
                MessageCreated(sender, e);
            Visible = false;
        }

        private void ResetControl()
        {
            tbSubject.Text = tbBody.Text = tbName.Text = String.Empty;
        }
    }
}