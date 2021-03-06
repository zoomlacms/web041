﻿<%@ page language="C#" autoeventwireup="true" inherits="Design_scence_default, App_Web_nakjhsl1" masterpagefile="~/Common/Master/Empty.master" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
<link href="/design/res/css/main.css" rel="stylesheet" />
<link href="/design/res/css/se_design.css" rel="stylesheet" />
<title>工作台--微场景设计</title>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
<nav class="navbar navbar-default design_top">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">设计工作台</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="/design/user/" target="_blank"><i class="fa fa-user"></i></a></li>
   <%--             <li class="active cmd_page"><a href="javascript:;"><i class="fa fa-paste"></i> 场景设置<span class="sr-only">(current)</span></a></li>--%>
                <li class="cmd_addpage"><a href="javascript:;"><i class="fa fa-plus"></i> 新场景</a></li>
                <li class="pop_title" data-pop="进入门户开发"><a href="/design"><i class="fa fa-desktop"></i></a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="javascript:;" onclick="if (confirm('要保存当前修改吗')) { PreSave(); }"><i class="fa fa-save"></i></a></li>
                <li><a href="preview.aspx?id=<%:Mid %>" target="_blank"><i class="fa fa-laptop"></i> PC预览</a></li>
                <li><a href="javascript:;" id="preview_btn"><i class="fa fa-mobile"></i> 手机预览</a></li>
                <li><a href="http://doc.z01.com/help/" target="_blank"><i class="fa fa-question-circle"></i></a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="mbdesign">
    <div class="rpane left hidden-md hidden-xs hidden-sm">
        <ul class="menuul">
            <li class="active" data-tab="#tlp_tab" onclick="settab(this);">精选模板</li>
            <li data-tab="#pub_tab" onclick="settab(this);">互动元素</li>
            <li class="cmd_addcomp" style="border-right:none;">添加组件</li>
        </ul>
        <div class="clearfix"></div>
        <div class="tab_pane tab-content">
            <div class="tab_content tab-pane active" id="tlp_tab">
                <ul class="mbtlp_ul">
                    <asp:Repeater runat="server" ID="Tlp_RPT" EnableViewState="false">
                        <ItemTemplate>
                            <li title="<%#Eval("TlpName") %>" onclick="scence.loadtlp(<%#Eval("ID") %>);">
                                <img src="<%#Eval("PreViewImg") %>" onerror="shownopic(this);" />
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <div class="clearfix"></div>
                <div class="left_footer">
                    模板市场<span class="foot_btn" onclick="window.open('/Class_2/Default.aspx');" title="更多模板">
                        <i class="fa fa-plus"></i>
                    </span>
                </div>
            </div>
            <div class="tab_content tab-pane" id="pub_tab" style="padding:15px;">
                <iframe src="/design/diag/addpubcomp.aspx" style="border:none;width:100%;height:400px; overflow:hidden;" scrolling="no"></iframe>
            </div>
        </div>
    </div>
    <script>
        function settab(obj)
        {
            $obj=$(obj);
            if($obj.hasClass("active")){return;}
            $(".menuul li").removeClass("active");
            $(".tab-pane").removeClass("active");
            $obj.addClass("active");
            $($obj.data("tab")).addClass("active");
        }
    </script>
    <div class="mainpane">
        <div class="mobile" id="mobile_div">
             <div class="sidebar sidebar_left" style="left:-30px;" id="toolsmenu_div">
                <a href="javascript:;" class="btn btn-sm btn-default cmd_addcomp" title="增加组件"><i class="fa fa-object-group"></i></a>
                <a href="javascript:;" class="btn btn-sm btn-default" title="组件靠前" onclick="tools.up();"><i class="fa fa-step-backward fa-rotate-90"></i></a>
                <a href="javascript:;" class="btn btn-sm btn-default" title="组件置后" onclick="tools.down();"><i class="fa fa-step-forward fa-rotate-90"></i></a>
                <a href="javascript:;" class="btn btn-sm btn-default" title="动画动作" onclick="tools.animate();"><i class="fa fa-send"></i></a>
                <a href="javascript:;" class="btn btn-sm btn-default" title="修改组件" onclick="tools.edit();"><i class="fa fa-pencil"></i></a>
                <a href="javascript:;" class="btn btn-sm btn-default" title="通用属性" onclick="tools.common();"><i class="fa fa-th"></i></a>
                <a href="javascript:;" class="btn btn-sm btn-default" title="绑定行为" onclick="tools.bind();"><i class="fa fa-link"></i></a>
                <a href="javascript:;" class="btn btn-sm btn-danger" title="移除组件" onclick="tools.del();"><i class="fa fa-trash"></i></a>
            </div>
            <iframe id="design_ifr" scrolling="no"></iframe>
            <div class="sidebar">
                <a href="javascript:;" class="btn btn-sm btn-default" title="上一页" onclick="scence.switch('pre');"><i class="fa fa-arrow-circle-o-up"></i></a>
                <a href="javascript:;" class="btn btn-sm btn-default" title="下一页" onclick="scence.switch('next');"><i class="fa fa-arrow-circle-o-down"></i></a>
                <a href="javascript:;" class="btn btn-sm btn-default" title="预览动画" onclick="scence.preview();"><i class="fa fa-eye"></i></a>
                <a href="javascript:;" class="btn btn-sm btn-default" title="背景" onclick="diy_bk.set();"><i class="fa fa-image"></i></a>
                <div class="side_menu" id="diy_bk_body" style="display:none;">
                    <a href="javascript:;" class="item cmd_addbk"><i class="fa fa-refresh"></i> <span>更换</span></a>
                    <a href="javascript:;" class="item cut" onclick="diy_bk.cut();"><i class="fa fa-cut"></i> <span>裁剪</span></a>
                    <a href="javascript:;" class="item" onclick="diy_bk.del();"><i class="fa fa-trash-o"></i> <span>删除</span></a>
                    <a href="javascript:;" class="item text-center" onclick="diy_bk.close();"><i class="fa fa-remove"></i> <span>关闭</span></a>
                </div>
                <a href="javascript:;" class="btn btn-sm btn-default" title="资源" onclick="scence.setres();"><i class="fa fa-delicious"></i></a>
                <a href="javascript:;" class="btn btn-sm btn-default cmd_music" title="音乐"><i class="fa fa-music"></i></a>
                <a href="javascript:;" class="btn btn-sm btn-default cmd_conf" title="场景设置"><i class="fa fa-cog"></i></a>
            <%--    <a href="javascript:;" title="特效"><i class="fa fa-magic"></i></a>--%>
            </div>
        </div>
    </div>
    <div class="rpane right">
        <ul class="menuul">
            <li class="active">页面管理</li>
            <li class="cmd_page">参数配置</li>
        </ul>
        <div class="clearfix"></div>
        <div class="tab_pane">
            <div class="tab_head text-center">
                <a href="javascript:;" class="btn btn-sm btn-info" title="详情" onclick="scence.domonpage();"><i class="fa fa-tasks"></i></a>
                <a href="javascript:;" class="btn btn-sm btn-primary" title="新建" onclick="scence.add();"><i class="fa fa-plus"></i></a>
                <a href="javascript:;" class="btn btn-sm btn-danger" title="删除" onclick="scence.del();"><i class="fa fa-trash-o"></i></a>
