<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.Website.manage.Shop.ProductSale, App_Web_0ivzo2ec" masterpagefile="~/Manage/I/Default.master" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<asp:Content runat="server" ContentPlaceHolderID="head">
    <title>总体销售统计</title>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
<div class="text-center" style="margin-top:15px; margin-bottom:15px;">
从
<asp:TextBox ID="StartTime_t" runat="server" CssClass="form-control" Width="184px" onclick="WdatePicker({ maxDate:'#F{$dp.$D(\'EndTime_t\')||\'%y-%M-%d\'}',dateFmt: 'yyyy-MM-dd' });" />
至
<asp:TextBox ID="EndTime_t" runat="server" CssClass="form-control" Width="184px" onclick="WdatePicker({ minDate:'#F{$dp.$D(\'StartTime_t\')}',maxDate:'%y-%M-%d',dateFmt: 'yyyy-MM-dd' });" />
<asp:Button ID="Search_btn" Text="查询" runat="server" class="btn btn-primary" OnClick="Search_btn_Click" />
</div>
<ZL:ExGridView ID="EGV" runat="server" AutoGenerateColumns="False" DataKeyNames="id" PageSize="10" OnPageIndexChanging="Egv_PageIndexChanging" IsHoldState="false" AllowPaging="True" AllowSorting="True" CssClass="table table-striped table-bordered table-hover" EnableTheming="False" EnableModelValidation="True" EmptyDataText="<%$Resources:L,无相关数据 %>">
<Columns>
<asp:TemplateField HeaderText="产品ID">
<ItemTemplate>
<%# Eval("ID") %>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="产品名称">
<ItemTemplate>
<%# Eval("Proname") %>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="总销量">
<ItemTemplate>
<%# Eval("Pronum") %>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="会员">
<ItemTemplate>
<%# GetBuyUsers(Eval("ID").ToString()) %>
</ItemTemplate>
</asp:TemplateField>
</Columns>
</ZL:ExGridView>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ScriptContent">
<script type="text/javascript" src="/JS/DatePicker/WdatePicker.js"></script>
</asp:Content>