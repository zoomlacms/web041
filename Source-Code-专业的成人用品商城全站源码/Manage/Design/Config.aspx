<%@ page language="C#" autoeventwireup="true" inherits="Manage_Design_Config, App_Web_mdhofeiu" masterpagefile="~/Manage/I/Default.master" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content runat="server" ContentPlaceHolderID="head"><title>动力配置</title></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
    <table class="table table-bordered">
        <tr><td class="td_m">动力域名</td><td><asp:TextBox runat="server" ID="Domain_T" CssClass="form-control text_300" /><span>格式:site.z01.com</span></td></tr>
        <tr><td></td><td><asp:Button runat="server" ID="Save_Btn" CssClass="btn btn-primary" OnClick="Save_Btn_Click" Text="保存配置" /></td></tr>
    </table>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ScriptContent">

</asp:Content>