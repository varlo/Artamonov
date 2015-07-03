using System;
using System.Web.UI;

namespace StroyTehNadzor.PageControls
{
    public partial class RightMenu : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                imgGeodezy.Visible = (Request.Path.IndexOf("Geodesy.aspx", StringComparison.InvariantCultureIgnoreCase) > 0);
                phPartners.Visible = (Request.Path.IndexOf("Default.aspx", StringComparison.InvariantCultureIgnoreCase) > 0);
                string page = Page.Request.Path.ToLower();
                lArrow0.Text = "&nbsp;";
                if (page.IndexOf("engineer.aspx") > -1)
                    lArrow0.Text = "<img src='/images/orangearr.gif' border='0' alt='orrange arrow' />";
                else if (page.IndexOf("links.aspx") > -1)
                    lArrow1.Text = "<img src='/images/orangearr.gif' border='0' alt='orrange arrow' />";
                else if (page.IndexOf("/acts.aspx") > -1)
                    lArrow2.Text = "<img src='/images/orangearr.gif' border='0' alt='orrange arrow' />";
                else if (page.IndexOf("contracts.aspx") > -1)
                    lArrow3.Text = "<img src='/images/orangearr.gif' border='0' alt='orrange arrow' />";
                else if (page.IndexOf("extexp.aspx") > -1)
                    lArrow4.Text = "<img src='/images/orangearr.gif' border='0' alt='orrange arrow' />";
                else if (page.IndexOf("geodesy.aspx") > -1)
                    lArrow5.Text = "<img src='/images/orangearr.gif' border='0' alt='orrange arrow' />";
                else if (page.IndexOf("board.aspx") > -1)
                    lArrow6.Text = "<img src='/images/orangearr.gif' border='0' alt='orrange arrow' />";
                else if (page.IndexOf("forum.aspx") > -1)
                    lArrow7.Text = "<img src='/images/orangearr.gif' border='0' alt='orrange arrow' />";
            }
        }
    }
}