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
    }
}