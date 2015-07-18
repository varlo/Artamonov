using System;
using System.IO;

namespace Stroytehnadzor
{
    public partial class Functions : BasePage
    {
        public override Guid PageId
        {
            get { return new Guid("DDA317EF-0248-4F7D-83EB-BF759F8AC321"); }
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
