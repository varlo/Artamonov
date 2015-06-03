using System;
using System.IO;

namespace Stroytehnadzor
{
    public partial class ExtExp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void lbKodeksPdf_Click(object sender, EventArgs e)
        {
            string path = "images/TKP_Kodeks_texnadzora.pdf";
            if (File.Exists(Server.MapPath(path)))
            {
                Response.ClearContent();
                Response.ContentType = "application/pdf";
                Response.AddHeader("Content-disposition", "attachment;filename=TKP_Kodeks_texnadzora.pdf");
                Response.WriteFile(path);
                Response.Flush();
                Response.Close();
            }
        }
    }
}
