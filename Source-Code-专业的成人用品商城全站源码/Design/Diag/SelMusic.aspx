<%@ page language="C#" autoeventwireup="true" inherits="Design_Diag_SelMusic, App_Web_qopbkcoy" masterpagefile="~/Design/Master/Edit.master" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content runat="server" ContentPlaceHolderID="head"><title>选择音乐</title></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
    <ZL:ExGridView ID="EGV" runat="server" PageSize="20" ShowHeader="false" AutoGenerateColumns="false" AllowPaging="true" OnPageIndexChanging="EGV_PageIndexChanging" CssClass="table table-bordered table-striped">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate><input type="radio" name="music_rad" value="<%#Eval("VPath") %>"/></ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <a href="javascript:;" title="试听" data-vpath="<%#Eval("VPath") %>" class="play_wrap" onclick="music.play(this);" style="text-decoration:none;">
                        <i class="fa fa-play"></i>
                        <i class="fa fa-pause"></i>
                    </a>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="name" />
        </Columns>
    </ZL:ExGridView>
    <div class="btn_div">
        <span><input type="button" value="确定选择" class="btn btn-info" onclick="setMusic();" />
        <input type="button" value="清除音乐" class="btn btn-danger" onclick="clearMusic();" />
        <input type="button" value="关闭窗口" class="btn btn-default" onclick="CloseSelf();" /></span>
    </div>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Script">
<style type="text/css">
.play_wrap .fa-play {display:block;}
.play_wrap .fa-pause {display:none;}
.play_wrap.active .fa-play{display:none;}
.play_wrap.active .fa-pause {display:block;}
.btn_div{text-align:center;}
</style>
<script>
var music = {};
music.$audio = $('<audio src="" loop="" style="display: none; width: 0; height: 0;"></audio>');
music.play = function (obj) {
    var $obj = $(obj);
    if ($obj.hasClass("active")) {
        $obj.removeClass("active");
        music.$audio.attr("src", "");
    }
    else {
        $(".play_wrap").removeClass("active");
        $obj.addClass("active");
        music.$audio.attr("src", $obj.data("vpath"));
        music.$audio[0].play();
    }
}
function setMusic() {
    parent.page.music.set({ src: $("[name=music_rad]:checked").val() });
    CloseSelf();
}
function clearMusic() { parent.page.music.clear(); CloseSelf(); }
$(function () {
    var $first = $("input[name=music_rad]:first");
    if ($first.length > 0) {$first[0].checked=true; }
})
</script>
</asp:Content>