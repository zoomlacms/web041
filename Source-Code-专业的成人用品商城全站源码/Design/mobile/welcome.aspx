<%@ page language="C#" autoeventwireup="true" inherits="Design_mobile_welcome, App_Web_gnne5m14" masterpagefile="~/Common/Master/Empty.master" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
<title>开始-<%:Call.SiteName %>免费手机建站|傻瓜设计和H5页面_逐浪CMS旗下主力平台</title>
<link href="/design/h5/css/swiper.min.css" rel="stylesheet" />
<link href="/Template/PowerZ/style/global.css?Version=20150911" rel="stylesheet"/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
<div class="relative hidden-xs">
    <div class="navbar navbar-default navbar-fixed-top" role="navigation" id="home_scolls">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">智能切换导航</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/">
                    <img alt="动力逐浪" src="/Template/PowerZ/style/Images/logo.svg" /></a>
                <h1><a href="/">动力版</a><span><a href="http://www.z01.com/" target="_blank"><i class="fa fa-rotate-right fa-rotate-180"></i> 回逐浪官网首页</a></span></h1>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="/">首页</a></li>
                    <li><a href="/jz">免费建站</a></li>
                    <li><a href="/Class_2/Default.aspx">模板中心</a></li>
                    <li><a href="/h5">H5创作</a></li>
                    <li><a href="/webfont">网页字体</a></li>
                    <li><a href="http://ad.z01.com">广告源码</a></li>
                </ul>
                <a href="http://doc.z01.com/help/" target="_blank" class="topIco"><i class="fa  fa-question-circle"></i></a>
                <ul class="nav navbar-nav ">
                    <li class="nav_user"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>登录 <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="/User/" target="_blank">用户登录</a></li>
                            <li><a href="/User/Register.aspx" target="_blank">用户注册</a></li>
                            <li><a href="/User/Info/UserInfo.aspx" target="_blank">注册信息</a></li>
                            <li><a href="javascript:;" onclick="LogoutFun();">安全退出</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- 导航到此结束 -->

<div class="swiper-container">
    <div class="swiper-wrapper">
        <div class="swiper-slide" style="background-image: url(/UploadFiles/Images/wxsite01.jpg);">
            <a href="/wxpromo.aspx?r=/design/mbh5/addscence.aspx"></a>
        </div>
        <div class="swiper-slide" style="background-image: url(/UploadFiles/Images/wxsite02.jpg);">
            <a href="/Design/h5/preview.aspx?TlpID=77"></a>
        </div>
        <div class="swiper-slide" style="background-image: url(/UploadFiles/Images/wxsite03.jpg);">
            <a href="/Class_13/Default.aspx"></a>
        </div>
    </div>
    <!-- 如果需要分页器 -->
    <div class="swiper-pagination swiper-pagination-white"></div>
</div>
<div class="container WXsite_list">
    <p>选取您要建立的微站样式:</p>
    <ul>
        <a href="/design/mobile/newsite.aspx?tlpid=1">
            <li class="col-lg-4 col-md-4 col-sm-4 col-xs-4 WXsite_list_li1">
                <i class="fa fa-modx"></i>
                经典微站
            </li>
        </a>
        <a href="/design/mobile/newsite.aspx?tlpid=2">
            <li class="col-lg-4 col-md-4 col-sm-4 col-xs-4 WXsite_list_li2">
                <i class="fa fa-magic"></i>
                简洁风格
            </li>
        </a>
        <a href="/design/mobile/newsite.aspx?tlpid=3">
            <li class="col-lg-4 col-md-4 col-sm-4 col-xs-4 WXsite_list_li3">
                <i class="fa fa-gift"></i>
                微店样式
            </li>
        </a>
        <a href="/design/mobile/newsite.aspx?tlpid=4">
            <li class="col-lg-4 col-md-4 col-sm-4 col-xs-4 WXsite_list_li4">
                <i class="fa fa-picture-o"></i>
                相册模式
            </li>
        </a>
        <a href="/design/mobile/newsite.aspx?tlpid=5">
            <li class="col-lg-4 col-md-4 col-sm-4 col-xs-4 WXsite_list_li5">
                <i class="fa fa-anchor"></i>
                文章资讯
            </li>
        </a>
        <a href="/design/mobile/newsite.aspx?tlpid=6">
            <li class="col-lg-4 col-md-4 col-sm-4 col-xs-4 WXsite_list_li6">
                <i class="fa fa-soccer-ball-o"></i>
                人物展示
            </li>
        </a>
        <a href="/design/mobile/newsite.aspx?tlpid=7">
            <li class="col-lg-4 col-md-4 col-sm-4 col-xs-4 WXsite_list_li7">
                <i class="fa fa-send "></i>
                图标宫格
            </li>
        </a>
        <a href="/design/mobile/newsite.aspx?tlpid=8">
            <li class="col-lg-4 col-md-4 col-sm-4 col-xs-4 WXsite_list_li8">
                <i class="fa fa-leaf"></i>
                图文时尚
            </li>
        </a>
        <a href="/Class_370/Default.aspx">
            <li class="col-lg-4 col-md-4 col-sm-4 col-xs-4 WXsite_list_li9">
                <i class="fa fa-plus-circle"></i>
                更多风格
            </li>
        </a>

    </ul>
