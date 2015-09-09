<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PostMessage.ascx.cs"
    Inherits="Forum.PageControls.PostMessage" %>
<div class="form-horizontal" style="margin: 10px">
    <asp:Label ID="lMessage" runat="server"></asp:Label>
    <asp:HiddenField ID="hId" runat="server" />
    <div class="form-group" id="divTitle" runat="server">
        <label class="control-label col-sm-2" for="tbSubject">
            Заголовок:</label>
        <div class="col-sm-10">
            <asp:TextBox ID="tbSubject" CssClass="form-control" placeholder="Введите заголовок"
                runat="server" Width="300px"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-1" for="tbBody">
            Сообщение:</label>
        <div class="col-sm-12">
            <asp:Literal ID="lAnswer" runat="server"></asp:Literal>
            <input type="button" value="<blockquote>" onclick="replaceTemplate('<blockquote>')" />&nbsp;<input type="button"
                value="</blockquote>" onclick="replaceTemplate('</blockquote>')" />
                <input type="button" value="<s>" onclick="replaceTemplate('<s>')" />&nbsp;<input type="button"
                value="</s>" onclick="replaceTemplate('</s>')" />
            <asp:TextBox ID="tbBody" CssClass="form-control" placeholder="Введите текст сообщения"
                runat="server" Columns="100" Rows="20" TextMode="MultiLine"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-1" for="tbBody">
            Имя:</label>
        <div class="col-sm-11">
            <asp:TextBox ID="tbName" CssClass="form-control" placeholder="Введите Ваше имя" runat="server"
                Width="300px"></asp:TextBox><asp:RequiredFieldValidator ID="rvName" ControlToValidate="tbName"
                    ErrorMessage="Имя обязательно" Display="Dynamic" runat="server"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-1" for="tbBody">
            E-mail:</label>
        <div class="col-sm-11">
            <asp:TextBox ID="tbEmail" CssClass="form-control" placeholder="Введите e-mail" runat="server"
                Width="300px"></asp:TextBox><asp:RequiredFieldValidator ID="rvEmail" ControlToValidate="tbEmail"
                    ErrorMessage="E-mail обязателен" Display="Dynamic" runat="server"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-12">
            <asp:Button ID="btnSend" CssClass="btn btn-success" Text="Отправить" runat="server"
                OnClick="btnSend_Click" />
            <asp:Button ID="btnCancel" CssClass="btn btn-cancel" Text="Отменить" runat="server"
                CausesValidation="False" OnClick="btnCancel_Click" />
        </div>
    </div>
</div>
<script type="text/javascript">
    function replaceTemplate(template) {
        var body = $('#<%=tbBody.ClientID%>');
        $(body).val('' + $(body).val() + template);
    }
</script>
