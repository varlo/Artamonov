using System;
using System.IO;
using System.Linq;
using System.Net.Mail;
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
                    tbBody.Text = currentMessage.Body;
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
                currentMessage.Body = tbBody.Text;
                currentMessage.Name = tbName.Text;
            }
            else
            {
                var message = new Message
                {
                    Id = Guid.NewGuid(),
                    Created = DateTime.Now,
                    Subject = tbSubject.Text,
                    ParentId = id,
                    Body = tbBody.Text,
                    Name = tbName.Text
                };
                Messages.Add(message);
                Serializer.Serialize(Messages);

                var mail = new MailMessage();
                mail.To.Add("varlo@ukr.net");
                mail.To.Add("vartamonov@ukr.net");
                mail.Subject = "New comment from forum";
                mail.From = new MailAddress("info@stroytehnadzor.com.ua");
                mail.Body = String.Format("В {0:dd/MM/yyyy HH:mm:ss} поступил новый комментарий от <b>{1}</b>:<br /><br />{2}",
                    message.Created, message.Name, message.Body);
                mail.IsBodyHtml = true;
                //string zip = Server.MapPath("forum.zip");
                //string json = Server.MapPath("forum.json");
                //if (File.Exists(zip))
                //    File.Delete(zip);
                //File.Copy(json, zip, true);
                //mail.Attachments.Add(new Attachment(zip));
                var smtp = new SmtpClient("93.190.40.3");
                smtp.Send(mail);
                //lMessage.Text = "Ваше сообщение было отправлено";
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