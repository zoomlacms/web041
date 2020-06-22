﻿<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.PayOnline.Orderpay, App_Web_ue1idvvx" enableviewstatemac="false" masterpagefile="~/Cart/order.master" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>选择支付平台</title>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
    <div class="head_div hidden-xs"><a href="/"><img src="<%Call.Label("{$LogoUrl/}"); %>" /></a></div>
        <div class="pay_select" style="padding-bottom:0px;">
            <div class="pay_head">
            <%--    <div><strong>订单提交成功，请您尽快付款！</strong></div>--%>
                <div><span class="list_sp">订单号:</span><asp:Label ID="OrderNo_L" runat="server" ForeColor="Green"></asp:Label></div>
                <div><span class="list_sp">应付金额:</span><asp:Label ID="TotalMoney_L" runat="server"></asp:Label></div>
            </div>
            <div class="PayPlat_s">
                <div class="divline paytitle">在线支付操作(选择支付平台)</div>
                <ul class="list-unstyled margin_t5">
                    <asp:Repeater runat="server" ID="PayPlat_RPT">
                        <ItemTemplate>
                            <li class="payplat_li plat_item col-lg-3 col-md-4 col-sm-6 col-xs-12 text-left" title="<%#Eval("PayPlatName") %>">
                                <input type="radio" class="payplat_rad" name="payplat_rad" value="<%#Eval("PayPlatID") %>" />
                                <img src="<%#GetPlatImg()%>" class="plat_item_img" />
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                    <li class="clearfix"></li>
                </ul>
                <div runat="server" id="virtual_ul">
                    <div class="divline paytitle">虚拟币支付</div>
                    <ul class="dashpay_ul margin_t5">
                        <li runat="server" id="purseli" title="用户余额支付" visible="false">
                            <input type="radio" name="payplat_rad" value="Purse" />
                            <div class='pay_btn'><i class="fa fa-credit-card">余额支付</i></div>
                        </li>
                        <li runat="server" id="siconli" title="用户银币支付" visible="false">
                            <input type="radio" name="payplat_rad" value="SilverCoin" />
                            <div class='pay_btn'><i class="fa fa-rouble">银币支付</i></div>
                        </li>
                        <li runat="server" id="pointli" title="用户积分支付" visible="false">
                            <input type="radio" name="payplat_rad" value="Score" />
                            <div class='pay_btn'><i class="fa fa-money">积分支付</i></div>
                        </li>
                    </ul>
                </div>
                <asp:Button ID="BtnSubmit" CssClass="i_bottom" runat="server" OnClick="BtnSubmit_Click" />
                <div class="clear"></div>
            </div>
        </div>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ScriptContent">
<script>
$(function () {
	$(".plat_item_img").click(function () { $(this).siblings(":radio")[0].checked = true; });
	$(".dashpay_ul li").click(function () {
		$(".dashpay_ul .active").removeClass('active');
		$(this).find('input')[0].checked = true;
		$(this).addClass('active');
	});
	if ($(".payplat_rad").length > 0) { $(".payplat_rad:first")[0].checked = true; }
})
</script>
</asp:Content>