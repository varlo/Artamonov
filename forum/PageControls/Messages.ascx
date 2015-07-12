<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Messages.ascx.cs" Inherits="Forum.PageControls.Messages" %>
<div>
    <asp:Repeater ID="rptMessages" runat="server" OnItemDataBound="rptMessages_ItemDataBound"
        OnItemCommand="rptMessages_ItemCommand">
        <HeaderTemplate>
            <table class="table table-bordered">
                <tr class="info">
                    <th style="width: 35%; text-align: center">
                        Тема
                    </th>
                    <th style="width: 40%; text-align: center">
                        Сообщение
                    </th>
                    <th style="width: 10%; text-align: center">
                        Автор
                    </th>
                    <th style="width: 15%; text-align: center">
                        Создано
                    </th>
                    <th id="thReply" runat="server">
                    </th>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <asp:Label ID="lSubject" runat="server"></asp:Label>
                    <asp:HyperLink ID="hlSubject" Font-Bold="True" Target="blank" runat="server"></asp:HyperLink>
                    <div class="pull-right">
                        <asp:LinkButton ID="lbEdit" CssClass="glyphicon glyphicon-edit" CommandName="Edit"
                            runat="server" />
                        <asp:LinkButton ID="lbDelete" CssClass="glyphicon glyphicon-remove" CommandName="Delete"
                            OnClientClick="return confirm('Вы уверены, что хотите удалить это сообщение?')"
                            runat="server" />
                    </div>
                </td>
                <td>
                    <asp:Literal ID="lBody" runat="server"></asp:Literal>
                </td>
                <td>
                    <asp:Literal ID="lName" runat="server"></asp:Literal>
                </td>
                <td>
                    <asp:Literal ID="lCreated" runat="server"></asp:Literal><br />
                    Последний ответ: <asp:Literal ID="lLastAnswer" runat="server"></asp:Literal>
                </td>
                <td id="thReply" style="text-align: center" runat="server">
                    <asp:LinkButton ID="lbReply" CssClass="btn btn-success" CommandName="Reply" Font-Bold="True"
                        Text="Ответить" runat="server" />
                </td>
            </tr>
            <%--            <div id="divIndent" style="margin-bottom: 10px" runat="server">
                <asp:HyperLink ID="hlSubject" Font-Bold="True" runat="server"></asp:HyperLink>
                &nbsp;(<asp:Literal ID="lName" runat="server"></asp:Literal>,&nbsp;
                <asp:Literal ID="lCreated" runat="server"></asp:Literal>)&nbsp;
                <asp:LinkButton ID="lbReply" CommandName="Reply" Font-Bold="True" Text="Ответить" runat="server" />
                <br />
                <asp:Literal ID="lBody" runat="server"></asp:Literal>
                <br />
            </div>
            --%>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</div>
