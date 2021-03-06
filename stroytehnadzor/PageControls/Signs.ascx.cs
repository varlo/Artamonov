using System;
using System.Net;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Web.UI;

namespace StroyTehNadzor.PageControls
{
    public partial class Signs : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WebRequest request;
            WebResponse response;
            StreamReader streamReader;
            MatchCollection adMatches;
            string url = String.Empty;
            string page = String.Empty;
            StringBuilder sb = new StringBuilder();
            Regex rgAd = new Regex(@"</table><table border=""0"" cellspacing=""1"" cellpadding=""2"" width=""100%"" valign=""top"">.*?</table></td></tr>");

            url = "out.aspx?link=http://www.gismeteo.ua/towns/33345.htm";
            request = HttpWebRequest.Create(url);
            request.Method = "GET";

            try
            {
                response = request.GetResponse();
                streamReader = new StreamReader(response.GetResponseStream(), Encoding.GetEncoding(1251));
                page = streamReader.ReadToEnd();
            }
            catch
            {
                //Response.Write(String.Format("Упал на странице: {0}<br />", url));
                return;
            }

            page = page.Replace(Environment.NewLine, String.Empty);
            adMatches = rgAd.Matches(page);
            int cnt = 0;
            foreach (Match match in adMatches)
            {
                if (match.Value.IndexOf("На ") > -1)
                {
                    sb.Append(match.Value.Replace("100%", "350px"));
                    cnt++;
                }
                if (cnt > 15) break;
            }
            lSigns.Text = sb.ToString();
        }
    }
}