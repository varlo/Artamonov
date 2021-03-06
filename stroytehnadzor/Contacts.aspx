<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" MasterPageFile="Front.Master"
    Inherits="Stroytehnadzor.Contacts" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphHeader" runat="server">
    <title>Контакты</title>
    <meta name="Keywords" content="контакты" />
    <meta name="Description" content="контакты" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="server">
    <style type="text/css">
        td
        {
            font-size: 14px;
            font-weight: bold;
        }
    </style>
    <img src="images/ok.gif" />
    <h3>
        Контактная информация:</h3>
    <table width="100%" height="100%">
        <tr>
            <td>
                <b>тел.:</b>
            </td>
            <td>
                <b>+38 (044) 221 87 21</b>
            </td>
        </tr>
        <tr>
            <td>
                <b>моб.:</b>
            </td>
            <td>
                <b>+38 (097) 283 74 98</b>
            </td>
        </tr>
        <tr>
            <td>
                <b>Email №1:</b>
            </td>
            <td rowspan="2">
                <%--                <a href="mailto:office@stroytehnadzor.com.ua" style="font-family: Verdana; font-size: 12px; font-weight: bold">office@stroytehnadzor.com.ua</a>
                --%>
                <img src="images/emailofficeboth.png" alt="" />
            </td>
        </tr>
        <tr>
            <td>
                <b>Email №2:</b>
            </td>
            <%--            <td>
                <a href="mailto:stroytehnadzor.ua@gmail.com" style="font-family: Verdana; font-size: 12px; font-weight: bold">stroytehnadzor.ua@gmail.com</a>
                <img src="images/emailoffice2.png" alt="" style="height: 14px" />
            </td>--%>
        </tr>
        <tr colspan="2">
            <td>
                &nbsp;
            </td>
        </tr>
        <tr align="left">
            <td colspan="2">
                технадзор в: г.Киев, Киевская область, г. Бровары, г. Борисполь, вся Украина.
            </td>
        </tr>
    </table>
    <br />
    <div class="paragraph">
        <a href="images/1_Sertifikat_tehnadzor_Artamonov_bessrochnyj.jpg" onclick="window.open('','name','scrollbars=n,resizable=n,width=676,height=963');" target="name">
        <img src="images/1_Sertifikat_tehnadzor_Artamonov_bessrochnyj_small.jpg" alt="" border="0"></a>
        <a href="images/1_Sertifikat_tehnadzor_Artamonov_bessrochnyj.jpg">Сертификат технадзора бессрочный</a>
    </div>
    <div class="paragraph">
        <a href="images/2_REZJuME_Artamonov_Vladimir_tehnadzor_01.07.2015.pdf" onclick="window.open('','name','scrollbars=n,resizable=n,width=676,height=963');" target="name">
        <img src="images/2_REZJuME_Artamonov_Vladimir_tehnadzor_01.07.2015_small.png" alt="" border="0"></a>
        <a href="images/2_REZJuME_Artamonov_Vladimir_tehnadzor_01.07.2015.pdf">Резюме</a>
    </div>
    <div class="paragraph">
        <a href="images/3_Diplom.Artamonov.tehnadzor.jpg" onclick="window.open('','name','scrollbars=n,resizable=n,width=676,height=963');" target="name">
        <img src="images/3_Diplom.Artamonov.tehnadzor_small.jpg" alt="" border="0"></a>
        <a href="images/3_Diplom.Artamonov.tehnadzor.jpg">Димплом</a>
    </div>
    <div class="paragraph">
        <a href="images/4_Svidetel'stvo_Gosregistracija_FOP_Artamonov_1.jpg" onclick="window.open('','name','scrollbars=n,resizable=n,width=676,height=963');" target="name">
        <img src="images/4_Svidetel'stvo_Gosregistracija_FOP_Artamonov_1_small.jpg" alt="" border="0"></a>
        <a href="images/4_Svidetel'stvo_Gosregistracija_FOP_Artamonov_1.jpg">Свидетельство госрегистрации №1</a>
    </div>
    <div class="paragraph">
        <a href="images/5_Svidetel'stvo_Gosregistracija_FOP_Artamonov_2.jpg" onclick="window.open('','name','scrollbars=n,resizable=n,width=676,height=963');" target="name">
        <img src="images/5_Svidetel'stvo_Gosregistracija_FOP_Artamonov_2_small.jpg" alt="" border="0"></a>
        <a href="images/5_Svidetel'stvo_Gosregistracija_FOP_Artamonov_2.jpg">Свидетельство госрегистрации №2</a>
    </div>
    <div class="paragraph">
        <a href="images/6_Svidetel'stvo_nalogovaja_FOP_Artamonov_1.jpg" onclick="window.open('','name','scrollbars=n,resizable=n,width=676,height=963');" target="name">
        <img src="images/6_Svidetel'stvo_nalogovaja_FOP_Artamonov_1_small.jpg" alt="" border="0"></a>
        <a href="images/6_Svidetel'stvo_nalogovaja_FOP_Artamonov_1.jpg">Свидетельство налоговой №1</a>
    </div>
    <div class="paragraph">
        <a href="images/7_Svidetel'stvo_nalogovaja_FOP_Artamonov_2.jpg" onclick="window.open('','name','scrollbars=n,resizable=n,width=676,height=963');" target="name">
        <img src="images/7_Svidetel'stvo_nalogovaja_FOP_Artamonov_2_small.jpg" alt="" border="0"></a>
        <a href="images/7_Svidetel'stvo_nalogovaja_FOP_Artamonov_2.jpg">Свидетельство налоговой №2</a>
    </div>
    <div class="paragraph">
        <a href="images/8_Vypiska_ijun'_2015.Artamonov_1.jpg" onclick="window.open('','name','scrollbars=n,resizable=n,width=676,height=963');" target="name">
        <img src="images/8_Vypiska_ijun'_2015.Artamonov_1_small.jpg" alt="" border="0"></a>
        <a href="images/8_Vypiska_ijun'_2015.Artamonov_1.jpg">Выписка июнь 2015 №1</a>
    </div>
    <div class="paragraph">
        <a href="images/9_Vypiska ijun' 2015.Artamonov_2.jpg" onclick="window.open('','name','scrollbars=n,resizable=n,width=676,height=963');" target="name">
        <img src="images/9_Vypiska ijun' 2015.Artamonov_2_small.jpg" alt="" border="0"></a>
        <a href="images/9_Vypiska ijun' 2015.Artamonov_2.jpg">Выписка июнь 2015 №2</a>
    </div>
    <div class="paragraph">
        Вопросы, дополнения, предложения по телефонам или по электронной почте. При личной
        встрече можно обсудить интересующие Вас услуги.
        <br />
        <br />
        С уважением, Владимир Артамонов.
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphComments" runat="server">
</asp:Content>
