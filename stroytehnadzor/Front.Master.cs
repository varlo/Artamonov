using System;
using System.Web.UI;

namespace StroyTehNadzor
{
    public partial class Front : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (String.Compare(Request.Url.Authority, "stroytehnadzor.com", StringComparison.InvariantCultureIgnoreCase) == 0)
                Response.Redirect("http://stroytehnadzor.com.ua" + Request.Path);
            if (String.Compare(Request.Url.Authority, "www.stroytehnadzor.com", StringComparison.InvariantCultureIgnoreCase) == 0)
                Response.Redirect("http://www.stroytehnadzor.com.ua" + Request.Path);
        }
    }
}
