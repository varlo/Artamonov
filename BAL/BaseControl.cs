using System;
using System.Collections.Generic;
using System.Web.UI;

namespace BAL
{
    public class BaseControl : UserControl
    {
        public IList<Message> Messages { get; set; }

        public BaseControl()
        {
            Messages = new List<Message>();
        }

        protected string ProcessString(string str)
        {
            return str.Replace(Environment.NewLine, "<br />");
        }
    }
}