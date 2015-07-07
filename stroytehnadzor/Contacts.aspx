<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" MasterPageFile="Front.Master"
    Inherits="Stroytehnadzor.Contacts" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphHeader" runat="server">
    <title>Контакты</title>
    <meta name="Keywords" content="контакты" />
    <meta name="Description" content="контакты" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="server">
    <img src="images/ok.gif" />
    <h3>
        Контактная информация:</h3>
    <b>Email: </b>
    <img src="images/emailoffice.gif" alt="" /><br />
    <b>Email: </b>
    <img src="images/emailoffice2.png" alt="" />
    <br />
    <b>Website: <a href='http://www.stroytehnadzor.com.ua'>www.stroytehnadzor.com.ua</a></b><br />
    <br />
    <table width="100%" height="100%">
        <tr align="left">
            <td colspan="2">
                технадзор в: г.Киев, г.Бровары, г.Борисполь, Киевской области
            </td>
            <td colspan="2">
                технадзор в: г.Чернигов, г.Славутич
            </td>
        </tr>
        <tr>
            <td>
                <b>моб.:</b>
            </td>
            <td>
                <b>(097)-283-74-98</b>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                <b>CDMA:</b>
            </td>
            <td>
                <b>(044)-221-87-21</b>
            </td>
            <td>
                <b>моб.:</b>
            </td>
            <td>
                <b>(050)-418-54-77</b>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <div class="paragraph">
        Если вы желаете дополнить сайт, внести предложения, задать вопросы, или высказать
        замечания, указать на ошибки, обращайтесь ко мне по телефонам или по электронной
        почте из контактной информации, а также, при личной встрече можно обсудить интересующие
        Вас детали. 
        <br /><br />
        С уважением Артамонов Владимир.
    </div>
</asp:Content>
