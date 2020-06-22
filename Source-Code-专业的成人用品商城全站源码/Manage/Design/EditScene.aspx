﻿<%@ page language="C#" autoeventwireup="true" inherits="Manage_Design_EditScene, App_Web_mdhofeiu" masterpagefile="~/Manage/I/Default.master" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="~/Manage/I/ASCX/SFileUp.ascx" TagPrefix="ZL" TagName="SFileUp" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
    <link href="/dist/css/star-rating.min.css" rel="stylesheet" />
    <script src="/dist/js/star-rating.min.js"></script>
    <title>场景修改</title>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
    <table class="table table-bordered table-striped">
        <tr>
            <td class="td_m">场景标题:</td>
            <td><asp:TextBox ID="Title_T" runat="server" CssClass="form-control text_300" /></td>
        </tr>
        <tr>
            <td>创建用户:</td>
            <td><asp:Label ID="UserName_L" runat="server" /></td>
        </tr>
        <tr>
            <td>创建时间:</td>
            <td><asp:Label ID="CDate_L" runat="server" /></td>
        </tr>
        <tr>
            <td>最近修改:</td>
            <td><asp:Label ID="UPDate_L" runat="server" /></td>
        </tr>
        <tr>
            <td>场景评分:</td>
            <td id="num_td">
                <input id="score_num" name="score_num" type="number" class="rating" min=0 max=5 step=0.5 data-size="xs">
            </td>
        </tr>
        <tr>
            <td>场景状态:</td>
            <td>
                <asp:RadioButtonList ID="Status_Rad" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="0" Text="正常"></asp:ListItem>
                    <asp:ListItem Value="1" Text="推荐"></asp:ListItem>
                    <asp:ListItem Value="2" Text="停用"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>预览图片:</td>
            <td>
                <ZL:SFileUp runat="server" ID="PreviewImg_UP" FType="Img"/>
            </td>
        </tr>
        <tr>
            <td>屏幕截图:</td>
            <td>
                <ZL:SFileUp runat="server" ID="ThumbImg_UP" FType="Img" LoadRes="false" />
            </td>
        </tr>
        <tr>
            <td>场景备注:</td>
            <td><asp:TextBox runat="server" ID="Remind_T" TextMode="MultiLine"  CssClass="form-control text_405" Height="80" /></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="Submit_B" runat="server" CssClass="btn btn-info" Text="保存信息" OnClick="Submit_B_Click" />
                <asp:Button ID="Del_B" runat="server" CssClass="btn btn-info" OnClientClick="return confirm('确定要删除这个场景吗?')" Text="删除场景" OnClick="Del_B_Click" />
                <asp:Button ID="UpdateToTlp_B" runat="server" CssClass="btn btn-info" OnClick="UpdateToTlp_B_Click" Text="升级为模板" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ScriptContent">
<script>
    function setscore(score) {
        $("#score_num").val(score);
        $(".rating").rating('refresh', {
            showClear: false,
        });
    }
    
</script>
</asp:Content>