using System;

namespace stroytehnadzor
{
    public partial class Out : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string url = Request.RawUrl.Replace("/out.aspx?link=", String.Empty);
            Response.Redirect(url);
        }
    }
}
