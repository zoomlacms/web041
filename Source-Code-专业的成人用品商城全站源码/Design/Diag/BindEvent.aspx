<%@ page language="C#" autoeventwireup="true" inherits="Design_Diag_BindLink, App_Web_qopbkcoy" masterpagefile="~/Design/Master/Edit.master" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content runat="server" ContentPlaceHolderID="head"><title>事件绑定</title></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
<div ng-app="app">
    <div ng-controller="ZLCtrl">
        <table class="table table-bordered">
    <tr>
        <td rowspan="2">单击</td>
        <td>
            <label><input type="radio" name="click_rad" value="0" ng-model="click.type"/>不关联</label>
            <label><input type="radio" name="click_rad" value="1" ng-model="click.type" />打开新窗口</label>
            <label><input type="radio" name="click_rad" value="2" ng-model="click.type"/>跳转页面</label>
            <label><input type="radio" name="click_rad" value="3" ng-model="click.type"/>执行JS</label>
        </td>
    </tr>
    <tr>
        <td>
            <input ng-show="click.type!=3" ng-model="click.url" type="text" class="form-control" placeholder="请输入链接,示例:/list?id=1" />
            <textarea ng-show="click.type==3" ng-model="click.js" class="form-control" placeholder="请输入JS代码"  style="height:120px;"></textarea>
        </td>
    </tr>
            <tr><td></td><td>
                <input type="button" value="保存生效" class="btn btn-primary" ng-click="save();" />
            </td></tr>
</table>
    </div>
</div>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Script">
<script src="/JS/Plugs/angular.min.js"></script>
<script>
    angular.module("app", []).controller("ZLCtrl", function ($scope) {
        $scope.click = editor.model.dataMod.click;
        if (!$scope.click) { $scope.click = { type: "0", url: "", js: "" }; }
        if (!$scope.click.type) { $scope.click.type = "0"; }
        $scope.save = function () {
            editor.model.dataMod.click = $scope.click;
            CloseSelf();
        }
    });
</script>
</asp:Content>
