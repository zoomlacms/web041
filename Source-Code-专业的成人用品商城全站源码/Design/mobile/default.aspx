<%@ page language="C#" autoeventwireup="true" inherits="Design_mobile_default, App_Web_gnne5m14" masterpagefile="~/Common/Master/Empty.master" enableviewstate="false" validaterequest="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
<title><asp:Literal runat="server" ID="Title_L"></asp:Literal></title>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
<div style="display:none;">
     <asp:Image runat="server" ID="Share_Img" />
</div>
<asp:Label runat="server" ID="Html_Lit"></asp:Label>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Script">
<div id="pop_div" class="popup popup-edit">
    <div class="content">
         <iframe id="pop_ifr" class="popifr" style="width:100%;height:100%;border:none;"></iframe>
    </div>
</div>
<link href="/design/JS/mobile/tools.css" rel="stylesheet" />  
<script src="/JS/Controls/ZL_Webup.js"></script>
<script src="/JS/Modal/APIResult.js"></script>
<asp:HiddenField runat="server" ID="sitecfg_hid" />
</asp:Content>
