<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" MasterPageFile="Front.Master"
    Inherits="Forum.Default" %>

<%@ Register Src="/PageControls/PostMessage.ascx" TagName="PostMessage" TagPrefix="Controls" %>
<%@ Register Src="/PageControls/Messages.ascx" TagName="Messages" TagPrefix="Controls" %>
<%@ Register Src="/PageControls/Search.ascx" TagName="Search" TagPrefix="Controls" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphHeader" runat="server">
    <title>Форум технадзоров. Форум по техническому надзору в строительстве. Украина-СНГ.
    </title>
    <meta name="Keywords" content="Форум технадзоров в строительстве, форум по техническому надзору, форум, технадзор, строительство, Украина, форум технаглядів в будівництві Україна" />
    <meta name="Description" content="форум технадзоров в строительстве, форум по техническому надзору в строительстве, Украина" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="server">
    <div style="float: left">
        <asp:Button ID="btnHome" Text="На основной сайт" CssClass="btn btn-primary" Style="margin-top: 10px"
            runat="server" OnClick="btnHome_Click" />
    </div>
    <div style="float: right">
        <Controls:Search runat="server" ID="SearchControl" />
    </div>
    <Controls:PostMessage runat="server" ID="PostMessageControl" CreateNew="true" />
    <Controls:Messages runat="server" ID="MessagesControl" HideReply="true" DefaultView="true" />
    <asp:Button ID="btnAskQuestion" Text="Создать тему" CssClass="btn btn-primary" Style="margin-bottom: 10px"
        runat="server" OnClick="btnAskQuestion_Click" />
    <table width="100%">
        <tr>
            <td align="center">
                <script src="//platform.linkedin.com/in.js" type="text/javascript">lang: ru_RU</script>
                <script type="IN/Share" data-url="http://forum.stroytehnadzor.com.ua/" data-counter="right"></script>
            </td>
            <td align="center">
                <div class="fb-like" data-share="true" data-width="250" data-show-faces="false">
                </div>
            </td>
            <td align="center">
                <a href="https://twitter.com/share" class="twitter-share-button" data-url="http://forum.stroytehnadzor.com.ua/"
                    data-text="Stroytehnadzor forum" data-via="VictorRalchenko" data-size="large">Tweet</a>
            </td>
            <td>
                &nbsp;
            </td>
            <td align="center">
                <!-- Поместите этот код туда, где должен отображаться значок. -->
                <a href="https://plus.google.com/b/114733052037745722916/dashboard/overview" rel="publisher"
                    target="_top" style="text-decoration: none;">
                    <img src="//ssl.gstatic.com/images/icons/gplus-32.png" alt="Google+" style="border: 0;
                        width: 32px; height: 32px;" />
                </a>
            </td>
            <td>
                &nbsp;
            </td>
            <td align="center">
                <!-- Put this div tag to the place, where the Like block will be -->
                <div id="vk_like">
                </div>
                <script type="text/javascript">
                    VK.Widgets.Like("vk_like", { type: "full" });
                </script>
            </td>
        </tr>
    </table>
</asp:Content>
