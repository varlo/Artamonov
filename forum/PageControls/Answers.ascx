﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Answers.ascx.cs" Inherits="Forum.PageControls.Answers" %>
<div>
    <h3>
        <%= Header %></h3>
    <asp:Repeater ID="rptAnswers" runat="server" OnItemDataBound="rptAnswers_ItemDataBound"
        OnItemCommand="rptAnswers_ItemCommand">
        <HeaderTemplate>
            <table class="table table-bordered">
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td style="width: 16%" class="info">
                    <asp:Label ID="lName" runat="server"></asp:Label><br />
                    <asp:Label ID="lCreated" class="pull-left" runat="server"></asp:Label>
                </td>
                <td>
                    <div id="divIndent" runat="server">
                        <asp:Label ID="lSubject" class="pull-left" Font-Bold="true" runat="server"></asp:Label><br />
                        <asp:Literal ID="lBody" runat="server"></asp:Literal>
                        <div class="pull-right">
                            <asp:LinkButton ID="lbEdit" CssClass="glyphicon glyphicon-edit" CommandName="Edit"
                                runat="server" />
                            <asp:LinkButton ID="lbDelete" CssClass="glyphicon glyphicon-remove" CommandName="Delete"
                                OnClientClick="return confirm('Вы уверены, что хотите удалить это сообщение?')"
                                runat="server" />
                        </div>
                    </div>
                    <div class="pull-right">
                        <asp:Label ID="lNumber" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr>
                <td id="thReply" style="text-align: left" colspan="2" runat="server">
                    <div class="btn-group btn-group-sm" role="group">
                        <asp:LinkButton ID="lbReply" CssClass="btn btn-success" CommandName="Reply" Font-Bold="True" Text="Ответить" runat="server" />
                        <asp:LinkButton ID="lbReplyWithQuote" CssClass="btn btn-success" style="margin-left: 5px" CommandName="ReplyWithQuote" Font-Bold="True" Text="Цитировать" runat="server" />
                    </div>
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</div>
