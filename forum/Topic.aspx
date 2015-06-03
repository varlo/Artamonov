<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Topic.aspx.cs" MasterPageFile="Front.Master"
    Inherits="Forum.Topic" %>
<%@ Register Src="/PageControls/PostMessage.ascx" TagName="PostMessage" TagPrefix="Controls" %>
<%@ Register Src="/PageControls/Answers.ascx" TagName="Answers" TagPrefix="Controls" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphHeader" runat="server">
    <title>Форум по техническому надзору в строительстве.</title>
    <meta name="Keywords" content="Форум, ввод объектов в эксплуатацию, технический надзор, техническое обследование, диагностика технического состояния зданий, электромонтажные работы" />
    <meta name="Description" content="Форум по техническому надзору в строительстве" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="server">
    <Controls:Answers runat="server" ID="AnswersControl" />
    <Controls:PostMessage runat="server" ID="PostMessageControl" />
    <asp:Button ID="btnBack" CssClass="btn btn-primary" Text="К списку тем" runat="server" OnClick="btnBack_Click" />
</asp:Content>
