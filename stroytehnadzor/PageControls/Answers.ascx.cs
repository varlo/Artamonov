using System;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using BAL;

namespace stroytehnadzor.PageControls
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
                var tdIndent1 = e.Item.FindControl("tdIndent1") as HtmlTableCell;
                var tdIndent2 = e.Item.FindControl("tdIndent2") as HtmlTableCell;
                if (tdIndent1 != null && tdIndent2 != null)
                {
                    int indent = msg.Level * 20;
                    tdIndent1.Style.Add(HtmlTextWriterStyle.PaddingLeft, String.Format("{0}px", indent));
                    tdIndent2.Style.Add(HtmlTextWriterStyle.PaddingLeft, String.Format("{0}px", indent));
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
                    lBody.Text = msg.Parent != null ?
                        String.Format("<blockquote><p>{0}</p></blockquote>{1}", msg.Parent.Body, msg.Body) : msg.Body;
                }
            }
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