using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;

namespace BAL
{
    public class Serializer
    {
        public static string FilePath
        {
            get
            {
                return HttpContext.Current.Request.MapPath("forum.json");
            }
        }

        public static string BackFilePath
        {
            get
            {
                return HttpContext.Current.Request.MapPath("forum.bak");
            }
        }

        public static string Serialize(IList<Message> messages)
        {
            var json = new JavaScriptSerializer().Serialize(messages);
            File.WriteAllText(FilePath, json, Encoding.Unicode);
            File.WriteAllText(BackFilePath, json, Encoding.Unicode);
            return json;
        }

        public static IList<Message> Deserialize(string filePath = "")
        {
            string path = !String.IsNullOrEmpty(filePath) ? filePath : FilePath;
            if (!File.Exists(path)) return new List<Message>();
            var json = File.ReadAllText(path, Encoding.Unicode);
            var messages = new JavaScriptSerializer().Deserialize<IList<Message>>(json);
            foreach (var message in messages)
                if (message.ParentId != null)
                    message.Parent = messages.SingleOrDefault(m => m.Id == message.ParentId);
            return messages;
        }
    }
}