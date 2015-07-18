using System;
using System.IO;

namespace Stroytehnadzor
{
    public partial class Engineer : BasePage
    {
        public override Guid PageId
        {
            get { return new Guid("0C0233B8-9671-47B3-8441-01CB2DC43EFD"); }
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
