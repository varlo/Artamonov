<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExtExp.aspx.cs" MasterPageFile="Front.Master"
    Inherits="Stroytehnadzor.ExtExp" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphHeader" runat="server">
    <title>Опыт других стран.</title>
    <meta name="Keywords" content="Опыт других стран" />
    <meta name="Description" content="Опыт других стран" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="server">
    <h3>
        Иностранный опыт:</h3>
    <noindex><a href="images/AtestationBelarus.doc">Аттестация инженеров технического надзора в Республике
        Беларусь от 13 июля 1999 г.</a></noindex>
    <br />
    <br />
    <asp:LinkButton ID="lbKodeksPdf" runat="server" Text="Технический кодекс в строительстве. Кодекс технадзора в Республике Беларусь. ТКП 45-1.03-162-2009"
        OnClick="lbKodeksPdf_Click"></asp:LinkButton>
    <br />
    <br />
    <div class="paragraphotindent">
        Вам будет интересно ознакомится с Декретом про аттестацию технадзоров и Техническим
        Кодексом в строительстве для представителей технического надзора у наших соседей.
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphComments" runat="server">
</asp:Content>