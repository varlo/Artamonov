﻿using System;
using System.Globalization;
using System.Linq;
using System.Web.UI;
using BAL;

namespace Forum
{
    public partial class Default : Page
    {
        override protected void OnInit(EventArgs e)
        {
            PostMessageControl.MessageCreated += PostMessageControl_MessageCreated;
            MessagesControl.EditMessage += MessagesControl_EditMessage;
            MessagesControl.DeleteMessage += MessagesControl_DeleteMessage;
            SearchControl.SearchMessages += SearchControl_SearchMessages;
            SearchControl.ResetSearch += SearchControl_ResetSearch;
            base.OnInit(e);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                PostMessageControl.Visible = false;
                //SearchControl.Visible = false;
                //MessagesControl.ParentId = null;
                BindMessages();
            }
        }

        private void BindMessages()
        {
            var messages = Serializer.Deserialize();
            messages = messages.Where(m => !m.ParentId.HasValue).OrderBy(m => m.Created).ToList();
            MessagesControl.Messages = messages;
            MessagesControl.BindData();
        }

        protected void PostMessageControl_MessageCreated(object sender, EventArgs e)
        {
            btnAskQuestion.Visible = true;
            BindMessages();
        }

        protected void btnAskQuestion_Click(object sender, EventArgs e)
        {
            PostMessageControl.Visible = true;
            btnAskQuestion.Visible = false;
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://stroytehnadzor.com.ua");
        }

        protected void MessagesControl_EditMessage(object sender, IdEventArgs e)
        {
            if (e.Id.HasValue)
            {
                PostMessageControl.Initialize(e.Id);
                PostMessageControl.Visible = true;
                PostMessageControl.CreateNew = false;
            }
        }

        protected void MessagesControl_DeleteMessage(object sender, IdEventArgs e)
        {
            if (e.Id.HasValue)
            {
                var messages = Serializer.Deserialize();
                Message currentMessage = messages.Single(m => m.Id == e.Id);
                messages.Remove(currentMessage);
                Serializer.Serialize(messages);
                BindMessages();
            }
        }

        protected void SearchControl_SearchMessages(object sender, SearchEventArgs e)
        {
            var messages = Serializer.Deserialize();
            if (String.IsNullOrEmpty(e.Search))
                messages = messages.Where(m => !m.ParentId.HasValue).OrderBy(m => m.Created).ToList();
            else
                messages = messages.Where(m => m.Subject.IndexOf(e.Search, StringComparison.InvariantCultureIgnoreCase) > -1 ||
                    m.Body.IndexOf(e.Search, StringComparison.InvariantCultureIgnoreCase) > -1).OrderBy(m => m.Created).ToList();
            if (!String.IsNullOrEmpty(e.Search))
            {
                foreach (var message in messages)
                {
                    message.Subject = message.Subject.Replace(e.Search, String.Format("<b>{0}</b>", e.Search));
                    message.Subject = message.Subject.Replace(e.Search.ToUpperInvariant(), String.Format("<b>{0}</b>", e.Search.ToUpperInvariant()));
                    message.Subject = message.Subject.Replace(CultureInfo.InvariantCulture.TextInfo.ToTitleCase(e.Search), String.Format("<b>{0}</b>", CultureInfo.InvariantCulture.TextInfo.ToTitleCase(e.Search)));
                    message.Body = message.Body.Replace(e.Search, String.Format("<b>{0}</b>", e.Search));
                    message.Body = message.Body.Replace(e.Search.ToUpperInvariant(), String.Format("<b>{0}</b>", e.Search.ToUpperInvariant()));
                    message.Body = message.Body.Replace(CultureInfo.InvariantCulture.TextInfo.ToTitleCase(e.Search), String.Format("<b>{0}</b>", CultureInfo.InvariantCulture.TextInfo.ToTitleCase(e.Search)));
                }
            }
            MessagesControl.PrepareForSearch = true;
            MessagesControl.Messages = messages;
            MessagesControl.BindData();
        }

        protected void SearchControl_ResetSearch(object sender, SearchEventArgs e)
        {
            MessagesControl.PrepareForSearch = false;
            BindMessages();
        }
    }
}
