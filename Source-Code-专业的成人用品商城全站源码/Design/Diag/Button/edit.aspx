<%@ page language="C#" autoeventwireup="true" inherits="Design_Diag_Button_edit, App_Web_ou4oo23p" masterpagefile="~/Design/Master/Edit.master" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content runat="server" ContentPlaceHolderID="head"><title>按钮设置</title></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
    <div class="panel panel-primary">
       <div class="panel-heading"><i class="fa fa-image"></i><span class="marginl5">按钮设置</span></div>
       <div class="panel-body" style="padding-left:0px;padding-right:0px;padding-top:0px;">
           <hr class="divider-long"/>
           <div class="control-section-divider labeled">按钮样式</div>
           <hr class="divider-long"/>
           <div class="setting-row">
               <div><label class="row-title">按钮文本</label></div>
               <input type="text" id="value_t" class="form-control" />
           </div>
       </div>
        <div class="setting-row">
            <div><label class="row-title">按钮宽高</label></div>
            <div class="input-group" style="width:400px;">
                <span class="input-group-addon">宽</span>
                <asp:TextBox runat="server" type="text" id="width_t" class="form-control text_80"/>
                <span class="input-group-addon">高</span>
                <asp:TextBox runat="server" type="text" id="height_t" class="form-control text_80" />
                <span class="input-group-addon">px</span>
            </div>
        </div>
   </div>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Script">
<script>
$(function () {
    $("#value_t").val(editor.model.dataMod.value);
    $("#width_t").val(editor.model.instance.find(".btn").css("width"));
    $("#height_t").val(editor.model.instance.find(".btn").css("height"));

    $("#value_t").blur(function () {
        editor.model.dataMod.value = this.value;
        editor.scope.$digest();
    });
    $("#width_t").change(function () {
        var width = Convert.ToInt($(this).val());
        if (width > 0) {
            editor.model.instance.css("width", width);
            editor.model.config.width = width;
            var $btn = editor.model.instance.find(".btn");
            $btn.css("width", width);
        }
    });
    $("#height_t").change(function () {
        var height = Convert.ToInt($(this).val());
        if (height > 0) {
            editor.model.config.height = height;
            editor.model.instance.css("height", height);
            var $btn = editor.model.instance.find(".btn");
            $btn.css("height", height);
            //适应文字高度
            editor.model.config.fontsize = height * 0.55 + "px";
            $btn.css("font-size", height * 0.55 + "px");
        }
    });
});

</script>
</asp:Content>
