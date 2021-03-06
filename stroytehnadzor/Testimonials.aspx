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
    <div class="paragraph">
        <b>Технадзор</b> в строительстве - это постоянный контроль качества проводимых работ
        на объекте до мельчайших деталей, до полного соответствия проекту и строительным
        нормам. Для себя, как для инженера технического технадзора, ставлю основную задачу
        – обеспечить долгое, безаварийное и безопасное для людей функционирование объекта
        строительства. Не мало важно, чтобы продукт строительных работ <b>нравился</b> Заказчику.
    </div>
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
        <li>КОНЦЕПТ-ГРУПП</li>
        <a href="images/Otzyv_KONCEPT_GRUPP.jpg" onclick="window.open('','name','scrollbars=n,resizable=n,width=676,height=963');"
            target="name">
            <img src="images/Otzyv_KONCEPT_GRUPP.jpg" width="100px" alt="" border="0" /></a>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphComments" runat="server">
</asp:Content>
