﻿<%@ control language="C#" autoeventwireup="true" inherits="Manage_I_ASCX_PaperGuide, App_Web_u1s3jh0i" %>
<div id="nodeNav" style="padding:0 0 0 0;">
         <div class="input-group">
            <input type="text" id="keyWord" class="form-control ascx_key" onkeydown="return ASCX.OnEnterSearch('<%:CustomerPageAction.customPath2+"Exam/Papers_System_Manage.aspx?keyWord=" %>',this);" placeholder="<%=Resources.L.试卷标题或ID %>" />
            <span class="input-group-btn">
                <button class="btn btn-default" type="button" onclick="ASCX.Search('<%:CustomerPageAction.customPath2+"Exam/Papers_System_Manage.aspx?keyWord=" %>','keyWord');"><span class="glyphicon glyphicon-search"></span></button>
            </span>
        </div>
        <div>
            <div class="tvNavDiv">
                <div class="left_ul">
                    <asp:Literal runat="server" ID="nodeHtml" EnableViewState="false"></asp:Literal>
                </div>
            </div>
            <span style="color: green;" runat="server" id="remind" visible="false" />
        </div>
    </div>