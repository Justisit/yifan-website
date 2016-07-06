<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index_about_us.aspx.cs" Inherits="yifan.web.index_about_us" %>

<!DOCTYPE html>
<html><head>
<title>翼帆网·邯郸</title>
<meta name="keywords" content="hebei,河北工程大学,自主研发产品,河北工程大学自主研发产品,www.hebeu.edu.cn,河北邯郸" />
<meta name="description" content="河北省邯郸市河北工程大学师生自主研发产品展示网站,自主研发产品展示、联系、销售、报价,为您提供最新、最全的科技信息，提供最优质的服务。最新科研产品展示销售报价信息尽在翼帆" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1 user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href='css/web_demo_about_us.css'  rel="stylesheet"type="text/css" media="screen" />
<link href='css/container.css'  rel="stylesheet"type="text/css" media="screen" />
<link rel="shortcut icon" type="/image/x-icon" href="images/shortcutlogo02-24.ico" />
<link rel="icon" href="images/shortcutlogo01.png" type="image/png" />


<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.smint.js"></script>

<script type="text/javascript" src="js/bktotop.js"></script>
<script type="text/javascript" src="js/magic_star.js"></script>


<script type="text/javascript" src="js/TileHeadPic.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('.subMenu').smint({
            'scrollSpeed': 1000
        });

    });

</script>


</head>
<body>
<div class="wrap ">
	<div class="section sTop">
		<div class="inner">
			<h1><img class="lazy" data-original="images/logo00.png" height="75" src="images/logo00.png" style="display: inline;"></h1>
		<div id="top_pic"><!--start-->
        <ul class="cb-slideshow">
            <li><span style="background-image:url('<%=bk_img1 %>')">Image 01</span><div><h3><%=hMessage1 %></h3></div></li>
            <li><span style="background-image:url('<%=bk_img2 %>')">Image 02</span><div><h3><%=hMessage2 %></h3></div></li>
            <li><span style="background-image:url('<%=bk_img3 %>')">Image 03</span><div><h3><%=hMessage3 %></h3></div></li>
            <li><span style="background-image:url('<%=bk_img4 %>')">Image 04</span><div><h3><%=hMessage4 %></h3></div></li>
            <li><span style="background-image:url('<%=bk_img5 %>')">Image 05</span><div><h3><%=hMessage5 %></h3></div></li>
            <li><span style="background-image:url('<%=bk_img6 %>')">Image 06</span><div><h3><%=hMessage6 %></h3></div></li>
        </ul>
        </div><!--end-->
        </div>
	</div>

	<div class="subMenu" >
	 	<div class="subMenu_inner">
	 		<a href="#sTop" class="subNavBtn">HOME</a>
            <a href="Team_page.html" class="subNavBtn" target="iframe_page">TEAM</a> 
            <a href="Information_page.html" class="subNavBtn" target="iframe_page">INFORMATION</a>
            <a href="JoinUs_page.html" class="subNavBtn" target="iframe_page">JOIN US</a>
            <a href="ContactUs_page.html" class="subNavBtn" target="iframe_page">CONTACT</a>
			<a href="Case_page.html" class="subNavBtn" target="iframe_page">CASE</a>
            <a href="http://www.hebeu.edu.cn" class="subNavBtn extLink end">HEBEU</a>
            
		</div>
	</div>

	<div class="section s1">
    <!-- Section 1 -->
		<div class="inner ">
            <iframe id="iframe_page" name="iframe_page" src="Team_page.html" frameborder="0" scrolling="no" onLoad="iFrameHeight()"></iframe>
            
            <!--方法一 -->
            <script type="text/javascript" language="javascript">
                function iFrameHeight() {
                    var ifm = document.getElementById("iframe_page");
                    var subWeb = document.frames ? document.frames["iframe_page"].document : ifm.contentDocument;
                    if (ifm != null && subWeb != null) {
                        ifm.height = subWeb.body.scrollHeight;
                        ifm.width = subWeb.body.scrollWidth;
                    }
                }
             </script>

            <!--方法二动态加载
            <script>
                function reinitIframe() {
                    var iframe = document.getElementById("iframe_page");
                    try {
                        var bHeight = iframe.contentWindow.document.body.scrollHeight;
                        var dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
                        var height = Math.max(bHeight, dHeight);
                        iframe.height = height;
                    } catch (ex) { }
                }

                var timer1 = window.setInterval("reinitIframe()", 500); //定时开始  

                function reinitIframeEND() {
                    var iframe = document.getElementById("iframe_page");
                    try {
                        var bHeight = iframe.contentWindow.document.body.scrollHeight;
                        var dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
                        var height = Math.max(bHeight, dHeight);
                        iframe.height = height;
                    } catch (ex) { }
                    // 停止定时  
                    window.clearInterval(timer1);

                }
            </script>-->
		</div>
	</div>



<div id="foot">
	<div class="ft_tp" style="text-align: center;">
	<span><a href="#" target="_blank">网站链接</a></span>|
    <span><a href="#" target="_blank">网站官网</a></span>|
    <span><a href="#" target="_blank">网站链接</a></span>|
    <span><a href="#" target="_blank">网站链接</a></span>|
    <span><a href="#" target="_blank">网站链接</a></span>

</div>
	<div class="ft_tp_1" style="text-align: center;">
    <a href="#" style="color: rgb(153, 153, 153);">翼帆</a>技术支持：创拓工作室  工作室地址：中国·河北·邯郸·光明南大街199号</div>
	<div class="ft_tp_1" style="text-align: center;">
    <a href="#" style="color: rgb(153, 153, 153);">河北创拓工作室web设计部</a> 版权所有  Copyright © 2015 - 2015 <a href="#" style="color: rgb(153, 153, 153);">ctuo.com</a> , All Rights Reserved</div>
</div>
</div>
<footer id="footer" style="background:#FEFEFE;">
</footer>
</body>
</html>