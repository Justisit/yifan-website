<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search-result.aspx.cs" Inherits="yifan.web.search_result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>搜索结果页</title>
    <link href="css/search-result.css" rel="stylesheet" />
    <script src="../js/jquery.min.1.7.2.js"></script>
    <script src="../js/allGoods_view.js"></script>
    <script src="../js/bktotop.js"></script>
</head>
<body>
    <form id="form1" runat="server">
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
                        <a class="link-category" href="../../allGoods_page.aspx#" target="_blank" ><span class="text">全部展品</span></a>
                        <div class="site-category">
                            <ul class="site-category-list clearfix">
                                <li class="category-item"></li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="link" href="../../all_goods_view.aspx#goods-new" target="_blank"><span class="text">最新展品</span><span class="arrow"></span></a>
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
                        <a class="link" href="../../all_goods_view.aspx#" target="_blank" ><span class="text">明星展品</span><span class="arrow"></span></a>
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
                        <a class="link" href="../../all_goods_view.aspx#view-hot" target="_blank" ><span class="text">热门展品</span><span class="arrow"></span></a>
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
                        <a class="link" href="../../all_goods_view.aspx#view-good" target="_blank" ><span class="text">好评展品</span><span class="arrow"></span></a>
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
                        <a class="link" href="../../all_goods_view.aspx#view-well" target="_blank" ><span class="text">优秀展品</span><span class="arrow"></span></a>
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
                        <a class="link" href="../../allGoods_page.aspx#" target="_blank" ><span class="text">全部展品</span><span class="arrow"></span></a>
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
                        <a href="search-result.aspx?content=展品123123" target="_blank" >hotword-1</a>
                        <a href="search-result.aspx?content=展品67730011101" target="_blank" >hotword-2</a>
                    </div>
                    <div class="keyword-list hide">
                        <ul class="result-list">
                            <li data-key="123456"><a href="search-result.aspx?content=展品123123" target="_blank" >热点关键词1<span class="result">text</span></a></li>
                            <li data-key="123456"><a href="search-result.aspx?content=展品67730011101" target="_blank" >热点关键词2<span class="result">text</span></a></li>
                            <li data-key="123456"><a href="search-result.aspx?content=展品67730011101" target="_blank" >热点关键词3<span class="result">text</span></a></li>
                            <li data-key="123456"><a href="search-result.aspx?content=展品67730011101" target="_blank" >热点关键词4<span class="result">text</span></a></li>
                            <li data-key="123456"><a href="search-result.aspx?content=展品67730011101" target="_blank" >热点关键词5<span class="result">text</span></a></li>
                            <li data-key="123456"><a href="search-result.aspx?content=展品123123" target="_blank" >热点关键词6<span class="result">text</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="result-container clearfix">
        <div id="show-result" class="show-result"></div>
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" RepeatDirection="Horizontal">
            <ItemTemplate>
            <div class="goods-con clearfix">
                <div class="goods-img"><a class="goods-url" href="../../singleGoods-page.aspx?goodsNum=<%#Eval("goods_id") %>" target="_blank" ><img class="img" src="<%#Eval("goods_img_address") %>" /></a><p class="img-name"><%#Eval("goods_img_name") %></p></div>
                <div class="goods-msg clearfix">
                    <div>
                        <div class="details1">
                            <a class="goods-url" href="../../singleGoods-page.aspx?goodsNum=<%#Eval("goods_id") %>" target="_blank" ><h3><%#Eval("goods_name") %></h3></a>
                            <a class ="creator" href="../../singleGoods-page.aspx?goodsNum=<%#Eval("goods_id") %>" target="_blank" ><p>作者名称：<%#Eval("u_name") %></p></a>
                            <p>展品类型：<%#Eval("goods_type") %></p>
                            <p>title信息：<%#Eval("goods_title") %></p>
                        </div>
                        <div class="details2">

                            <p><span>日期：<%#Eval("goods_times") %></span></p>
                            <a class="creator" href="../../singleGoods-page.aspx?goodsNum=<%#Eval("goods_id") %>" target="_blank" ><p>作者 ID：<%#Eval("u_id") %></p></a>
                            <a class="goods-url" href="../../singleGoods-page.aspx?goodsNum=<%#Eval("goods_id") %>" target="_blank" ><p>展品编号：<%#Eval("goods_id") %></p></a>
                        </div>
                    </div>
                </div>
            </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <div class="page-footer">
        <div class="posts-nav-wrap">
            <ul class="posts-nav">          	
                <li class="previous"><a id="btn_pre" class="previous" onserverclick="btn_prePage_ServerClick">←</a></li>
                <li class="next"><a id="btn_next" class="next" onserverclick="btn_nextPage_ServerClick">←</a></li>
                <li><asp:Label ID="pageCount" runat="server" Text="1"></asp:Label></li>
                <li><input type="hidden" id="numHideId" name="numHideName" runat="server" /></li>
            </ul>
            <div class="allPage-num"><span class="allPageNum"></span></div>
        </div>
    </div>
    </form>
    <footer id="footer" style="background:#FEFEFE;">
        <div class="footer">© 2016 翼帆展示 版权所有 冀ICP备xxxxxxxx号</div>
    </footer>
</body>
</html>