<%--                <a href="javascripot:;" class="btn btn-sm btn-info disabled" title="复制"><i class="fa fa-copy"></i></a>--%>
            </div>
            <div class="tab_content">
                <ul class="list-unstyled" id="page_ul"></ul>
            </div>
        </div>
    </div>
</div>
<div id="diagBody">
    <iframe id="diagIfr" style="border: none; width: 100%; min-height: 350px;"></iframe>
</div>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Script">
<link rel="stylesheet" href="/Design/JS/Plugs/jqueryUI/css/custom-theme/jquery-ui-1.10.0.custom.css"/>
<script src="/JS/jquery-ui.min.js"></script>
<script src="/JS/Controls/ZL_Dialog.js"></script>
<script src="/JS/Controls/ZL_Array.js"></script>
<script src="/JS/ICMS/ZL_Common.js"></script>
<script src="/JS/Plugs/angular.min.js"></script>
<script src="/JS/Modal/APIResult.js"></script>
<script src="/JS/Modal/EventBase.js"></script>
<script src="/design/js/sea.js"></script>
    
<script>
var tools=null;
var lgDiag=new ZL_Dialog({backdrop:true,width:"wid1200"});lgDiag.maxbtn=false;
var ZLDE=null;
var sitecfg = <%=sitecfg%>;
var page = {};
var editor={};
$(function () {
    $(".cmd_addpage:first").click(function(){CloseDiag();ShowComDiag("../mbh5/AddScence.aspx?device=pc", "新建场景");});
    $(".cmd_addcomp").click(function () {CloseDiag();comdiag.reload=true;  ShowComDiag("/design/diag/addcomp.aspx?stype=scence", "添加组件"); });
    $(".cmd_addbk").click(function () {diy_bk.diag(); });
    $(".cmd_music:first").click(function () {CloseDiag(); ShowComDiag("/design/diag/SelMusic.aspx", "添加音乐"); });
    $(".cmd_page:first").click(function(){CloseDiag();ShowDiag_L("/design/diag/se_page.aspx?id=<%:Mid%>", "场景配置");});
    $(".cmd_conf:first").click(function(){CloseDiag();ShowDiag_L("/design/diag/se_conf.aspx?id=<%:Mid%>", "场景设置");});
    //----------------------------------
    $(".candrag").draggable({});
    seajs.use(["/design/js/se_comp/page"], function (instance) {
        page = instance;
        ZLDE=seajs.require("base");
        page.guid = "<%:pageMod.guid%>";
        page.pageData=<%=pageMod.page%>
        page.compData = <%=pageMod.comp%>;
        page.comp_global=<%=comp_global%>
        page.extendData = <%=extendData%>;
        //---------------------------------修改弹窗
        $("#design_ifr").load(function(){
            scence.init();//先初始化场景再开始加载元素
            page.instance = $(this).contents();
            page.init();
            for (var i = 0; i < page.compList.length; i++) {
                IfrHelper.addDomToIfr(page.compList[i]); 
            }
        });
        $("#design_ifr").attr("src","editor.aspx?id="+ page.guid); 
        page.diag = $('#diagBody').dialog({
            autoOpen: false,
            width: 500,
            position:"right"
            //buttons: { "确定": function () { $(this).dialog("close"); }, "关闭": function () { $(this).dialog("close"); } }
        });
    });//seajs end;
    diy_res.init();
    //-----事件监测
    eventBase.add("editor_update",function(param){IfrHelper.getIfrObj().editor.scope.$digest();});
    //-----绑定弹出
    $("#preview_btn").popover({animation: true,html:true,trigger:"hover",placement: 'left',
        content:function(){return '<div style="width:170px;padding:10px;"><img src="/common/common.ashx?url=<%=ZoomLa.Components.SiteConfig.SiteInfo.SiteUrl+"/design/h5/preview.aspx?id="+pageMod.guid%>" style="width:150px;height:150px;" /><div class="text-center" style="margin-top:5px;">请先保存再扫描预览</div></div>';}});
    $(".pop_title").popover({animation:true,html:true,trigger:"hover",placement:"right",content:function(){ return "<div>"+$(this).data("pop")+"</div>";}});

    //$(".needpop").popover({animation:true,html:true,trigger:"hover",placement:"right",title:"标题",content:function(){return "Html内容";}});
    document.onkeydown=function(e){if (e.keyCode == 8) { return false; }}
})
 //----------------------------
