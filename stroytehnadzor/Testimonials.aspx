<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Testimonials.aspx.cs" MasterPageFile="Front.Master"
    Inherits="Stroytehnadzor.Testimonials" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphHeader" runat="server">
    <title>Отзывы Заказчиков.</title>
    <meta name="Keywords" content="Отзывы заказчиков, отзывы" />
    <meta name="Description" content="Отзывы заказчиков" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="server">
    <h3>
        Отзывы:</h3>
    <ul>
        <li>Алютех</li>
        <a href="images/Otzyv_Aljuteh.jpg" onclick="window.open('','name','scrollbars=n,resizable=n,width=676,height=963');"
            target="name">
            <img src="images/Otzyv_Aljuteh.jpg" width="100px" alt="" border="0" /></a>
            <li>Билла</li>
        <a href="images/Otzyv_Billa.pdf" onclick="window.open('','name','scrollbars=n,resizable=n,width=676,height=963');"
            target="name">
            <img src="images/Otzyv_Billa.png" width="100px" alt="" border="0" /></a>
            <li>Баумит</li>
        <a href="images/Otzyv_Baumit.jpg" onclick="window.open('','name','scrollbars=n,resizable=n,width=676,height=963');"
            target="name">
            <img src="images/Otzyv_Baumit.jpg" width="100px" alt="" border="0" /></a>
    </ul>
</asp:Content>
