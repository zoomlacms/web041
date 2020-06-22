<%@ page language="C#" autoeventwireup="true" inherits="Design_h5_mbview, App_Web_zu3d10dh" enableviewstate="false" masterpagefile="~/Common/Master/Empty.master" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
<asp:Literal runat="server" ID="Meta_L" EnableViewState="false"></asp:Literal>
<link rel="stylesheet" href="/design/res/css/comp.css" />
<link rel="stylesheet" href="/design/res/css/preview.css"/>
<link rel="stylesheet" href="/design/h5/css/swiper.min.css">
<link rel="stylesheet" href="/design/h5/css/animate.min.css">
<style type="text/css">
body{background-image:url(/design/res/img/bg_pcview.jpg);background-size:100% 100%;}
</style>
<script src="/design/h5/js/swiper.min.js"></script>
<script src="/design/h5/js/swiper.animate.min.js"></script>
<script>
var phoneWidth = parseInt(window.screen.width),phoneHeight = parseInt(window.screen.height);
var phoneScale = phoneWidth / 640;
document.write('<meta name="viewport" content="width=640, minimum-scale = ' + phoneScale + ', maximum-scale = ' + phoneScale + '">');
</script>
<title><asp:Literal runat="server" ID="Title_L"></asp:Literal></title>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
<div style="display:none;">
    <asp:Image ID="Wx_Img" runat="server" />
</div>
<div class="pcview" ng-app="app" ng-controller="appCtrl">
    <div class="pc_mobile" style="display:inline-flexbox;">
        <div class="pc_cmsfont"><img src="<%=Call.LogoUrl %>" alt="<%:Call.SiteName %>" /></div>
        <div class="swiper-container scence" style="transform:scale(0.5);position:absolute;top:-89px;left:-127px;">
            <div id="editorBody" class="swiper-wrapper">
                <section ng-repeat="scence in scence.list" class="swiper-slide" id="section_{{scence.id}}">
                    <div id="mainBody{{scence.id}}" class="compbody"></div>
                </section>
            </div>
            <img src="/design/h5/images/arrow.png" id="array" class="resize">
            <div class="swiper-pagination"></div>
        </div>
    </div>
    <div class="ctrl_panel">
        <div id="pre_page" class="cbtn pre_btn" ng-click="pre();">上一页</div>
        <div id="next_page" class="cbtn" ng-click="next();">下一页</div>
    </div>
    <div class="code_div">
        <div class="title_div">扫描并分享场景：</div>
        <div class="img_div">
            <img src="/common/common.ashx?url=<%=ZoomLa.Components.SiteConfig.SiteInfo.SiteUrl+"/design/h5/preview.aspx?id="+pageMod.guid%>" />
        </div>
       <div class="bdsharebuttonbox">
	   <a title="分享到微信" class="bds_weixin" href="#" data-cmd="weixin"></a>
	   <a title="分享到QQ空间" class="bds_qzone" href="#" data-cmd="qzone"></a>
	   <a title="分享到新浪微博" class="bds_tsina" href="#" data-cmd="tsina"></a>
	   <a title="分享到人人网" class="bds_renren" href="#" data-cmd="renren"></a>
	   <a class="bds_more" href="#" data-cmd="more"></a>
	   </div>
        <script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdUrl":document.URL,"bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"32"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>  
        <div class="view_div">这么漂亮的场景&nbsp;→<span><a target="_blank" href="http://v.z01.com/">我也来制作</a></span></div>
    </div>
