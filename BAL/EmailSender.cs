using System;
using System.IO;
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
            var text = File.ReadAllText(_filePath);
            var mail = new MailMessage();
            mail.To.Add("varlo@ukr.net");
            mail.To.Add("vartamonov@ukr.net");
            mail.Subject = "New comment from forum";
            mail.From = new MailAddress("info@stroytehnadzor.com.ua");
            mail.Body = String.Format("В {0:dd/MM/yyyy HH:mm:ss} поступил новый комментарий от <b>{1}</b>:<br /><br />{2}<br /><br /><br /><br /><hr /><b>Весь архив сообщений:</b> <br />{3}",
                message.Created, message.Name, message.Body, text);
            mail.IsBodyHtml = true;
            var smtp = new SmtpClient("93.190.40.3");
            smtp.Send(mail);
        }
    }
}
