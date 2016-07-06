<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="yifan.index" %>


<!DOCTYPE html>

<!DOCTYPE html>
<html><head>
<title>翼帆网·邯郸</title>
<meta name = "keywords" content = "hebei,河北工程大学,自主研发产品,河北工程大学自主研发产品,www.hebeu.edu.cn,河北邯郸" />
<meta name = "description" content = "河北省邯郸市河北工程大学师生自主研发产品展示网站,自主研发产品展示、联系、销售、报价,为您提供最新、最全的科技信息，提供最优质的服务。最新科研产品展示销售报价信息尽在翼帆"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=12, minimum-scale=1 user-scalable=yes">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="css/mycss.css" rel="stylesheet" type="text/css">

          <link href="css/index_goods.css" rel="stylesheet" type="text/css">

<link href='css/demo.css'  rel="stylesheet"type="text/css" media="screen" />
<link href='css/mycontainer_css.css'  rel="stylesheet"type="text/css" media="screen" />
<link href="css/nivo-slider.css" rel="stylesheet" type="text/css" media="screen" />
<link rel="shortcut icon" type="/image/x-icon" href="images/shortcutlogo02-24.ico" />
<link rel="icon" href="images/shortcutlogo01.png" type="image/png" />


<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.smint.js"></script>
<script type="text/javascript" src="js/jquery.lazyload.js"></script>

<script type="text/javascript" src="js/bktotop.js"></script>
<script type="text/javascript" src="js/magic_star.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>

<script type="text/javascript" src=""></script>
<script type="text/javascript" src=""></script>

<script type="text/javascript">


    $(document).ready(function () {
        $('.subMenu').smint({
            'scrollSpeed': 1000
        });
    });



</script>


</head>
<body onload="setTimeout(function() { window.scrollTo(0, 1) }, 100);">
<div id="top_tips_container" style="position: fixed; display:none; top: 0px; left: 0px; height: 40px; width: 99.9%; z-index: 2000; overflow: hidden;">
<div class="gb_hintbar">
    <div class="inner" style="padding-top:0px">
    <i class="ui_ico ui_hint_warn"></i>
    <div class="hintbar_txt">温馨提示：建议您使用Chrome、搜狗(高速模式)、360(极速模式)等浏览器,以获得最佳体检。
    <a href="javascript:;" onclick="$('#top_tips_container').toggle(); return false;">关闭提示</a>
    </div>
    </div>
    <a title="点击退出" class="text_close" href="javascript:;" onclick="$('#top_tips_container').toggle(); return false;">×</a>
    </div>
    </div>	
<div class="wrap ">
	<div class="section sTop">
		<div class="inner_stop">
			<h1><a href="/index.aspx" alt="logo" title="首页" ><img src="images/logo00.png" height="75" style="display: inline;"></a></h1>
		    <div style="width:100%; height:550px">
            <div id="slider-wrapper">
		        <div id="slider" class="nivoSlider">
				<!--图片切换-->	
                    <a href="#" target="_blank">
                        <asp:Image ID="Image1" width="100%" height="500" runat="server" />
<%--                        <img width="100%" height="500" id="hImg1" src="images/ad1.jpg" alt="" title="所有向往心与心的约定" runat="server" />--%>
                    </a>

                    <a href="#" target="_blank">
                        <asp:Image ID="Image2" width="100%" height="500" runat="server" />
<%--                        <img width="100%" height="500" id="hImg2" src="images/ad2.jpg" alt="" title="被热情驱动，为爱启程" />--%>
                    </a>

                    <a href="#" target="_blank">
                        <asp:Image ID="Image3" width="100%" height="500" runat="server" />
<%--                        <img width="100%" height="500" id="hImg3" src="images/ad22.jpg" alt="" title="完美体验引领轻松浏览新潮" />--%>
                    </a>

                    <a href="#" target="_blank">
                        <asp:Image ID="Image4" width="100%" height="500" runat="server" />
<%--                        <img width="100%" height="500" id="hImg4" src="images/ad3.jpg" alt="" title="心之所向，驭梦前行" />--%>
                    </a>

                    <a href="#" target="_blank">
                        <asp:Image ID="Image5" width="100%" height="500" runat="server" />
<%--                        <img width="100%" height="500" id="hImg5" src="images/serve0011.jpg" alt="" title="以澎湃之心，挑战风雪" />--%>
                    </a>

                    <a href="#" target="_blank">
                        <asp:Image ID="Image6" width="100%" height="500" runat="server" />
