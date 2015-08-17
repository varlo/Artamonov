<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Messages.ascx.cs" Inherits="Forum.PageControls.Messages" %>
<div>
    <asp:Repeater ID="rptMessages" runat="server" OnItemDataBound="rptMessages_ItemDataBound"
        OnItemCommand="rptMessages_ItemCommand">
        <HeaderTemplate>
            <table class="table table-bordered">
                <tr class="info">
                    <th style="text-align: center">
                        Тема
                    </th>
                    <th style="width: 50%; text-align: center" id="thMessage" runat="server">
                        Сообщение
                    </th>
                    <th style="width: 5%; text-align: center" id="thAnswers" runat="server">
                        Ответов
                    </th>
                    <th style="width: 15%; text-align: center">
                        Тема открыта
                    </th>
                    <th style="width: 15%; text-align: center">
                        Последний ответ
                    </th>
                    <th id="thReply" runat="server">
                    </th>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <asp:Label ID="lSubject" runat="server"></asp:Label>
                    <asp:HyperLink ID="hlSubject" Font-Bold="True" runat="server"></asp:HyperLink>
                    <div class="pull-right">
                        <asp:LinkButton ID="lbEdit" CssClass="glyphicon glyphicon-edit" CommandName="Edit"
                            runat="server" />
                        <asp:LinkButton ID="lbDelete" CssClass="glyphicon glyphicon-remove" CommandName="Delete"
                            OnClientClick="return confirm('Вы уверены, что хотите удалить это сообщение?')"
                            runat="server" />
                    </div>
                </td>
                <td id="tdMessage" runat="server">
                    <asp:Literal ID="lBody" runat="server"></asp:Literal><br />
                    <div class="pull-right">
                        <b>Последний ответ:</b>&nbsp;<asp:Literal ID="lLastAnswer1" runat="server"></asp:Literal></div>
                </td>
                <td align="center" id="tdAnswers" runat="server">
                    <asp:Literal ID="lAnswers" runat="server"></asp:Literal>
                </td>
                <td align="center">
                    <asp:Literal ID="lCreated" runat="server"></asp:Literal><br />
                    <asp:Literal ID="lName" runat="server"></asp:Literal>
                </td>
                <td align="center">
                    <asp:Literal ID="lLastAnswer2" runat="server"></asp:Literal>
                </td>
                <td id="thReply" style="text-align: center" runat="server">
                    <asp:LinkButton ID="lbReply" CssClass="btn btn-success" CommandName="Reply" Font-Bold="True"
                        Text="Ответить" runat="server" />
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</div>
