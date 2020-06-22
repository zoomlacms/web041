<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.Website.manage.Shop.CategotySale, App_Web_w5tk5sh5" enableviewstatemac="false" masterpagefile="~/Manage/I/Default.master" debug="true" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
<title>商品类别销售排名</title>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
<ZL:ExGridView ID="EGV" runat="server" AutoGenerateColumns="False" DataKeyNames="NodeID" PageSize="10" OnPageIndexChanging="Egv_PageIndexChanging" IsHoldState="false" AllowPaging="True" AllowSorting="True" CssClass="table table-striped table-bordered table-hover" EnableTheming="False" EnableModelValidation="True" EmptyDataText="<%$Resources:L,无相关数据 %>">
<Columns>
<asp:TemplateField HeaderText="分类ID">
<ItemTemplate>
<%# Eval("NodeID") %>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="产品分类">
<ItemTemplate>
<%# Eval("NodeName") %>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="总销量">
<ItemTemplate>
<%# Eval("Pronum") %>
</ItemTemplate>
</asp:TemplateField>
</Columns>
</ZL:ExGridView>

</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ScriptContent"></asp:Content>