﻿<%@ page language="C#" autoeventwireup="true" inherits="Design_Diag_page_scence, App_Web_qopbkcoy" masterpagefile="~/Common/Master/Empty.master" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="~/Manage/I/ASCX/SFileUp.ascx" TagPrefix="ZL" TagName="SFileUp" %>

<asp:Content runat="server" ContentPlaceHolderID="head"><title>参数设置</title></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
   <table class="table table-bordered table-striped">
        <tr><td class="td_m">页面标题：</td><td><asp:TextBox runat="server" ID="Title_T" CssClass="form-control" MaxLength="50" /></td></tr>
        <tr><td>Meta配置：</td><td><asp:TextBox runat="server" TextMode="MultiLine" ID="Meta_T" CssClass="form-control area_md" /></td></tr>
        <tr><td>引入资源：</td><td><asp:TextBox runat="server" TextMode="MultiLine" ID="Resource_T" CssClass="form-control" style="height:120px;" placeholder="CSS或JS引用" /></td></tr>
        <tr><td>页面备注：</td><td><asp:TextBox runat="server" TextMode="MultiLine" ID="Remind_T" CssClass="form-control area_md" /></td></tr>
       <tr>
           <td>场景图标：</td>
           <td>
               <ZL:SFileUp runat="server" ID="PreviewImg_UP" FType="Img" />
               <span class="r_gray">请上传不小于600*600的图片</span>
               <span runat="server" id="err_sp" class="r_red"></span>
           </td>
       </tr>
        <tr>
           <td>屏幕截图：</td>
           <td>
               <ZL:SFileUp runat="server" ID="Thumb_UP" FType="Img" LoadRes="false" />
           </td>
       </tr>
        <tr><td></td><td>
            <asp:Button runat="server" CssClass="btn btn-primary" ID="Save_Btn" Text="保存修改" OnClick="Save_Btn_Click" />
            <input type="button" value="关闭窗口" class="btn btn-default" onclick="top.CloseDiag();" /></td></tr>
    </table>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Script"></asp:Content>