using System;
using System.IO;

namespace Stroytehnadzor
{
    public partial class ExtExp : BasePage
    {
        public override Guid PageId
        {
            get { return new Guid("47202115-2C93-48E4-AC14-B410D66A166F"); }
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
