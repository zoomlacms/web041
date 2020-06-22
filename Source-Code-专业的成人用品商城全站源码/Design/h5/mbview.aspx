<%@ page language="C#" autoeventwireup="true" inherits="Design_h5_mbview, App_Web_nakjhsl1" masterpagefile="~/Common/Master/Empty.master" enableviewstate="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
<asp:Literal runat="server" ID="Meta_L" EnableViewState="false"></asp:Literal>
<script>
    var phoneWidth = parseInt(window.screen.width),phoneHeight = parseInt(window.screen.height);
    var phoneScale = phoneWidth / 640;
    var ua = navigator.userAgent;
    document.write('<meta name="viewport" content="width=640, minimum-scale = ' + phoneScale + ', maximum-scale = ' + phoneScale + '">');
</script>
<link rel="stylesheet" href="/design/res/css/comp.css" />
<link rel="stylesheet" href="/design/res/css/preview.css" />
<link rel="stylesheet" href="/design/h5/css/swiper.min.css">
<link rel="stylesheet" href="/design/h5/css/animate.min.css">
<script src="/design/h5/js/swiper.min.js"></script>
<script src="/design/h5/js/swiper.animate.min.js"></script>
<title><asp:Literal runat="server" ID="Title_L"></asp:Literal></title>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
<div style="display:none;">
    <asp:Image ID="Wx_Img" runat="server" />
</div>
<div hidden>这么好看的模板,不建一个吗</div>
<aside id="loading">
    <div id="fountainTextG_body">
        <div id="fountainTextG_1" class="fountainTextG">L</div>
        <div id="fountainTextG_2" class="fountainTextG">o</div>
        <div id="fountainTextG_3" class="fountainTextG">a</div>
        <div id="fountainTextG_4" class="fountainTextG">d</div>
        <div id="fountainTextG_5" class="fountainTextG">i</div>
        <div id="fountainTextG_6" class="fountainTextG">n</div>
        <div id="fountainTextG_7" class="fountainTextG">g</div>
        <div id="fountainTextG_8" class="fountainTextG">.</div>
        <div id="fountainTextG_9" class="fountainTextG">.</div>
        <div id="fountainTextG_10" class="fountainTextG">.</div>
    </div>
    <div style="position:fixed;bottom:10px;width:100%;text-align:center;font-size:30px;color:#fff;">欢迎使用逐浪场景</div>
</aside>
<div ng-app="app" class="swiper-container scence">
    <div id="editorBody" class="swiper-wrapper" ng-controller="appCtrl">
        <section ng-repeat="se in scence.list" class="swiper-slide" id="section_{{se.id}}">
            <div id="mainBody{{se.id}}" class="compbody"></div>
        </section>
    </div>
    <img src="/design/h5/images/arrow.png" id="array" class="resize">
    <div class="swiper-pagination"></div>
</div>
<iframe style="display:none;" src="/CallCounter.aspx?ztype=mbh5&id=<%:Mid %>&title=<%:pageMod.Title %>"></iframe>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Script">
<script src="/Design/JS/sea.js"></script>
<script src="/JS/Modal/EventBase.js"></script>
<script src="/JS/Plugs/angular.min.js"></script>
<script>
    var sitecfg=<%=sitecfg%>;
    var scope;
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
    })
    .filter("html", ["$sce", function ($sce) {
        return function (text) { return $sce.trustAsHtml(text); }
    }]);
    seajs.use(["/design/js/se_comp/page"], function (page) {
        page.guid = "<%:pageMod.guid%>";
    page.pageData =<%=pageMod.page%>;
    page.compData = <%=pageMod.comp%>;
    page.comp_global=<%=comp_global%>
    page.extendData=<%=extendData%>;
    page.scence.list=<%=pageMod.scence%>;
    scope.scence=page.scence;
    scope.$digest();
    page.instance = $(document);
    page.init();
    //$("#loading").css("background", $("section:first").css("background"));//为其指定第一张图的背景
    for (var i = 0; i < page.compList.length; i++) {
        page.compList[i].mode="view";
        scope.addDom(page.compList[i]);
    }
    var myani = { swiper: null,isinit:false };
    myani.init = function (conf) {
        var opts={
            direction: 'vertical',
            effect:"slide",
            autoplay:0,
            loop: true,
            speed: 1000,
            mousewheelControl: true,
            pagination: '.swiper-pagination',
            onInit: function (swiper) { 
                //加入
                var adhtml = "<a href=\"/Class_3/NodePage.aspx\" target=\"_blank\" class=\"ani\" swiper-animate-effect=\"lightSpeedIn\" swiper-animate-duration=\"1s\" swiper-animate-delay=\"0s\" style=\"position:absolute;bottom:150px;left:70px; display:block;width:500px;height:100px;font-size:30px;line-height:100px;padding-left:10px;padding-right:10px; background:rgba(0, 0, 0, 0.60);border-radius:20px;text-align:center; margin:0 auto;text-decoration:none;z-index:1000;\">"
                        + "<span style=\"color:#fff;\">免费创建一个场景</span>"
                        + "<i class=\"fa fa-hand-o-right\" style=\"margin-left:10px;margin-right:10px;color:#fff;\"></i>"
                        + "<span style=\"color:#f0ad4e;\">动力场景</span>"
                        + "</a>";
                $(".swiper-slide:not(.swiper-slide-duplicate):last").append(adhtml);
                swiperAnimateCache(swiper);
                //与angular不兼容,需要特殊处理
                setTimeout(function(){
                    $(".swiper-slide-duplicate:first").html($(".swiper-slide:not(.swiper-slide-duplicate):last").html());
                    $(".swiper-slide-duplicate:last").html( $(".swiper-slide:not(.swiper-slide-duplicate):first").html());
                    setTimeout(function(){ $("#loading").remove();swiperAnimate(swiper);myani.isinit=true;},500);
                },1000);
            },
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
            //    opts.onReachBeginning=function(swiper){swiper.slideTo(1,0,false);};
            //    opts.onReachEnd=function(swiper){swiper.slideTo(1,0,false);}
            //}
        }
        myani.swiper = new Swiper('.swiper-container',opts);
    }
    myani.init(page.pageData.scence_conf);
    });
</script>
</asp:Content>
