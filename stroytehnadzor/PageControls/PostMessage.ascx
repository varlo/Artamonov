<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PostMessage.ascx.cs"
    Inherits="stroytehnadzor.PageControls.PostMessage" %>
<div class="form-horizontal" style="margin: 10px">
    <asp:Label ID="lMessage" runat="server"></asp:Label>
    <asp:HiddenField ID="hId" runat="server"/>
    <asp:HiddenField ID="hOldId" runat="server"/>
    <div class="form-group" id="divTitle" runat="server">
        <label class="control-label col-sm-2" for="tbSubject">
            Заголовок:</label>
        <div class="col-sm-10">
            <asp:TextBox ID="tbSubject" CssClass="form-control" placeholder="Введите заголовок"
                runat="server" Width="300px"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="tbBody">
            Ваш комментарий:</label>
        <div class="col-sm-10">
            <asp:Literal ID="lAnswer" runat="server"></asp:Literal>
            <asp:TextBox ID="tbBody" CssClass="form-control" placeholder="Комментировать"
                runat="server" Columns="100" Rows="5" TextMode="MultiLine"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="tbBody">
            Имя:</label>
        <div class="col-sm-10">
            <asp:TextBox ID="tbName" CssClass="form-control" placeholder="Введите Ваше имя" runat="server"
                Width="300px"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <asp:Button ID="btnSend" CssClass="btn btn-success" Text="Отправить" runat="server"
                OnClick="btnSend_Click" />
            <asp:Button ID="btnCancel" CssClass="btn btn-cancel" Text="Отменить" runat="server"
                OnClick="btnCancel_Click" />
        </div>
    </div>
</div>
