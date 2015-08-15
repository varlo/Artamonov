<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Search.ascx.cs" Inherits="Forum.PageControls.Search" %>
<div class="form-horizontal" style="margin: 10px">
    <div class="form-group">
        <table>
            <tr>
                <td>
                    <asp:TextBox ID="tbSearch" CssClass="form-control" placeholder="Что ищем?" runat="server"
                        Width="300px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    <asp:Button ID="btnSearch" CssClass="btn btn-success" Text="Найти" runat="server"
                        OnClick="btnSearch_Click" />
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    <asp:Button ID="btnCancel" CssClass="btn btn-cancel" Text="Сбросить" runat="server"
                        CausesValidation="False" OnClick="btnCancel_Click" />
                </td>
            </tr>
        </table>
    </div>
</div>
