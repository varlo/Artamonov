<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" MasterPageFile="Front.Master"
    Inherits="Forum.Default" %>

<%@ Register Src="/PageControls/PostMessage.ascx" TagName="PostMessage" TagPrefix="Controls" %>
<%@ Register Src="/PageControls/Messages.ascx" TagName="Messages" TagPrefix="Controls" %>
<%@ Register Src="/PageControls/Search.ascx" TagName="Search" TagPrefix="Controls" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphHeader" runat="server">
    <title>Форум по техническому надзору в строительстве в Украине.</title>
    <meta name="Keywords" content="Форум технадзоров в строительстве, форум по техническому надзору, форум, технадзор, строительство, Украина, форум технаглядів в будівництві Україна" />
    <meta name="Description" content="форум технадзоров в строительстве, форум по техническому надзору в строительстве, Украина" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="server">
    <div style="float: left">
        <asp:Button ID="btnHome" Text="На основной сайт" CssClass="btn btn-primary" Style="margin-top: 10px"
            runat="server" OnClick="btnHome_Click" />
    </div>
    <div style="float: right">
        <Controls:Search runat="server" ID="SearchControl" />
    </div>
    <Controls:PostMessage runat="server" ID="PostMessageControl" CreateNew="true" />
    <Controls:Messages runat="server" ID="MessagesControl" HideReply="true" PrepareForSearch="true" />
    <asp:Button ID="btnAskQuestion" Text="Создать тему" CssClass="btn btn-primary" Style="margin-bottom: 10px"
        runat="server" OnClick="btnAskQuestion_Click" />
</asp:Content>
