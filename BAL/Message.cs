using System;
using System.Web.Script.Serialization;
using System.Xml.Serialization;

namespace BAL
{
    public class Message
    {
        public Guid Id { get; set; }
        public Guid? ParentId { get; set; }
        
        [XmlIgnore]
        [ScriptIgnore]
        public Message Parent { get; set; }
        
        public DateTime Created { get; set; }
        public string Subject { get; set; }
        public string Body { get; set; }
        public string Name { get; set; }
    }
}