<%--                        <img width="100%" height="500" id="hImg6" src="images/porsche0015.jpg" alt="" title="睿者当先，明智之选">--%>
                    </a>
		        </div>

		        <div style="width: 1000px; height:20px;padding-top: 16px;">
                <div class="nivo-controlNav" style="width: 400px;"></div> </div>
		</div>	
		<br class="clear">
         </div>   
  
        </div>
	</div>

	<div class="subMenu" >
	 	<div class="subMenu_inner">
	 		<a href="#sTop" class="subNavBtn">首页</a>
	 		<a href="#s1" class="subNavBtn">最新动态</a> 
			<a href="#s2" class="subNavBtn">产品展示</a>
			<a href="#s3" class="subNavBtn">关于我们</a>
			<a href="#s4" class="subNavBtn">校区分布</a>
			<a href="#s5" class="subNavBtn">app下载</a>
			<a href="http://www.hebeu.edu.cn" target=_blank class="subNavBtn extLink end">校园官网</a>
            
		</div>
	</div>

	<div class="section s1">
    <!-- Section 1 -->
		<div class="inner ">
        <div class="h_div"><h1>最新动态</h1></div>
            <div class="index-goods">           
                <div class="index-goods-s"><span></span></div>

                <div class="index-goods-wrap">
           
                        <ul>
                        <li>
                            <p class="img">
                            <a target="_blank" href="<%=goodsUrl[0] %>">
                                <img width="190" src="<%=goodsImg[0] %>" height="106"></a></p>
                            <p class="hr"></p>
                            <p class="txt">
                            <a target="_blank" href="all_goods_view.aspx?id=2"><%=titleStr[0] %></a></p>
                        </li>

                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[1] %>"><img width="190" src="<%=goodsImg[1] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[1] %>"><%=titleStr[1] %></a></p></li>
                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[2] %>"><img width="190" src="<%=goodsImg[2] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[2] %>"><%=titleStr[2] %></a></p></li>
                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[3] %>"><img width="190" src="<%=goodsImg[3] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[3] %>"><%=titleStr[3] %></a></p></li>
                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[4] %>"><img width="190" src="<%=goodsImg[4] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[4] %>"><%=titleStr[4] %></a></p></li>
                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[5] %>"><img width="190" src="<%=goodsImg[5] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[5] %>"><%=titleStr[5] %></a></p></li>
                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[6] %>"><img width="190" src="<%=goodsImg[6] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[6] %>"><%=titleStr[6] %></a></p></li>
                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[7] %>"><img width="190" src="<%=goodsImg[7] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[7] %>"><%=titleStr[7] %></a></p></li>
                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[8] %>"><img width="190" src="<%=goodsImg[8] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[8] %>"><%=titleStr[8] %></a></p></li>
                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[9] %>"><img width="190" src="<%=goodsImg[9] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[9] %>"><%=titleStr[9] %></a></p></li>
                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[10] %>"><img width="190" src="<%=goodsImg[10] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[10] %>"><%=titleStr[10] %></a></p></li>
                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[11] %>"><img width="190" src="<%=goodsImg[11] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[11] %>"><%=titleStr[11] %></a></p></li>
                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[12] %>"><img width="190" src="<%=goodsImg[12] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[12] %>"><%=titleStr[12] %></a></p></li>
                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[13] %>"><img width="190" src="<%=goodsImg[13] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[13] %>"><%=titleStr[13] %></a></p></li>
                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[14] %>"><img width="190" src="<%=goodsImg[14] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[14] %>"><%=titleStr[14] %></a></p></li>
                        </ul>
                   
                </div>

                <div class="clearfix"></div>
                
                <div class="index-goods-btn">
                    <a href="all_goods_view.aspx" target="_blank">查看最新动态</a>
                </div>

            </div>
		</div>
	</div>

	<div class="section s2">
    <!-- Section 2 -->
		<div class="inner">
			<div class="h_div"><h1>产品展示</h1></div>
            
            <div class="index-goods">
                <div class="index-goods-s"><span></span></div>
                <div class="index-goods-wrap">
                    
                      <ul>
                        <li>
                          <p class="img">
                            <a target="_blank" href="<%=goodsUrl[15] %>"><img width="190" src="<%=goodsImg[15] %>" height="106"></a></p>
                          <p class="hr"></p>
                          <p class="txt"><a target="_blank" href="<%=goodsUrl[15] %>"><%=titleStr[15] %></a></p>
                        </li>

                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[16] %>"><img width="190" src="<%=goodsImg[16] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[16] %>"><%=titleStr[16] %></a></p></li>
                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[17] %>"><img width="190" src="<%=goodsImg[17] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[17] %>"><%=titleStr[17] %></a></p></li>
                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[18] %>"><img width="190" src="<%=goodsImg[18] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[18] %>"><%=titleStr[18] %></a></p></li>
                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[19] %>"><img width="190" src="<%=goodsImg[19] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[19] %>"><%=titleStr[19] %></a></p></li>
                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[20] %>"><img width="190" src="<%=goodsImg[20] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[20] %>"><%=titleStr[20] %></a></p></li>
                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[21] %>"><img width="190" src="<%=goodsImg[21] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[21] %>"><%=titleStr[21] %></a></p></li>
                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[22] %>"><img width="190" src="<%=goodsImg[22] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[22] %>"><%=titleStr[22] %></a></p></li>
                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[23] %>"><img width="190" src="<%=goodsImg[23] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[23] %>"><%=titleStr[23] %></a></p></li>
                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[24] %>"><img width="190" src="<%=goodsImg[24] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[24] %>"><%=titleStr[24] %></a></p></li>
                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[25] %>"><img width="190" src="<%=goodsImg[25] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[25] %>"><%=titleStr[25] %></a></p></li>
                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[26] %>"><img width="190" src="<%=goodsImg[26] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[26] %>"><%=titleStr[26] %></a></p></li>
                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[27] %>"><img width="190" src="<%=goodsImg[27] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[27] %>"><%=titleStr[27] %></a></p></li>
                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[28] %>"><img width="190" src="<%=goodsImg[28] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[28] %>"><%=titleStr[28] %></a></p></li>
                        <li><p class="img"><a target="_blank" href="<%=goodsUrl[29] %>"><img width="190" src="<%=goodsImg[29] %>" height="106"></a></p><p class="hr"></p><p class="txt"><a target="_blank" href="<%=goodsUrl[29] %>"><%=titleStr[29] %></a></p></li></ul>
                    </div>              
                <div class="clear"></div>
                <div class="index-goods-btn">
                    <a href="allGoods-page.aspx" target="_blank">查看更多</a>
                </div>
            </div>
		</div>
	</div>

	<div class="section s3">
    <!-- Section 3 -->
		<div class="inner"><!--inner start-->
			<div class="h_div"><h1>关于我们</h1></div>
            <div id ="about_us">
                <div id="cus_btn">
                   <p class="about_t"><a href="www.hebeu.edu.cn" target="_blank">河北工程大学web设计部</a></p>
                   <p class="about_g"><a target="_blank" href="web/index_about_us.aspx">了解详情></a></p>
                </div>
            </div>

		</div><!--inner s3 end-->
	</div><!--section s3 end-->



	<div class="section s4">
    <!-- Section 4 -->
		<div class="inner">
			<div class="h_div"><h1>校区分布</h1></div>
            <div class="clearfix" style="width:100%;height:auto;">
                <div class="inner_mid">
			     <img src="images/school_pic/porsche002.jpg" style="width:600px;height:400px">
		        </div>
   		        <div class="inner_mid" style="text-align:right">
		          <img src="images/school_pic/porsche004.jpg" style="width:600px;height:400px">			
		        </div>
          </div>
		          
		    <div class="clearfix" style="width:100%;height:50px;">
                  <img src="images/001.png" style="margin-top: -10px; margin-left: 10%;float:left; display:block;">
		          <div class="location_indicator"></div><a target="_blank" href="BMap/BMap.htm">立即前往</a>
            </div>
	  </div>
	</div>

	<div class="section s5">
    <!-- Section 5 -->
		<div class="inner">
			<div class="h_div"><h1>app下载</h1></div>
            <div style="height:560px;background-image:url(images/appdown_bg002.png)"><a href="#" class="appdownbtn" rel="nofollow"><img id="appdownbtn" src="images/downloadbtn001.png" title="Android"></a></div>
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
    <a href="#" style="color: rgb(153, 153, 153);">河北工程大学创拓工作室web设计部</a> 版权所有  Copyright © 2015 - 2016 <a href="#" style="color: rgb(153, 153, 153);">ctuo.com</a> , All Rights Reserved</div>
</div>
</div>
<footer id="footer" style="background:#FEFEFE;">
</footer>

</body>
</html>
