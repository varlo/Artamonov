<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LeftMenu.ascx.cs" Inherits="StroyTehNadzor.PageControls.LeftMenu" %>
<table cellpadding="0" cellspacing="0">
    <tr height="50px">
        <td align="right" width="25px">
            <asp:Literal ID="lArrow1" runat="server"></asp:Literal>
        </td>
        <td>
            <a class="menu" href="/Default.aspx">Главная</a>
        </td>
    </tr>
    <tr height="50px">
        <td align="right" width="25px">
            <asp:Literal ID="lArrow2" runat="server"></asp:Literal>
        </td>
        <td>
            <a class="menu" href="/Functions.aspx">Цели, Задачи, Функции<br />
                &nbsp;&nbsp;&nbsp;инженера&nbsp;технадзора</a><br />
            <br />
        </td>
    </tr>
    <tr height="50px">
        <td align="right" width="25px">
            <asp:Literal ID="lArrow3" runat="server"></asp:Literal>
        </td>
        <td>
            <a class="menu" href="/NormBase.aspx">Нормативная&nbsp;и<br />
                &nbsp;&nbsp;&nbsp;законодательная&nbsp;база</a>
        </td>
    </tr>
    <tr height="50px">
        <td align="right" width="25px">
            <asp:Literal ID="lArrow4" runat="server"></asp:Literal>
        </td>
        <td>
            <a class="menu" href="/Testimonials.aspx">Отзывы Заказчиков</a>
        </td>
    </tr>
    <tr height="50px">
        <td align="right" width="25px">
            <asp:Literal ID="lArrow5" runat="server"></asp:Literal>
        </td>
        <td>
            <a class="menu" href="/Contacts.aspx">Контакты. Резюме</a>
        </td>
    </tr>
    <tr height="50px" style="display: none;">
        <td align="right" width="25px">
            <asp:Literal ID="lForum" runat="server"></asp:Literal>
        </td>
        <td>
            <a class="menu" href="out.aspx?link=http://stroytehnadzor.0pk.ru/">Форум</a>
        </td>
    </tr>
</table>
<br />
<table border="0" width="100%">
    <tr>
        <td align="center">
            квалификационный сертификат технадзора
        </td>
    </tr>
    <tr>
        <td align="center">
            <a href="images/sertificateBig.jpg" onclick="window.open('','name','scrollbars=n,resizable=n,width=676,height=963');"
                target="name">
                <img src="images/sertificate.jpg" alt="" border="0"></a>
        </td>
    </tr>
    <%--    <tr>
        <td align="center">
            <br />
            <br />
            <noindex>
                <a href="http://www.detdom.info/terminovo/artvmonov-yaroslav"
                    title="Собираем на операцию Ярославчику" target="_blank">
                    <img src="images/yaroslav.gif" width="250px" alt="Собираем на операцию Ярославчику"></a>
            </noindex>
        </td>
    </tr>--%>
<%--    <tr>
        <td align="left">
            <br />
            <br />
            <b>27 февраля 2013 года в среду состоялся семинар для технадзоров.</b>
            <br />
            по адресу г. Киев, бульвар Л.Украинки, 26.
            <br />
            <b>Личное мнение: </b>Семинар с профессиональной подготовки технадзоров пустой.
            Ожидалось какой-то большей информативности. Такое впечатление, что собрали морально
            подготовить к репрессиям, т.к. пять раз повторили фразу: "Нас обязывают усилить
            инспекционную работу". Это говорит о включении фискального механизма с новой силой.
            Призываю быть зубатыми специалистами, постоянно повышать квалификацию, помогать
            и Заказчикам и строителям, тем самым мы обретем иммунитет против прецедентов к штрафам
            технадзоров.
        </td>
    </tr>--%>
</table>
