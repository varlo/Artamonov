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
    <table width="100%" height="100%">
        <tr>
            <td><b>Email:</b></td>
            <td><img src="images/emailoffice.png" alt="" style="height: 16px" /></td>
        </tr>
        <tr>
            <td><b>Email:</b></td>
            <td><img src="images/emailoffice2.png" alt="" style="height: 14px" /></td>
        </tr>
        <tr>
            <td>
                <b>CDMA:</b>
            </td>
            <td>
                <b>+38(044)-221-87-21</b>
            </td>
        </tr>
        <tr>
            <td>
                <b>моб.:</b>
            </td>
            <td>
                <b>+38(097)-283-74-98</b>
            </td>
        </tr>
        <tr><td>&nbsp;</td></tr>
        <tr align="left">
            <td colspan="2">
                технадзор в: г.Киев, Киевская область, г. Бровары, г. Борисполь, вся Украина.
            </td>
        </tr>
    </table>
    <br />
    <div class="paragraph">
        Если вы желаете дополнить сайт, внести предложения, задать вопросы, или высказать
        замечания, указать на ошибки, обращайтесь ко мне по телефонам или по электронной
        почте из контактной информации, а также, при личной встрече можно обсудить интересующие
        Вас детали. 
        <br /><br />
        С уважением, Артамонов Владимир.
    </div>
</asp:Content>
