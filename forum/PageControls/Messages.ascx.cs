using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using BAL;

namespace Forum.PageControls
{
    public partial class Messages : BaseControl
    {
        public bool HideReply { get; set; }

        public bool IsAdminMode
        {
            get { return Request["admin"] != null; }
        }

        public event EventHandler<IdEventArgs> ReplyMessage;
        public event EventHandler<IdEventArgs> EditMessage;
        public event EventHandler<IdEventArgs> DeleteMessage;

        protected void rptMessages_ItemDataBound(object sender, RepeaterItemEventArgs e)
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
                    //if (msg.Parent != null && msg.Parent.ParentId.HasValue)
                    //    indent = 80;
                    //else 
                    int indent = msg.ParentId.HasValue ? 40 : 0;
                    divIndent.Style.Add(HtmlTextWriterStyle.MarginLeft, String.Format("{0}px", indent));
                }
                var lCreated = e.Item.FindControl("lCreated") as Literal;
                if (lCreated != null) lCreated.Text = msg.Created.ToLocalTime().ToString("dd MMM yyyy HH:mm:ss");
                var lName = e.Item.FindControl("lName") as Literal;
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
                var hlSubject = e.Item.FindControl("hlSubject") as HyperLink;
                if (lSubject != null && hlSubject != null)
                {
                    lSubject.Text = hlSubject.Text = msg.Subject;
                    hlSubject.NavigateUrl = String.Format("~/Topic.aspx?id={0}", msg.Id);
                    hlSubject.Visible = HideReply;
                    lSubject.Visible = !HideReply;
                }
                var lBody = e.Item.FindControl("lBody") as Literal;
                if (lBody != null) lBody.Text = msg.Body;
                var lLastAnswer = e.Item.FindControl("lLastAnswer") as Literal;
                if (lLastAnswer != null)
                {
                    var messages = Serializer.Deserialize();
                    var latest = messages.Where(m => m.ParentId == msg.Id || m.Parent != null && m.Parent.ParentId == msg.Id).OrderByDescending(m => m.Created).FirstOrDefault();
                    lLastAnswer.Text = latest != null ? String.Format("{0} {1}", latest.Created.ToLocalTime().ToString("dd MMM yyyy HH:mm:ss"), latest.Name) : String.Empty;
                }
            }
        }

        protected void rptMessages_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            var args = new IdEventArgs { Id = new Guid(e.CommandArgument.ToString()) };
            switch (e.CommandName)
            {
                case "Reply":
                    //ParentId = new Guid(e.CommandArgument.ToString());
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
            rptMessages.DataSource = Messages;
            rptMessages.DataBind();
        }
    }
}