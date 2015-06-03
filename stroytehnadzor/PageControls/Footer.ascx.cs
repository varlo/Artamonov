using System;
using System.Drawing;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace StroyTehNadzor.PageControls
{
    public partial class Footer : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //lCalendar.Text = String.Format("<div style='background-color: #FFC080'>{0}</div>", DateTime.Now.ToLongDateString());
            }
        }
    }
}