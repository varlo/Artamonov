using System;
using System.Web.Script.Serialization;
using System.Xml.Serialization;

namespace BAL
{
    public class Message
    {
        public Guid Id { get; set; }
        public Guid? ParentId { get; set; }
        public DateTime Created { get; set; }
        public string Subject { get; set; }
        public string Body { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }

        [XmlIgnore]
        [ScriptIgnore]
        public Message Parent { get; set; }

        [XmlIgnore]
        [ScriptIgnore]
        public Message Ancestor
        {
            get
            {
                Message parent = Parent;
                if (parent == null) return parent;
                while (parent.Parent != null)
                    parent = parent.Parent;
                return parent;
            }
        }

        [XmlIgnore]
        [ScriptIgnore]
        public int Level
        {
            get
            {
                int level = 1;
                Message parent = Parent;
                if (parent == null) 
                    return level;
                while (parent.Parent != null)
                {
                    level++;
                    parent = parent.Parent;
                }
                return level;
            }
        }
    }
}