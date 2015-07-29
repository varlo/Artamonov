<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" MasterPageFile="Front.Master"
    Inherits="Forum.Default" %>
<%@ Register Src="/PageControls/PostMessage.ascx" TagName="PostMessage" TagPrefix="Controls" %>
<%@ Register Src="/PageControls/Messages.ascx" TagName="Messages" TagPrefix="Controls" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphHeader" runat="server">
    <title>Форум по техническому надзору в строительстве в Украине.</title>
    <meta name="Keywords" content="Форум, технадзор, Украина, форум технадзоров Украина" />
    <meta name="Description" content="форум технадзоров Украина, форум по техническому надзору в строительстве" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="server">
    <asp:Button ID="btnHome" Text="На основной сайт" CssClass="btn btn-primary" style="margin-bottom: 10px" runat="server" OnClick="btnHome_Click" />
    <Controls:Messages runat="server" ID="MessagesControl" HideReply="true" />
    <Controls:PostMessage runat="server" ID="PostMessageControl" CreateNew="true" />
    <asp:Button ID="btnAskQuestion" Text="Создать тему" CssClass="btn btn-primary" style="margin-bottom: 10px" runat="server" OnClick="btnAskQuestion_Click" />
</asp:Content>