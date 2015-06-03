using System;
using System.IO;

namespace Stroytehnadzor
{
    public partial class Engineer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void lbInstructionPdf_Click(object sender, EventArgs e)
        {
            string path = "images/Tipova_posadova_instruction_inzhenera_texnadzora.pdf";
            if (File.Exists(Server.MapPath(path)))
            {
                Response.ClearContent();
                Response.ContentType = "application/pdf";
                Response.AddHeader("Content-disposition", "attachment;filename=Tipova_posadova_instruction_inzhenera_texnadzora.pdf");
                Response.WriteFile(path);
                Response.Flush();
                Response.Close();
            }
        }
    }
}