</div>
<iframe style="display:none;" src="/CallCounter.aspx?ztype=h5&id=<%:Mid %>&title=<%:pageMod.Title %>"></iframe>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Script">
<script src="/Design/JS/sea.js"></script>
<script src="/JS/Modal/EventBase.js"></script>
<script src="/JS/Plugs/angular.min.js"></script>
<script>
    var scope;
    var myani = { swiper: null,isinit:false };
    myani.init = function (conf) {
        var opts={
            direction: 'vertical',
            effect:"slide",
            //autoplay:0,
            loop: true,
            speed: 1000,
            mousewheelControl: true,
            pagination: '.swiper-pagination',
            onInit: function (swiper) { 
                //加入
                var adhtml = "<a href=\"http://v.z01.com/h5/listpage.shtml\" class=\"ani\" swiper-animate-effect=\"lightSpeedIn\" swiper-animate-duration=\"1s\" swiper-animate-delay=\"0s\" style=\"position:absolute;bottom:200px;left:70px; display:block;width:500px;height:100px;font-size:30px;line-height:100px;padding-left:10px;padding-right:10px; background:rgba(0, 0, 0, 0.60);border-radius:20px;text-align:center; margin:0 auto;text-decoration:none;z-index:1000;\">"
                        + "<span style=\"color:#fff;\">免费创建一个场景</span>"
                        + "<i class=\"fa fa-hand-o-right\" style=\"margin-left:10px;margin-right:10px;color:#fff;\"></i>"
                        + "<span style=\"color:#f0ad4e;\">动力场景</span>"
                        + "</a>";
                $(".swiper-slide:not(.swiper-slide-duplicate):last").append(adhtml);
                swiperAnimateCache(swiper);
                setTimeout(function(){
                    $(".swiper-slide-duplicate:first").html($(".swiper-slide:not(.swiper-slide-duplicate):last").html());
                    $(".swiper-slide-duplicate:last").html( $(".swiper-slide:not(.swiper-slide-duplicate):first").html());
                    swiperAnimate(swiper);myani.isinit=true;
                },1000);
            },
            onTransitionStart:function(swiper){},
            onSlideChangeEnd: function (swiper) { if(myani.isinit){swiperAnimate(swiper);}},
            onTransitionEnd: function (swiper) { if(myani.isinit){swiperAnimate(swiper);}}
        };
        if(conf)
        {
            if(typeof(conf)=="string"){conf=JSON.parse(conf);}
            opts.direction=conf.direction;
            opts.effect=conf.effect;
            opts.autoplay=conf.autoplay;
            //opts.loop=conf.loop;
            //if(opts.loop)
            //{
            //    $(".swiper-slide-duplicate").html("");
            //    opts.onReachBeginning=function(swiper){swiper.slideTo(scope.scence.list.length,0,false);};
            //    opts.onReachEnd=function(swiper){swiper.slideTo(1,0,false);}
            //}
        }
        myani.swiper = new Swiper('.swiper-container',opts);
    }
    var app = angular.module("app", [], function ($compileProvider) { })
    .controller("appCtrl", function ($scope, $compile) {
        scope = $scope;
        $scope.list = {};
        $scope.addDom = function (compObj) {
            if ($scope.list[compObj.id]) {  return; }
            $scope.list[compObj.id] = compObj;
            var html = $(compObj.AnalyToHtml());
            html.attr("style",compObj.config.style);
            compObj.SetInstance($compile(angular.element(html))($scope),document);
            angular.element(document.getElementById(compObj.config.bodyid)).append(compObj.instance);
        }
        $scope.pre = function(){if(myani){myani.swiper.slidePrev(); }}
        $scope.next = function(){ if(myani){ myani.swiper.slideNext();}}
    })
    .filter("html", ["$sce", function ($sce) { return function (text) { return $sce.trustAsHtml(text); }}]);
    seajs.use(["/design/js/se_comp/page"], function (page) {
        page.guid = "<%:pageMod.guid%>";
        page.pageData =<%=pageMod.page%>;
        page.compData = <%=pageMod.comp%>;
        page.comp_global=<%=comp_global%>
        page.extendData=<%=extendData%>;
        page.scence.list=<%=pageMod.scence%>;
        scope.scence=page.scence;scope.$digest();
        page.instance = $(document);
        page.init();
        for (var i = 0; i < page.compList.length; i++) {
            page.compList[i].mode="view";
            scope.addDom(page.compList[i]);
        }
        myani.init(page.pageData.scence_conf);
        $("#music_btn").click();
    });
</script>
</asp:Content>