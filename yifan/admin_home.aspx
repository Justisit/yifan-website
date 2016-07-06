<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_home.aspx.cs" Inherits="yifan.admin_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Admin Home</title>
    <link rel="stylesheet" href ="css/admin_home.css" />
</head>
<body>
<div>
    <div class ="left">
        <div style ="width:auto;margin-top:24px; height:20%; ">
            <div class ="admin_pic"></div>
            <div class="a_text"><h3>Admin</h3></div>
        </div>
        <div class ="Nav">
            <ul>
                <li><a href="web/home_page.aspx" target="admin_iframe">首页图片</a></li>
                <li><a href="web/add_goods.aspx" target="admin_iframe">添加展品</a></li>
                <li><a href="web/search_goods.aspx" target="admin_iframe">查询修改</a></li>
                <li><a href="web/users_manage.aspx" target="admin_iframe">用户管理</a></li>
                <li><a href="index.aspx" target="_blank">网站首页</a></li>
                <li><a href="#" onclick="window.close()">退出管理</a></li>
            </ul>
        </div>
    </div>


    <div class ="right">
        <iframe id="admin_iframe" name="admin_iframe" width="100%" height:"100%" src="web/welcome_page.html" frameborder="0" scrolling="no" onLoad="setIframeHeight()"></iframe></div>
        <script type="text/javascript">
            function iFrameHeight() {
                var ifm = document.getElementById("admin_iframe");
                var subWeb = document.frames ? document.frames["admin_iframe"].document : ifm.contentDocument;
                if (ifm != null && subWeb != null) {
                    ifm.height = subWeb.body.scrollHeight;
                    ifm.width = subWeb.body.scrollWidth;
                }
            }
            function setIframeHeight() {
                var iframe = document.getElementById("admin_iframe");
                if (iframe != null && iframe != null) {
                    var iframeWin = iframe.contentWindow || iframe.contentDocument.parentWindow;
                    if (iframeWin.document.body) {
                        iframe.height = iframeWin.document.documentElement.scrollHeight || iframeWin.document.body.scrollHeight;
                    }
                }
            };
        </script>
    </div>
</body>
</html>
