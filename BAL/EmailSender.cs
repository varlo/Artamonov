using System;
using System.Linq;
using System.Net.Mail;

namespace BAL
{
    public class EmailSender
    {
        private readonly string _filePath;

        public EmailSender(string path)
        {
            _filePath = path;
        }

        public void SendEmail(object param)
        {
            var message = param as Message;
            if (message == null)
                return;
            var mail = new MailMessage();
            mail.To.Add("varlo@ukr.net");
            mail.To.Add("vartamonov@ukr.net");
            var messages = Serializer.Deserialize(_filePath);
            message = messages.FirstOrDefault(m => m.Id == message.Id);
            var emails = messages.Where(m => m.Ancestor != null && m.Ancestor.Id == message.Ancestor.Id && !String.IsNullOrEmpty(m.Email)).Select(m=>m.Email).Distinct().ToList();
            foreach (var email in emails)
                mail.To.Add(email);
            mail.Subject = "New comment from forum";
            mail.From = new MailAddress("info@stroytehnadzor.com.ua");
            mail.Body = String.Format("В {0:dd/MM/yyyy HH:mm:ss} поступил новый комментарий от <b>{1}</b>:<br /><br />{2}<br />", message.Created, message.Name, message.Body);
            mail.IsBodyHtml = true;
            var smtp = new SmtpClient("93.190.40.3");
            smtp.Send(mail);
        }
    }
}
