﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" MasterPageFile="Front.Master"
    Inherits="Forum.Default" %>
<%@ Register Src="/PageControls/PostMessage.ascx" TagName="PostMessage" TagPrefix="Controls" %>
<%@ Register Src="/PageControls/Messages.ascx" TagName="Messages" TagPrefix="Controls" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphHeader" runat="server">
    <title>Форум по техническому надзору в строительстве.</title>
    <meta name="Keywords" content="Форум, ввод объектов в эксплуатацию, технический надзор, техническое обследование, диагностика технического состояния зданий, электромонтажные работы" />
    <meta name="Description" content="Форум по техническому надзору в строительстве" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="server">
    <Controls:Messages runat="server" ID="MessagesControl" HideReply="true" />
    <Controls:PostMessage runat="server" ID="PostMessageControl" CreateNew="true" />
    <asp:Button ID="btnAskQuestion" Text="Создать тему" CssClass="btn btn-primary" style="margin-bottom: 10px" runat="server" OnClick="btnAskQuestion_Click" />
</asp:Content>