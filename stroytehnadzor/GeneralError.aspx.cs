﻿using System;

namespace stroytehnadzor
{
    public partial class GeneralError : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write(Session["ErrorMessage"]);
        }
    }
}
