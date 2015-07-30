<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Topic.aspx.cs" MasterPageFile="Front.Master" ValidateRequest="false"
    Inherits="Forum.Topic" %>

<%@ Register Src="/PageControls/PostMessage.ascx" TagName="PostMessage" TagPrefix="Controls" %>
<%@ Register Src="/PageControls/Answers.ascx" TagName="Answers" TagPrefix="Controls" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphHeader" runat="server">
    <title>Форум по техническому надзору в строительстве.</title>
    <meta name="Keywords" content="Форум, технадзоров, Украина" />
    <meta name="Description" content="Форум по техническому надзору в строительстве, форум, технадзоров, Украина" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="server">
    <asp:Button ID="btnBack1" CssClass="btn btn-primary" Text="К списку тем" runat="server" CausesValidation="False"
        OnClick="btnBack_Click" />
    <Controls:PostMessage runat="server" ID="PostMessageControl" HideTitle="true" />
    <Controls:Answers runat="server" ID="AnswersControl" />
    <asp:Button ID="btnBack2" CssClass="btn btn-primary" Text="К списку тем" runat="server" CausesValidation="False"
        OnClick="btnBack_Click" />
</asp:Content>
