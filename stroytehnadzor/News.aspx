<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="News.aspx.cs" MasterPageFile="Front.Master"
    Inherits="Stroytehnadzor.News" %>
<%@ Register Src="/PageControls/News.ascx" TagName="News" TagPrefix="Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="server">
    <Controls:News runat="server" ID="News1" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphComments" runat="server">
</asp:Content>