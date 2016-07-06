<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="singleGoods-page.aspx.cs" Inherits="yifan.singleGoods_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name = "keywords" content = "hebei,河北工程大学,自主研发产品,河北工程大学自主研发产品,www.hebeu.edu.cn,河北邯郸" />
<meta name = "description" content = "河北省邯郸市河北工程大学师生自主研发产品展示网站,自主研发产品展示、联系、销售、报价,为您提供最新、最全的科技信息，提供最优质的服务。最新科研产品展示销售报价信息尽在翼帆"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1 user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>翼帆网展示网页</title>
    <link href="css/allGoods_view.css" rel="stylesheet" />
    <link href="css/singleGoods.css" rel="stylesheet" />
    <script src="js/jquery.min.1.7.2.js"></script>
    <script src="js/allGoods_view.js"></script>
    <script src="web/js/bktotop.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="allGoods-body">
            <div class="site-topbar">
                <div class="container clearfix">
                    <div class="topbar-nav">
                        <a href="index.aspx#sTop">首页</a><span>|</span><a href="index.aspx#s1">最新动态</a><span>|</span><a href="index.aspx#s2">产品展示</a><span>|</span><a href="BMap/BMap.htm">校区分布</a></div>
                    <div class="topbar-go">
                        <a class="go-mini"><i></i>校园官网<span></span></a>
                        <div class="go-menu">
                            <div class="loader" id="loader"><div class="loading"></div></div>
                            <div class="a-menu"></div>
                        </div>
                    </div>
                    <div class="topbar-aboutUs">
                        <div class="topText">
                            <a class="a-text" href="../web/index_about_us.aspx" target="_blank">
                                <span>About Us</span>
                                <i class="top-icon">&gt;</i>
                            </a>
                            <ul>
                                <li><a href="../web/Team_page.html" target="_blank">TEME</a></li>
                                <li><a href="../web/Information_page.html" target="_blank">INFORMATION</a></li>
                                <li><a href="../web/JoinUs_page.html" target="_blank">JOIN US</a></li>
                                <li><a href="../web/Case_page.html" target="_blank">CASE</a></li>
                            </ul>
                        </div>
                        <span>|</span>
                        <a class="contactUs" href="../web/ContactUs_page.html" target="_blank">ContactUs</a>
                    </div>
                </div>
            </div>
            <div class="site-header">
                <div class="container clearfix">
                    <div class="header-logo">
                        <a class="logo-pic" href="index.aspx" title="翼帆官网">LOGO</a>
                        <div><a class="link-block" href="#">展品展示页面</a></div>
                    </div>
                    <div class="header-nav">
                        <ul class="nav-list clearfix">
                            <li class="nav-category">
                                <a class="link-category" href="allGoods-page.aspx"><span class="text">全部展品</span></a>
                                <div class="site-category">
                                    <ul class="site-category-list clearfix">
                                        <li class="category-item"></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="link" href="allGoods-page.aspx" target="_blank"><span class="text">最新展品</span><span class="arrow"></span></a>
                                <div class="item-children">
                                    <div class="container">
                                        <ul class="children-list clearfix">
                                            <li class="first"><div class="figure"><a href="#"><img src="#" /></a></div><div class="title"><a>TEXT</a></div><p>text</p></li>
                                            <li><div class="figure"><a href="#"><img src="#" /></a></div><div class="title"><a>TEXT</a></div><p>text</p></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="link" href="all_goods_view.aspx#"><span class="text">明星展品</span><span class="arrow"></span></a>
                                <div class="item-children">
                                    <div class="container">
                                        <ul class="children-list clearfix">
                                            <li class="first"><div class="figure"><a href="#"><img src="#" /></a></div><div class="title"><a href="#">TEXT</a></div><p>text</p></li>
                                            <li><div class="figure"><a href="#"><img src="#" /></a></div><div class="title"><a href="#">TEXT</a></div><p>text</p></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="link" href="all_goods_view.aspx#view-hot"><span class="text">热门展品</span><span class="arrow"></span></a>
                                <div class="item-children">
                                    <div class="container">
                                        <ul class="children-list clearfix">
                                            <li class="first"><div class="figure"><a href="#"><img src="#" /></a></div><div class="title"><a href="#">TEXT</a></div><p>text</p></li>
                                            <li><div class="figure"><a href="#"><img src="#" /></a></div><div class="title"><a href="#">TEXT</a></div><p>text</p></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="link" href="all_goods_view.aspx#view-good"><span class="text">好评展品</span><span class="arrow"></span></a>
                                <div class="item-children">
                                    <div class="container">
                                        <ul class="children-list clearfix">
                                            <li class="first"><div class="figure"><a href="#"><img src="#" /></a></div><div class="title"><a>TEXT</a></div><p>text</p></li>
                                            <li><div class="figure"><a href="#"><img src="#" /></a></div><div class="title"><a>TEXT</a></div><p>text</p></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="link" href="all_goods_view.aspx#view-well"><span class="text">优秀展品</span><span class="arrow"></span></a>
                                <div class="item-children">
                                    <div class="container">
                                        <ul class="children-list clearfix">
                                            <li class="first"><div class="figure"><a href="#"><img src="#" /></a></div><div class="title"><a>TEXT</a></div><p>text</p></li>
                                            <li><div class="figure"><a href="#"><img src="#" /></a></div><div class="title"><a>TEXT</a></div><p>text</p></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="link" href="all_goods_view.aspx#"><span class="text">全部展品</span><span class="arrow"></span></a>
                                <div class="item-children">
                                    <div class="container">
                                        <ul class="children-list clearfix">
                                            <li class="first"><div class="figure"><a href="#"><img src="#" /></a></div><div class="title"><a href="#">TEXT</a></div><p>text</p></li>
                                            <li><div class="figure"><a href="#"><img src="#" /></a></div><div class="title"><a href="#">TEXT</a></div><p>text</p></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="header-search">
                        <div style="display:none;" class="search-form clearfix">
                            <label for="search" class="hide">站内搜索</label>
                            <input type="search" id="search" class="search-text" />
        <%--                    <input type="submit" class="search-btn" value="go" />--%>
                            <div class="search-btn"><div class="search-icon"></div></div>
                            <div class="search-hot-words" style="display:block;">
                                <a href="#">hotword-1</a>
                                <a href="#">hotword-2</a>
                            </div>
                            <div class="keyword-list hide">
                                <ul class="result-list">
                                    <li data-key="123456"><a href="#">热点关键词1<span class="result">text</span></a></li>
                                    <li data-key="123456"><a href="#">热点关键词2<span class="result">text</span></a></li>
                                    <li data-key="123456"><a href="#">热点关键词3<span class="result">text</span></a></li>
                                    <li data-key="123456"><a href="#">热点关键词4<span class="result">text</span></a></li>
                                    <li data-key="123456"><a href="#">热点关键词5<span class="result">text</span></a></li>
                                    <li data-key="123456"><a href="#">热点关键词6<span class="result">text</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="page-main home-main">
                <div class="container clearfix">
                    <div id="view-hot" class="home-brick-box-1 yf-plain-box">
                        <div class="box-hd">
                            <h2 class="title">展品参数</h2>
                        </div>
                        <div id="goodsBox1" class="box-bd">
                            <div class="row">
                                <div id ="show_content" class="show_content">
                                    <div class="dt"><i>*</i>总参数浏览</div>
                                    <div style="height:320px; overflow:hidden;" class="dd">
                                        <div style="width:auto;height:300px;">
                                            <div style ="width:420px;height:260px;padding:20px 10px; float:left;position:relative;">
                                                <asp:Image ID="Image1" runat="server" class="search_img"/>
                                                <p style="font:12px/14px 微软雅黑,'微软雅黑',Arial,'Microsoft YaHei','宋体'sans-serif;color: #cdcdcd;padding-right: 3px;">图片name：<%=show_img_name %></p>
                                            </div>
                                            <div style="width:660px; float:left;padding-top:26px;position:relative;">
                                                <div>
                                                    <div style="width:320px; float:left;padding-left:20px;position:relative;border-left:1px solid #e6e2dd;display:block;">
                                                        <h3><%=show_name%></h3><div id="isLike" class="like"><div class="heart"></div><span class="upvote"><%=upvote %></span></div>
                                                        <p>作者 ID：<%=show_creator%></p>
                                                        <p>展品类型：<%=show_type%></p>
                                                        <p>title信息：<%=show_title%></p>
                                                    </div>
                                                    <div style="width:260px; float:left;margin-left:20px;padding-top:40px; position:relative;display:block">
                                                        <p><span>日期：<%=show_times%></span></p>
                                                        <p>展品编号：<span id="goodsNum"><%=show_num%></span></p>
                                                        <p>专 利 号：<%=show_patent%></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>                       
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="page-main home-main">
                <div class="container clearfix">
                    <div id="view-hot2" class="home-brick-box-1 yf-plain-box">
                        <div class="box-hd">
                            <h2 class="title">作者介绍</h2>
                        </div>
                        <div id="goodsBox2" class="box-bd">
                            <div class="row">
                                <div id ="show_content2" class="show_content">
                                    <div class="dt"><i>*</i>显示结果</div>
                                    <div class="dd">
                                        <div style="width:auto;height:360px; overflow:hidden;">
                                            <div style ="width:420px;height:300px;padding:20px 10px; float:left;position:relative;">
                                                <div id="show_images">
                                                    <asp:Image ID="Image2" runat="server" class="search_img"/>
                                                </div>
                                            </div>
                                            <div style="width:660px;float:left;padding-top:26px;position:relative;">
                                                <div class="clearfix">
                                                    <div style="width:320px; float:left;padding-left:20px;position:relative;border-left:1px solid #e6e2dd;display:block;">
                                                        <h3>作者名称：<%=show_nameu %></h3>
                                                        <p>作者 ID：<%=show_idu %></p>
                                                        <p>部门职位：<%=show_typeu %></p>
                                                        <p>居住地址：<%=show_addressu %></p>
                                                    </div>
                                                    <div style="width:260px;float:left;margin-left:20px;padding-top:40px; position:relative;display:block">
                                                        <p class="span"><span>日期：<%=show_timesu %></span></p>
                                                        <p class="span"><span style="font:14px/14px 微软雅黑,'微软雅黑',Arial,'Microsoft YaHei','宋体'sans-serif;">联系电话：<%=show_numu %></span></p>
                                                        <p>邮箱地址：<%=show_emailu %></p>
                                                        <p>备注信息：<%=show_otheru %></p>
                                                    </div>
                                                </div>
                                                <div style="width:660px;height:100px;margin-top:-12px; padding-left:20px;border-left:1px solid #e6e2dd; text-align:left; position:relative;display :block;">
                                                    <p style="font:12px/12px 微软雅黑,'微软雅黑',Arial,'Microsoft YaHei','宋体'sans-serif;color:#000;">作者详细介绍：</p>
                                                    <div style="width:-webkit-calc(100% - 20px);min-height:66px;"><p style="font:12px/14px 微软雅黑,'微软雅黑',Arial,'Microsoft YaHei','宋体'sans-serif;color:#484848;"><%=show_describeu %></p></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="page-main home-main">
                <div class="container clearfix">
                    <div id="view-hot3" class="home-brick-box-1 yf-plain-box">
                        <div class="box-hd">
                            <h2 class="title">详细介绍</h2>
                        </div>
                        <div id="goodsBox3" class="box-bd">
                            <div class="row">
                                <div id ="show_content3" class="show_content">
                                    <div class="dt"><i>*</i>信息总览</div>
                                    <div class="dd">
                                        <div class="content-container" style="width:100%;min-height:120px;padding-left:10px;text-align:left; position:relative;display :block;">
                                            <div style="width:-webkit-calc(100% - 20px);min-height:75px; text-align:center"><p style="font:12px/14px 微软雅黑,'微软雅黑',Arial,'Microsoft YaHei','宋体'sans-serif;color:#484848;"><%=show_describe%></p><asp:Image ID="Image3" runat="server" style= "width:auto;height:100%;margin:auto;" class="search_img"/></div>
                                        </div>
                                    </div>                       
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="page-footer">
                <div class="footer">© 2016 翼帆展示 版权所有 冀ICP备xxxxxxxx号</div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
