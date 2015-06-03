using System;
using System.Net;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Web.UI;

namespace StroyTehNadzor.PageControls
{
    public partial class News : UserControl
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
            Regex rgAd = new Regex(@"<div class=""itemcontent"">.*?</div>");

            url = "http://news.liga.net/";
            request = HttpWebRequest.Create(url);
            request.Method = "GET";

            try
            {
                response = request.GetResponse();
                streamReader = new StreamReader(response.GetResponseStream(), Encoding.UTF8);
                page = streamReader.ReadToEnd();
            }
            catch
            {
                Response.Write(String.Format("”пал на странице: {0}<br />", url));
                return;
            }

            page = page.Replace(System.Environment.NewLine, String.Empty);
            adMatches = rgAd.Matches(page);
            int cnt = 0;
            foreach (Match match in adMatches)
            {
                sb.Append(match.Value);
                cnt++;
                if (cnt > 15) break;
            }
            lNews.Text = sb.ToString();
        }
    }
}