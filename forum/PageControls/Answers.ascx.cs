using System;
using System.Text.RegularExpressions;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using BAL;

namespace Forum.PageControls
{
    public partial class Answers : BaseControl
    {
        public bool HideReply { get; set; }

        public string Header { get; set; }

        public bool IsAdminMode
        {
            get { return Request["admin"] != null; }
        }

        public event EventHandler<IdEventArgs> ReplyMessage;
        public event EventHandler<IdEventArgs> ReplyWithQuoteMessage;
        public event EventHandler<IdEventArgs> EditMessage;
        public event EventHandler<IdEventArgs> DeleteMessage;

        protected void rptAnswers_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            var thReply = e.Item.FindControl("thReply") as HtmlTableCell;
            if (thReply != null)
                thReply.Visible = !HideReply;
            var msg = e.Item.DataItem as Message;
            if (msg != null)
            {
                var divIndent = e.Item.FindControl("divIndent") as HtmlGenericControl;
                if (divIndent != null)
                {
                    int indent = msg.Level * 20;
                    divIndent.Style.Add(HtmlTextWriterStyle.PaddingLeft, String.Format("{0}px", indent));
                }
                var lCreated = e.Item.FindControl("lCreated") as Label;
                if (lCreated != null) lCreated.Text = msg.Created.ToLocalTime().ToString("dd MMM yyyy HH:mm:ss");
                var lName = e.Item.FindControl("lName") as Label;
                if (lName != null) lName.Text = msg.Name;
                var lbReply = e.Item.FindControl("lbReply") as LinkButton;
                if (lbReply != null)
                {
                    lbReply.CommandArgument = msg.Id.ToString();
                    lbReply.Visible = !HideReply;
                }
                var lbReplyWithQuote = e.Item.FindControl("lbReplyWithQuote") as LinkButton;
                if (lbReplyWithQuote != null)
                {
                    lbReplyWithQuote.CommandArgument = msg.Id.ToString();
                    lbReplyWithQuote.Visible = !HideReply;
                }
                var lbEdit = e.Item.FindControl("lbEdit") as LinkButton;
                if (lbEdit != null)
                {
                    lbEdit.CommandArgument = msg.Id.ToString();
                    lbEdit.Visible = IsAdminMode;
                }
                var lbDelete = e.Item.FindControl("lbDelete") as LinkButton;
                if (lbDelete != null)
                {
                    lbDelete.CommandArgument = msg.Id.ToString();
                    lbDelete.Visible = IsAdminMode;
                }
                var lSubject = e.Item.FindControl("lSubject") as Label;
                if (lSubject != null)
                {
                    lSubject.Text = msg.Subject;
                    lSubject.Visible = !HideReply;
                }
                var lBody = e.Item.FindControl("lBody") as Literal;
                if (lBody != null)
                {
                    var r = new Regex(@"(http|ftp|https):\/\/[\w\-_]+(\.[\w\-_]+)+([\w\-\.,@?^=%&amp;:/~\+#]*[\w\-\@?^=%&amp;/~\+#])");
                    var myEvaluator = new MatchEvaluator(ReplaceLink);
                    lBody.Text = r.Replace(msg.Body, myEvaluator);
                }
                var lNumber = e.Item.FindControl("lNumber") as Label;
                if (lNumber != null)
                {
                    lNumber.Text = String.Format("#{0}", e.Item.ItemIndex + 1);
                }
            }
        }

        public static string ReplaceLink(Match m)
        {
            return String.Format("<a href='{0}' target='_blank'>{0}</a>", m.Value);
        }

        protected void rptAnswers_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            var args = new IdEventArgs { Id = new Guid(e.CommandArgument.ToString()) };
            switch (e.CommandName)
            {
                case "Reply":
                    if (ReplyMessage != null)
                        ReplyMessage(source, args);
                    break;
                case "ReplyWithQuote":
                    if (ReplyWithQuoteMessage != null)
                        ReplyWithQuoteMessage(source, args);
                    break;
                case "Edit":
                    if (EditMessage != null)
                        EditMessage(source, args);
                    break;
                case "Delete":
                    if (DeleteMessage != null)
                        DeleteMessage(source, args);
                    break;
            }
        }

        public void BindData()
        {
            rptAnswers.DataSource = Messages;
            rptAnswers.DataBind();
        }
    }
}