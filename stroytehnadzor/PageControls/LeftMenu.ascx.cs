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
    public partial class LeftMenu : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string page = Page.Request.Path.ToLower();
                lArrow1.Text = "&nbsp;";
                if (page.IndexOf("default.aspx") > -1)
                {
                    lArrow1.Text = "<img src='/images/orangearr.gif' border='0' alt='orrange arrow' />";
                }
                else if (page.IndexOf("engineer.aspx") > -1)
                {
                    lArrow2.Text = "<img src='/images/orangearr.gif' border='0' alt='orrange arrow' />";
                }
                else if (page.IndexOf("normbase.aspx") > -1)
                {
                    lArrow3.Text = "<img src='/images/orangearr.gif' border='0' alt='orrange arrow' />";
                }
                else if (page.IndexOf("testimonials.aspx") > -1)
                {
                    lArrow4.Text = "<img src='/images/orangearr.gif' border='0' alt='orrange arrow' />";
                }
                else if (page.IndexOf("contacts.aspx") > -1)
                {
                    lArrow5.Text = "<img src='/images/orangearr.gif' border='0' alt='orrange arrow' />";
                }
            }
        }
    }
}