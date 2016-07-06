<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="allGoods-page.aspx.cs" Inherits="yifan.allGoods_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name = "keywords" content = "hebei,河北工程大学,自主研发产品,河北工程大学自主研发产品,www.hebeu.edu.cn,河北邯郸" />
<meta name = "description" content = "河北省邯郸市河北工程大学师生自主研发产品展示网站,自主研发产品展示、联系、销售、报价,为您提供最新、最全的科技信息，提供最优质的服务。最新科研产品展示销售报价信息尽在翼帆"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1 user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>翼帆网展示网页</title>
    <link href="css/allGoods_view.css" rel="stylesheet" />
    <script src="js/jquery.min.1.7.2.js"></script>
    <script src="js/allGoods_view.js"></script>
    <script src="web/js/bktotop.js"></script>
</head>
<body>
    <form id="Form1" runat="server">
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
                                <a class="link-category" href="#"><span class="text">全部展品</span></a>
                                <div class="site-category">
                                    <ul class="site-category-list clearfix">
                                        <li class="category-item"></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="link" href="#goods-new" target="_blank"><span class="text">最新展品</span><span class="arrow"></span></a>
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
                                <a class="link" href="#"><span class="text">明星展品</span><span class="arrow"></span></a>
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
                                <a class="link" href="#view-hot"><span class="text">热门展品</span><span class="arrow"></span></a>
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
                                <a class="link" href="#view-good"><span class="text">好评展品</span><span class="arrow"></span></a>
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
                                <a class="link" href="#view-well"><span class="text">优秀展品</span><span class="arrow"></span></a>
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
                                <a class="link" href="#"><span class="text">全部展品</span><span class="arrow"></span></a>
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
                        <div class="search-form clearfix">
                            <label for="search" class="hide">站内搜索</label>
                            <input type="search" id="search" class="search-text" placeholder="展品名称" />
        <%--                    <input type="submit" class="search-btn" value="go" />--%>
                            <a id="search-go"><div class="search-btn"><div class="search-icon"></div></div></a>
                            <div class="search-hot-words" style="display:block;">
                                <a href="web/search-result.aspx?content=展品123123" target="_blank" >hotword-1</a>
                                <a href="web/search-result.aspx?content=展品67730011101" target="_blank" >hotword-2</a>
                            </div>
                            <div class="keyword-list hide">
                                <ul class="result-list">
                                    <li data-key="123456"><a href="web/search-result.aspx?content=展品123123" target="_blank" >热点关键词1<span class="result">text</span></a></li>
                                    <li data-key="123456"><a href="web/search-result.aspx?content=展品67730011101" target="_blank" >热点关键词2<span class="result">text</span></a></li>
                                    <li data-key="123456"><a href="web/search-result.aspx?content=展品67730011101" target="_blank" >热点关键词3<span class="result">text</span></a></li>
                                    <li data-key="123456"><a href="web/search-result.aspx?content=展品67730011101" target="_blank" >热点关键词4<span class="result">text</span></a></li>
                                    <li data-key="123456"><a href="web/search-result.aspx?content=展品67730011101" target="_blank" >热点关键词5<span class="result">text</span></a></li>
                                    <li data-key="123456"><a href="web/search-result.aspx?content=展品123123" target="_blank" >热点关键词6<span class="result">text</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="page-main home-main">
                <div class="container clearfix">
                    <div id="view-hot" class="home-brick-box yf-plain-box">
                        <div class="box-hd">
                            <h2 class="title">全部展品</h2>
                            <div class ="more">
                                <a class="more-link"><i class="more-i"></i></a>
                            </div>
                        </div>
                        <div id="goodsBox1" class="box-bd">
                            <div class="row">
                                <div class="span4 span-first">
                                    <ul class="brick-promo-list clearfix">
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[0] %>" target="_blank"><img src="<%=goodsImg[0] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[0] %>" target="_blank"><%=goodsName[0] %></a></h3>
                                            <p class="price"><%=titleStr[0] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new">新品</div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[1] %>" target="_blank"><img src="<%=goodsImg[1] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[1] %>" target="_blank"><%=goodsName[1] %></a></h3>
                                            <p class="price"><%=titleStr[1] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new">新品</div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="span16">
                                    <ul class="brick-list clearfix">
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[2] %>" target="_blank"><img src="<%=goodsImg[2] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[2] %>" target="_blank"><%=goodsName[2] %></a></h3>
                                            <p class="price"><%=titleStr[2] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new">新品</div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[3] %>" target="_blank"><img src="<%=goodsImg[3] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[3] %>" target="_blank"><%=goodsName[3] %></a></h3>
                                            <p class="price"><%=titleStr[3] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new">新品</div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[4] %>" target="_blank"><img src="<%=goodsImg[4] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[4] %>" target="_blank"><%=goodsName[4] %></a></h3>
                                            <p class="price"><%=titleStr[4] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new">新品</div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[5] %>" target="_blank"><img src="<%=goodsImg[5] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[5] %>" target="_blank"><%=goodsName[5] %></a></h3>
                                            <p class="price"><%=titleStr[5] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new">新品</div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[6] %>" target="_blank"><img src="<%=goodsImg[6] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[6] %>" target="_blank"><%=goodsName[6] %></a></h3>
                                            <p class="price"><%=titleStr[6] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new">新品</div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[7] %>" target="_blank"><img src="<%=goodsImg[7] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[7] %>" target="_blank"><%=goodsName[7] %></a></h3>
                                            <p class="price"><%=titleStr[7] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new">新品</div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[8] %>" target="_blank"><img src="<%=goodsImg[8] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[8] %>" target="_blank"><%=goodsName[8] %></a></h3>
                                            <p class="price"><%=titleStr[8] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new">新品</div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[9] %>" target="_blank"><img src="<%=goodsImg[9] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[9] %>" target="_blank"><%=goodsName[9] %></a></h3>
                                            <p class="price"><%=titleStr[9] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new">新品</div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div id="goodsBox2" class="box-bd">
                            <div class="row">
                                <div class="span4 span-first">
                                    <ul class="brick-promo-list clearfix">
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[10] %>" target="_blank"><img src="<%=goodsImg[10] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[10] %>" target="_blank"><%=goodsName[10] %></a></h3>
                                            <p class="price"><%=titleStr[10] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new">新品</div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[11] %>" target="_blank"><img src="<%=goodsImg[11] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[11] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[11] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="span16">
                                    <ul class="brick-list clearfix">
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[12] %>" target="_blank"><img src="<%=goodsImg[12] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[12] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[12] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[13] %>" target="_blank"><img src="<%=goodsImg[13] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[13] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[13] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[14] %>" target="_blank"><img src="<%=goodsImg[14] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[14] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[14] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[15] %>" target="_blank"><img src="<%=goodsImg[15] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[15] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[15] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[16] %>" target="_blank"><img src="<%=goodsImg[16] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[16] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[16] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[17] %>" target="_blank"><img src="<%=goodsImg[17] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[17] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[17] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[18] %>" target="_blank"><img src="<%=goodsImg[18] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[18] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[18] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[19] %>" target="_blank"><img src="<%=goodsImg[19] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[19] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[19] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div id="goodsBox3" class="box-bd">
                            <div class="row">
                                <div class="span4 span-first">
                                    <ul class="brick-promo-list clearfix">
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[20] %>" target="_blank"><img src="<%=goodsImg[20] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[20] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[20] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[21] %>" target="_blank"><img src="<%=goodsImg[21] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[21] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[21] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="span16">
                                    <ul class="brick-list clearfix">
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[22] %>" target="_blank"><img src="<%=goodsImg[22] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[22] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[22] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[23] %>" target="_blank"><img src="<%=goodsImg[23] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[23] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[23] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[24] %>" target="_blank"><img src="<%=goodsImg[24] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[24] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[24] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[25] %>" target="_blank"><img src="<%=goodsImg[25] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[25] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[25] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[26] %>" target="_blank"><img src="<%=goodsImg[26] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[26] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[26] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[27] %>" target="_blank"><img src="<%=goodsImg[27] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[27] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[27] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[28] %>" target="_blank"><img src="<%=goodsImg[28] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[28] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[28] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[29] %>" target="_blank"><img src="<%=goodsImg[29] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[29] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[29] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div id="goodsBox4" class="box-bd">
                            <div class="row">
                                <div class="span4 span-first">
                                    <ul class="brick-promo-list clearfix">
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[30] %>" target="_blank"><img src="<%=goodsImg[30] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[30] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[30] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[31] %>" target="_blank"><img src="<%=goodsImg[31] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[31] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[31] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="span16">
                                    <ul class="brick-list clearfix">
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[32] %>" target="_blank"><img src="<%=goodsImg[32] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[32] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[32] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[33] %>" target="_blank"><img src="<%=goodsImg[33] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[33] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[33] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[34] %>" target="_blank"><img src="<%=goodsImg[34] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[34] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[34] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[35] %>" target="_blank"><img src="<%=goodsImg[35] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[35] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[35] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[36] %>" target="_blank"><img src="<%=goodsImg[36] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[36] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[36] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[37] %>" target="_blank"><img src="<%=goodsImg[37] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[37] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[37] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[38] %>" target="_blank"><img src="<%=goodsImg[38] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[38] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[38] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                        <li class="brick-item brick-item-m brick-item-m-2">
                                            <div class="figure figure-img"><a href="<%=goodsUrl[39] %>" target="_blank"><img src="<%=goodsImg[39] %>" /></a></div>
                                            <h3 class="title"><a href="<%=goodsUrl[39] %>" target="_blank">name</a></h3>
                                            <p class="price"><%=titleStr[39] %></p>
                                            <p class="rank"><span class="num">hot</span></p>
                                            <div class="flag flag-new"></div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="page-footer">
                <div class="posts-nav-wrap">
        	        <ul class="posts-nav">          	
                        <li class="previous"><a id="btn_pre" class="previous" runat="server" onserverclick="btn_prePage_ServerClick">←</a></li>
                        <li class="next"><a id="btn_next" class="next" runat="server" onserverclick="btn_nextPage_ServerClick">←</a></li>
                        <li><asp:Label ID="pageCount" runat="server" Text="1"></asp:Label></li>
                        <li><input type="hidden" id="numHideId" name="numHideName" runat="server" /></li>
                    </ul>
                    <div class="allPage-num"><span class="allPageNum"></span></div>
                </div>
                <div class="footer">© 2016 翼帆展示 版权所有 冀ICP备xxxxxxxx号</div>
            </div>
        </div>
    </div>
    </form>
    <footer id="footer" style="background:#FEFEFE;">
    </footer>
</body>
</html>
