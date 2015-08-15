using System;
using BAL;

namespace Forum.PageControls
{
    public partial class Search : BaseControl
    {
        public event EventHandler<SearchEventArgs> SearchMessages;

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (SearchMessages != null)
                SearchMessages(sender, new SearchEventArgs { Search = tbSearch.Text });
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            tbSearch.Text = String.Empty;
            if (SearchMessages != null)
                SearchMessages(sender, new SearchEventArgs { Search = tbSearch.Text });
            //Visible = false;
        }
    }
}