var scence={
    list:[],//场景的数据,order与id均从1开始
    conf:{},//存储场景的总配置,场景的分配置另存(图标,切换方式)
    $body:$("#page_ul"),
    stlp:'<li data-id="@id" id="li_@id" onclick="scence.switch(@id);"><span class="page_num"><span>@_index</span></span><span class="page_handler"><i class="fa fa-arrows-alt"></i></span><input class="page_name" type="text" value="@title" onchange="scence.change(@id,this);"></li>',
    setlp:'<section class="swiper-slide" id="section_@id"><div id="mainBody@id" class="compbody"></div></section>',
    editor:null,//iframe中的swiper-container
    myani:null,//iframe中的 myani
    bodyid:"",//当前激活的bodyid
    pageid:"",//当前的页面id
};
scence.add=function(){
    var ref=this;
    var model=ref.new();
    var $se=JsonHelper.FillItem(ref.setlp,model);
    //ref.editor.append($se);
    ref.myani.swiper.appendSlide($se);
    ref.list.push(model);
    ref.render();
}
//删除当前页
scence.del=function(){
    var ref=this;
    //如果只有一个页面,则不可移除
    if(ref.$body.find("li").length<2){alert("起始页不可移除");return false;}
    if(!confirm("确定要移除该页吗?")){return false;}
    var id=ref.pageid;
    ref.comp_clear(id);
    //移除指定的场景
    ref.editor.find("#section_"+id).remove();
    //移除页面,并跳至首页
    ref.list.RemoveByID(id,"id");
    ref.$body.find("#li_"+id).remove();
    ref.reorder();
    ref.switch(ref.list[0].id)
}
//清除单个页面的所有组件
scence.comp_clear=function(pageid){
    var bodyid="mainBody"+pageid;
    //移除组件
    for (var i = 0; i < page.compList.length; i++) {
        var comp=page.compList[i];
        if(comp.config.bodyid==bodyid){comp.RemoveSelf(page.compList);}
    }
}
//切换section
scence.switch=function(id){
    var ref=this;
    var curMod=ref.list.GetByID(ref.pageid);
    var tarMod=null;//需要跳转至的页面
    switch(id)
    {
        case "pre":
            if(curMod.order<=1){return;}
            tarMod=ref.list.GetByID((curMod.order-1),"order");
            break;
        case "next":
            //var order=0;
            //for (var i = 0; i < ref.list.length; i++) {
            //    if(ref.list.order>curMod.order&&){}
            //}
            if(curMod.order>=ref.list.length){return;}
            tarMod=ref.list.GetByID((curMod.order+1),"order");
            break;
        default://按id切换
            tarMod=ref.list.GetByID(id);
            break;
    }
    if(!tarMod){console.log(id+",未定位到",ref.list);return;}
    id=tarMod.id;
    ref.$body.find("li").removeClass("active");
    ref.$body.find("#li_"+id).addClass("active");
    ref.bodyid="mainBody"+id;
    ref.pageid=id;
    IfrHelper.getIfrObj().tools.clear();
    //------场景切换到指定页面
    if(ref.myani){
        //由0开始,跳往指定页
        ref.myani.swiper.slideTo(tarMod.swipe_index,1000,true);
    }
}
scence.setres=function(){
    CloseDiag(); 
    var url="/design/diag/se_setres.aspx?pageid="+scence.pageid; 
    ShowComDiag(url, "形状库"); 
}
//仅重绘右边栏右码,不涉及section,order小的置前
scence.render=function(){
    var ref=this;
    for (var i = 0; i < ref.list.length; i++) {
        var item=ref.list[i];
    }
    ref.list.sort(function (a, b) {return a.order > b.order ? 1 : -1; });//1表示前进一位
    var $items=JsonHelper.FillItem(ref.stlp,ref.list,null);
    ref.$body.html("").append($items);
    ref.$body.find("#li_"+ref.pageid).addClass("active");
}
//在iframe加载完成后--组件加载前调用,用于加载section,并初始化动画JS
scence.init=function(){
    var ref= page.scence=this;
    ref.list=<%=pageMod.scence%>;
    ref.conf=page.pageData.scence_conf?JSON.parse(page.pageData.scence_conf):{effect:"slide",direction:"vertical",autoplay:0,loop:false};
    ref.editor=IfrHelper.find("#editorBody");
    if(ref.list.length<1){ref.list.push(ref.new());}
    ref.render();
    //----------添加区域
    for (var i = 0; i < ref.list.length; i++) {
        ref.list[i].swipe_index=i;
    }
    var $se=JsonHelper.FillItem(ref.setlp,ref.list,null);
    ref.editor.append($se);
    ref.switch(ref.list[0].id);
    //----------绑定排序事件(修改右边栏页码,section排序)
    $("#page_ul").sortable({
        placeholder: "highlight",
        handle: ".page_handler",
        cancel: ".ui-state-disabled",
        update: function (e,v) {
            ref.reorder();
        }
    }).disableSelection();
    //调用绑定动画效果
    ref.myani=IfrHelper.getIfrObj().myani;
    setTimeout(function(){ref.myani.init();},200);//在元素展示之后再附加动画效果
}
//修改标题
scence.change=function(id,obj)
{
    var ref=this;
    var model=ref.list.GetByID(id);
    model.title=$(obj).val();
}
//将当前页替换为模板页
scence.loadtlp=function(tlpid)
{
    var ref=this;
    if(!confirm("确定要加载该模板吗,现有的数据将会丢失")){return false;}
    waitDiag.ShowMask("正在加载模板");
    $.post("/design/scence.ashx?action=loadtlp",{"tlpid":tlpid},function(data){
        var model=APIResult.getModel(data);
        if(APIResult.isok(model)){
            //清空当前页的数据,然后将组件置入
            //删除页面,将页面数据保留,然后重生成一个新的页面
            scence.comp_clear(ref.pageid);
            //载入组件与设置背景
            var _page=JSON.parse(model.result.page);
            _page.bk=JSON.parse(_page.bk);
            var _comp=JSON.parse(model.result.comp);
            for (var i = 0; i <_comp.length ; i++) {
                _comp[i]=JSON.parse(_comp[i]);
                //兼容,只保留第一频的组件
                if(_comp[i].config.bodyid.indexOf("ody1")<0){continue;}
                AddComponent(_comp[i]); 
            }
            _page.bk[0].pageid=ref.pageid;
            page.bk.set(_page.bk[0]);
        }
        else{console.log("loadtlp",model.retmsg);}
        CloseDiag();
    })
}
//----------Tools
scence.new=function(){
    var ref=this;
    var model={id:1,title:"第1页",order:($("#page_ul li").length+1),swipe_index:$("#page_ul li").length};
    var max=ref.list.GetByMax("id");
    if(max!=null){
        model.id=max.id+1;
        model.title="第"+model.order+"页";
    }
    return model;
}
//预览动画
scence.preview=function(){
    //去除掉当前section中的动画效果,然后重新再附加上去
    var ref=this;
    var $se=ref.editor.find("#section_"+ref.pageid);
    //重除css风格后再一段时间再加上
    $se.find(".ani").each(function(){
        scence.play(this);
    });
}
//预览单个元素动画效果
scence.play=function(dom){
    var $dom=$(dom);
    var css=$dom.attr("swiper-animate-effect");
    $dom.removeClass("animated").removeClass(css);
    setTimeout(function(){ $dom.addClass("animated").addClass(css);},50);
}
//修改当前页面的元素
scence.domonpage=function(){
    comdiag.maxbtn=false;
    comdiag.reload = true;
    comdiag.ShowModal("domonpage.aspx","组件列表");
}
//根据当前li的顺序,重新生成orderid,删除|添加|拖动后调用
scence.reorder=function(){
    var $lis=$("#page_ul li");
    for (var i = 0; i < $lis.length; i++) {
        var id=$($lis[i]).data("id");
        scence.list.GetByID(id).order=(i+1);
    }
}
//----------------------------提供资源的筛选功能
var diy_res={};
diy_res.init=function(){
    var ref=this;
    ref.usearr = "招聘,简历,表格,照片,节日,商品,介绍,图文,名片".split(',');
    ref.funarr = "背景,图集,表单,互动,特效,事件".split(',');
    ref.stylearr = "纯色,黑白,绚丽,怀旧,现代,小清新,扁平化,中国风,欧美风".split(',');
    var $usedp=$("#use_dp"),$fundp=$("#fun_dp"),$styledp=$("#style_dp");
    //初始化下拉选单
    for (var i = 0; i < ref.usearr.length; i++)   {$usedp.append('<option value="'+ref.usearr[i]+'">'+ref.usearr[i]+'</option>');}
    for (var i = 0; i < ref.funarr.length; i++)   {$fundp.append('<option value="'+ref.funarr[i]+'">'+ref.funarr[i]+'</option>');}
    for (var i = 0; i < ref.stylearr.length; i++) {$styledp.append('<option value="'+ref.stylearr[i]+'">'+ref.stylearr[i]+'</option>');}
}
//背景方面操作
var diy_bk={$body:$("#diy_bk_body")};
//设置背景,如无的话,即显示弹窗
diy_bk.set=function(){
    if(page.bk.has(scence.pageid)){
        var data = page.bk.data.GetByID(scence.pageid, "pageid");
        switch(data.type){
            case "image":
                $(".cut").show();
                break;
            case "color":
                $(".cut").hide();
                break;
        }
        diy_bk.$body.show();
    }
    else{diy_bk.diag();}
}
diy_bk.setbk=function(url){
    var data = { type: "image", url: url, post: "", pageid: scence.pageid };
    page.bk.set(data);
    CloseDiag(); 
    diy_bk.close();
}
diy_bk.diag=function(){CloseDiag(); var url="/design/diag/se_setbk.aspx?pageid="+scence.pageid; ShowComDiag(url, "设置背景"); diy_bk.close();}
diy_bk.del=function(){
    var data = { type: "clear", url: "", post: "", pageid: scence.pageid };
    page.bk.clear(data);
    diy_bk.close();
}
diy_bk.cut=function(){
    var url=page.bk.geturl(scence.pageid);
    if(!url){alert("未指定背景图片");}
    else{ShowComDiag("/plugins/cropper/se_bk.aspx?url="+url, "背景裁剪");}
}
diy_bk.close=function(){diy_bk.$body.hide();}
//----------------------------
var waitDiag = new ZL_Dialog();
var loginDG=new ZL_Dialog();
waitDiag.closebtn = false; waitDiag.backdrop = true;
//附带具体的信息
function AddComponent(model) {
    CloseDiag();
    model.mode="design";
    //1,根据类型获取到对应的组件对象,并将对象初始化
    var compObj = page.GetCompObj(model);
    compObj.config.bodyid=scence.bodyid;
    //2,将其附加入目标页面,由页面html引擎解析,并将其初始化展示
    IfrHelper.addDomToIfr(compObj);
    page.compList.push(compObj);
}
function CopyComp(comp)
{
    var model=ZLDE.utils.clone(comp,model);
    var compObj = page.GetCompObj({ "dataMod": model.dataMod, "config": model.config });
    IfrHelper.addDomToIfr(compObj);
    page.compList.push(compObj);
}
function PreSave(callback) {
    waitDiag.ShowMask("正在保存中");
    page.PreSave(function (data) {
        waitDiag.CloseModal();
        page.guid = data;
        if(callback){callback(data);}
    });
}
function CloseDiag()
{
    comdiag.CloseModal();
    lgDiag.CloseModal();
    waitDiag.CloseModal();
    try{ IfrHelper.getIfrObj().CloseDiag();}catch(ex){console.log(ex.message);}
}
function ShowDiag_L(url,title)
{
    CloseDiag();
    lgDiag.reload=true;
    lgDiag.ShowModal(url,title);
}
//显示修改元素界面或其他界面
function ShowEditDiag(url,diagParam)
{
    var diag=page.diag;
    if (!diagParam || diagParam == "") { diagParam = { autoOpen: true, width: 500, height: 500 }; }
    console.log(diagParam);
    $("#diagIfr").height(1);//修复长度过长Bug
    $("#diagIfr").attr("src", url);
    //$("#diagIfr").height(diagParam.height + "px");
    $("#diagIfr").unbind();
    $("#diagIfr").load(function () {
        $("#diagIfr").height($("#diagIfr").contents().height());
        diag.dialog(diagParam);
    });
    diag.dialog(diagParam);
}
//----------------------------
function EventBind(){IfrHelper.getIfrObj().EventBind();}
//----------------------------Tools
var IfrHelper = {
    config: { id: "design_ifr" },
    addDomToIfr: function (compObj) {
        var _ref = this;
        compObj.mode="design";
        var obj = _ref.getIfrObj();
        obj.editor.scope.addDom(compObj);
        setTimeout(function () {compObj.UpdateRootPanel();obj.EventBind();}, 500);
    },
    getIfrObj: function () {
        //返回的这个对象,用于直接调用ifr中的方法
        var _ref = this;
        return document.getElementById(_ref.config.id).contentWindow;
    },
    find: function (filter) {
        //根据filter,jquery筛选返回,必须加载完后再执行
        var _ref = this;
        return $("#" + _ref.config.id).contents().find(filter);
    }
};
</script>
</asp:Content>