</div>
<div class="muser_bottom">
    <ul>
        <li onclick="showmenu(this);"><a href="javascript:;"><i class="fa fa-gavel"></i>建站</a>
<%--            <ul class="foot_cmenu">
                <li>设计微站</li>
                <li>管理微站</li>
                <li>H5创作</li>
                <li>会员商店</li>
            </ul>--%>
        </li>
        <li><a href="/wxpromo.aspx?r=/design/mbh5/addscence.aspx"><i class="fa fa-pencil"></i>场景</a></li>
        <li><a href="/Class_13/Default.aspx"><i class="fa fa-briefcase"></i>套餐</a></li>
        <li onclick="showmenu(this);"><a href="javascript:;"><i class="fa fa-user"></i>我的</a>
<%--            <ul class="foot_cmenu">
                <li onclick="location='/design/user/mbsite/';">微站</li>
                <li>H5场景</li>
                <li>账号</li>
                <li>CMS</li>
            </ul>--%>
        </li>
        <div class="clearfix"></div>
    </ul>
</div>
<%--<style type="text/css">
    .muser_bottom li {position:relative;}
    .foot_cmenu {position:absolute;top:-150px;width:100%; display:none;}
    .foot_cmenu li {text-align:center;background-color:#fff;color:#000;display:block;padding:8px;float:none;width:auto;border:none;border-bottom:1px solid #ccc;margin:0; }
    .foot_cmenu li a {display:block;height:100%;}
</style>
<script>
    function showmenu(_this) {
        $(".foot_cmenu").hide();
        $(_this).find(".foot_cmenu").show();
    }
</script>--%>
<div class="foot hidden-xs">
    <div class="container Home_server">
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                <h3>+什么是CMS</h3>
                <p>
                    CMS(Content Management System)是网站内容管理系统简称,
互联网上每个网站后台都是专业内容管理系统支撑-无论多大网站都不离开CMS的驱动。
Zoomla!逐浪CMS作为国内高端CMS与WEB应用典范,首创第3代CMS理念,专注底层核心技术研发,以云技术、创新精神构建行业新成就！
                </p>

                <ul class="Home_server_li">
                    <li><a href="#">CMS起源</a></li>
                    <li><a href="http://www.z01.com/Class_91/Default.aspx" target="_blank">CMS行业动态</a></li>
                    <li><a href="http://www.z01.com/try/" target="_blank">CMS选型</a></li>
                    <li><a href="">CMS厂商榜单</a></li>
                    <li><a href="http://gongyi.z01.com" target="_blank">东方红慈善基金</a></li>
                    <li><a href="http://www.z01.com/demo/" target="_blank">产品演示</a></li>
                    <li><a href="http://www.z01.com/case/" target="_blank">案例中心</a></li>
                    <li><a href="http://www.z01.com/corp/about/151.shtml" target="_blank">购买指南</a></li>
                    <li><a href="http://www.z01.com/article/join/" target="_blank">代理加盟</a></li>
                    <li><a href="http://www.z01.com/corp/job/" target="_blank">求贤若渴</a></li>
                    <li><a href="http://www.z01.com/corp/about/95.shtml">版权申明</a></li>
                    <li><a href="http://www.z01.com/about.shtml">About Zoomla!</a></li>
                </ul>
            </div>
            <div class="col-lg-2 col-md-6 col-sm-6 col-xs-12 Home_server_top3">
                <ul class="Home_server_li">
                    <h4>产品导航</h4>
                    <li><a href="http://www.z01.com/pub/" target="_blank">下载逐浪</a></li>
                    <li><a href="http://www.z01.com/pub/listpage.shtml" target="_blank">产品特色</a></li>
                    <li><a href="http://www.z01.com/help/Install/692.shtml" target="_blank">快速安装</a></li>
                    <li><a href="http://www.z01.com/mb/" target="_blank">模板中心</a></li>
                    <li><a href="http://www.z01.com/help/Install/693.shtml" target="_blank">程序迁移</a></li>
                    <li><a href="http://www.z01.com/blog/product/626.shtml" target="_blank">门户优化</a></li>
                    <li><a href="http://www.z01.com/product/pub/380.shtml" target="_blank">商城建设</a></li>
                    <li><a href="http://www.z01.com/yun/" target="_blank">云主机</a></li>
                    <li><a href="http://www.z01.com/pub/1987.shtml" target="_blank">数据中心与高端计算</a></li>
                    <li><a href="http://www.z01.com/Article/server/470.shtml" target="_blank">订制中心</a></li>
                    <li><a href="http://help.z01.com" target="_blank">用户手册</a></li>
                    <li><a href="http://help.z01.com/database/" target="_blank">数据字典</a></li>
                    <li><a href="http://www.z01.com/corp/media/359.shtml" target="_blank">Oracle支持</a></li>
                    <li><a href="http://www.z01.com/learn/2342.shtml" target="_blank">桌面壁纸</a></li>
                    <li><a href="http://www.z01.com/phoneGap/" target="_blank">PhoneGap资源</a></li>
                    <li><a href="http://www.1th.cn" target="_blank">一特网</a></li>
                </ul>
            </div>
            <div class="col-lg-2 col-md-6 col-sm-6 col-xs-12 Home_server_top3">
                <ul class="Home_server_li">
                    <h4>旗下矩阵</h4>
                    <li><a href="http://www.z01.com/mtv/" target="_blank">视频教程</a></li>
                    <li><a href="http://www.z01.com/Project/" target="_blank">解决方案</a></li>
                    <li><a href="http://bbs.z01.com" target="_blank">技术社区</a></li>
                    <li><a href="http://www.z01.com/biz/" target="_blank">商业认证</a></li>
                    <li><a href="http://www.z01.com/corp/video" target="_blank">视频中心</a></li>
                    <li><a href="http://www.z01.com/corp/about/472.shtml" target="_blank">电子杂志</a>
                    <li><a href="http://www.z01.com/pub/1932.shtml" target="_blank">院校合作</a></li>
                </ul>
                <ul class="Home_server_li">
                    <h4>研发计划</h4>
                    <li><a href="http://www.z01.com/updata/" target="_blank">更新记录</a></li>
                    <li><a href="http://www.z01.com/Article/news/1902.shtml" target="_blank">豚计划</a></li>
                    <li><a href="http://www.z01.com/corp/video/1839.shtml" target="_blank">体感研发</a></li>
                    <li><a href="">教育研发</a></li>
                    <li><a href="http://www.z01.com/m/" target="_blank">移动开发</a></li>
                    <li><a href="">RIA客户端体验</a></li>
                    <li><a href="http://www.z01.com/sec/">SEC应急响应中心</a></li>
                </ul>
            </div>
            <div class="col-lg-2 col-md-6 col-sm-6 col-xs-12 Home_server_top3">
                <ul class="Home_server_li">
                    <h4>开放平台</h4>
                    <li><a href="http://www.z01.com/try/kkzx/1021.shtml" target="_blank">API整合</a></li>
                    <li><a href="http://www.z01.com/Article/server/1774.shtml" target="_blank">讲师计划</a></li>
                    <li><a href="http://www.z01.com/product/pub/1932.shtml" target="_blank">院校合作</a></li>
                    <li><a href="http://www.z01.com/learn/1246.shtml" target="_blank">云技术白皮书</a></li>
                    <li><a href="http://www.z01.com/Article/news/526.shtml" target="_blank">永久免费声明</a></li>
                    <li><a href="http://help.z01.com/label.htm" target="_blnak">标签助手</a></li>
                    <li><a href="http://code.z01.com/boot/" target="_blank">BootStrap</a></li>
                </ul>
                <ul class="Home_server_li">
                    <h4>配套服务</h4>
                    <li><a href="http://v.hx008.com/domain.php" target="_blank">域名注册</a></li>
                    <li><a href="http://v.hx008.com/web.php" target="_blank">主机服务</a></li>
                    <li><a href="http://www.hx008.com/idc/" target="_blank">租用托管</a></li>
                    <li><a href="http://www.020data.com/" target="_blank">大数据存储及修复</a></li>
                    <li><a href="http://v.hx008.com/pro.php" target="_blank">优化推广</a></li>
                    <li><a href="http://www.hx008.com/Website/" target="_blank">网站建设</a></li>
                    <li><a href="http://www.z01.com/tool/">IIS站点智能工具</a></li>
                </ul>
            </div>
            <div class="col-lg-2 col-md-6 col-sm-6 col-xs-12 Home_server_top3">
                <ul class="Home_server_li">
                    <h4>关于我们</h4>
                    <li><a href="http://www.z01.com/y10/" target="_blank">10年华诞</a></li>
                    <li><a href="http://www.z01.com/corp/" target="_blank">关于公司</a></li>
                    <li><a href="http://www.z01.com/photo/ltd/" target="_blank">参观公司</a></li>
                    <li><a href="http://www.z01.com/corp/music" target="_blank">企业歌曲</a></li>
                    <li><a href="http://www.z01.com/corp/about/83.shtml">联系地址</a></li>
                    <li><a href="http://www.z01.com/blog/" target="_blank">官方博客</a></li>
                    <li><a href="http://www.z01.com/server/" target="_blank">服务中心</a></li>
                </ul>
                <ul class="Home_server_li">
                    <h4>站内导航</h4>
                    <li><a href="http://www.z01.com/corp/media" target="_blank">媒体报道</a></li>
                    <li><a href="http://www.z01.com/corp/video" target="_blank">视频中心</a></li>
                    <li><a href="http://ad.z01.com/" target="_blank">广告源码</a></li>
                    <li><a href="javascript:window.external.addFavorite('http://www.z01.com/','动力逐浪');">加入收藏</a></li>
                    <li><a href="http://www.z01.com/map.html" target="_blank">网站地图</a></li>
                    <li><a href="http://www.z01.com/Article/join/106.shtml" target="_blank">加盟代理</a></li>
                    <li><a href="http://www.z01.com/Friendsite/" target="_blank">友情链接</a></li>
                </ul>
            </div>
        </div>

    </div>
    <!--整个表格 -->



    <div id="home_friendsite">
        <div class="container">
            <div class="row">
                <p><a href="https://github.com/zoomla" target="_blank"><i class="fa  fa-github"></i></a>典型客户：</p>
                <ul>
                    <li id="home_friendsite_china"><a href="#">中国政府网</a></li>
                    <li id="home_friendsite_fujitsu"><a href="#">Fujitsu</a></li>
                    <li id="home_friendsite_hp"><a href="/Template/office/style/images//HP.pdf" target="_blank">HP</a></li>
                    <li id="home_friendsite_whedu"><a href="#">武汉大学</a></li>
                    <li id="home_friendsite_huawei"><a href="#">深圳华为</a></li>
                    <li id="home_friendsite_cdc"><a href="#">中国疾病预防控制中心</a></li>
                    <li id="home_friendsite_kingdee"><a href="#">金蝶软件</a></li>
                    <li id="home_friendsite_chinaredstar"><a href="#">红星美凯龙</a></li>
                    <li id="home_friendsite_jxrb"><a href="#">江西日报</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div id="copyrights">
        <div class="container">
            <div class="row">
                7×24小时服务热线 021-50391046 技术支持：13177777714<br />
                Copyright &copy;
                <script>
                    var year = "";
                    mydate = new Date();
                    myyear = mydate.getYear();
                    year = (myyear > 200) ? myyear : 1900 + myyear;
                    document.write(year);
                </script>
                逐浪软件z01.com版权所有 All rights reserved<br />
                中华人民共和国网警备案号:3601040103 经营许可证号:工商3601002021063 沪ICP备09077823号<br />
                <div class="mail">
                    <script src='/Qmail/SubscribeMail.aspx?type=1'></script>
                    本网站基于&reg;Zoomla!逐浪CMS内核开发</div>
                <p>
                    <script>document.writeln("<a href='http://www.sgs.gov.cn/lz/licenseLink.do?method=licenceView&entyId=2012041112133385' target='_blank' ><img src='/Template/PowerZ/style/images/gs.gif' alt='工商认证'></a>")</script>
                    <a href="http://www.z01.com/Article/news/455.shtml" target="_blank" title="ISO9001国际认证企业">
                        <img src="/Template/PowerZ/style/images/iso.gif" alt="ISO9001国际认证企业" /></a> <a href="http://www.z01.com/corp/about/93.shtml" target="_blank" title="CSDN外包TOP资质">
                            <img src="/Template/PowerZ/style/images/top.gif" alt="CSDN外包TOP资质" /></a> <a href="http://www.z01.com/corp/about/476.shtml" target="_blank" title="鉴赏MTV电广视告">
                                <img src="/Template/PowerZ/style/images/mtv.gif" alt="鉴赏MTV电广视告" /></a> <a href="http://www.z01.com/corp/about/83.shtml" target="_blank" title="7×24小时全天候贴心服务">
                                    <img src="/Template/PowerZ/style/images/server.gif" alt="7×24小时全天候贴心服务" /></a>

                    <script type="text/javascript" src="https://seal.geotrust.com/getgeotrustsslseal?host_name=v.z01.com&amp;size=M&amp;lang=en"></script>
                    <br />
                    <a href="http://www.geotrust.com/ssl/" target="_blank" style="color: #000000; text-decoration: none; font: bold 7px verdana,sans-serif; letter-spacing: .5px;"></a>

                </p>
            </div>
        </div>
    </div>
</div>
<div class="navbar navbar-fixed-bottom MYbottom hidden-xs">
    <div class="container BottomLink">
        <div class="row">
            <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12 BottomLink_l">
                <a class="btn btn-danger  btn-sm pull-left" href="http://www.z01.com/updata/" target="_blank"><i class="fa fa-refresh fa-lg"></i>更新记录</a>
                <a href="http://www.z01.com/product" target="_blank">网站内核与内容产品线</a>
                <a href="http://www.z01.com/oas" target="_blank">Z套件OA办公产品线</a>
            </div>
            <div class="col-lg-5 col-md-5  col-sm-5 col-xs-12">
                <span>
                    <div class="dl"><a href="https://www.z01.com/pub/" target="_blank" title="Free Download">DownLoad></a></div>
                    <div class="sp"><a href="https://www.z01.com/shop/" target="_blank" title="商业授权Buy Now"><i class="fa fa-shopping-cart"></i>商业授权Buy Now</a></div>
                    <div class="ins"><a href="https://www.z01.com/help/Install/692.shtml" target="_blank" title="快速安装">快速安装></a></div>
                </span>
            </div>
        </div>
    </div>
</div>
<div class="kefu hidden-xs">
    <ul>
        <li><a href="/Class_13/Default.aspx"><span>官方市场</span><i class="fa fa-shopping-bag"></i></a><div class="clearfix"></div>
        </li>
        <li><a href="http://wpa.qq.com/msgrd?v=3&uin=524979923&site=qq&menu=yes" target="_blank"><span>在线客服</span><i class="fa  fa-qq"></i></a><div class="clearfix"></div>
        </li>
        <li class="kefu_qrcode"><a href="javascript:;"><span>
            <img src="/Template/PowerZ/style/Images/qrcode.jpg" alt="微信二维码" width="155" /></span><i class="fa fa-qrcode"></i></a><div class="clearfix"></div>
        </li>
        <li><a href="http://www.z01.com/server/" target="_blank"><span>留言咨询</span><i class="fa fa-pencil"></i></a><div class="clearfix"></div>
        </li>
        <li><a href="http://weibo.com/zoomla" target="_blank"><span>新浪微博</span><i class="fa fa-weibo"></i></a><div class="clearfix"></div>
        </li>
    </ul>
</div>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Script">
<style>
body{background:#f2f2f2; }
</style>
<script src="/design/h5/js/swiper.min.js"></script>
<script>
    $(function () {
        if ($('.swiper-slide').length <= 1) {
            var mySwiper = new Swiper('.swiper-container', {
                noSwiping: true,
                noSwipingClass: 'stop-swiping',
                autoplay: 0
            });

        } else {
            var mySwiper = new Swiper('.swiper-container', {
                nextButton: '.swiper-button-next',
                prevButton: '.swiper-button-prev',
                pagination: '.swiper-pagination',
                paginationClickable: true,
                autoplay: 5000,
                autoplayDisableOnInteraction: false,
                loop: true,
                grabCursor: true
            });
        }
    });
</script>
</asp:Content>
