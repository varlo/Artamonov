using System;
using System.Web.UI;

namespace Stroytehnadzor
{
    public class BasePage : Page
    {
        public virtual Guid PageId
        {
            get { return Guid.Empty; }
        }
    }
}