<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="todayNew.aspx.cs" Inherits="yifan.web.todayNew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=12, minimum-scale=1 user-scalable=yes" />
    <title></title>
<style>
body{
    margin:0px;
    background:#e6e2dd;
}
@media screen and (max-width:1260px) and (min-width:768px) {
    .container{
        width:86%;
        margin:auto;
        top:0px;
        left:0px;
        right:0px;
        bottom:0px;
        padding-left: 2%;
        padding-right: 2%;
        background:#e6e2dd;
    }
    .img-show{
        width:460px;
        height:auto;
        padding:20px 10px;
        float:left;
        position:relative;display:block;
   }
    .details{
        width:460px; float:left;padding-top:20px;position:relative;
    }
    .details1{
        width:240px; float:left;padding-left:10px;position:relative;border-left:1px solid #e6e2dd;display:block;
    }
    .details2{
        float:left;margin-left:10px;padding-top:16px; position:relative;display:block
    }
}
@media screen and (max-width:765px) {
    .container{
        margin-right: auto;
        margin-left: auto;
        padding-left: 15px;
        padding-right: 15px;
        background:#e6e2dd;
    }
    .img-show{
        width:100%;
        height:auto;
        padding:20px 10px;
        float:left;
        position:relative;
        display:block;
    }
    .show-img{
        width:100%;
        height:100%;
    }
    .details{
        width:100%;padding-top:20px;position:relative;display:block;float:left;
    }
    .details1{
        width:60%;padding-left:10px;position:relative;border-left:1px solid #e6e2dd;display:block;
    }
    .details2{
        padding-top:16px; position:relative;border-left:1px solid #e6e2dd;display:block
    }
}
.clearfix {zoom: 1;}/* IE<8*/
.clearfix:before, .clearfix:after {
display: table;
content: "";
height: 0;
clear: both;
visibility: hidden;
}
.nav-bar{
    width:100%;
    height:60px;
    /*margin-right: -15px;
    margin-left: -15px;*/
    background:#111f36;
}
.navbar-toggle-btn{
    margin-top: 13px;
    margin-right: 15px;
    margin-bottom: 13px;
    padding: 9px 10px;
    background-color: transparent;
    border: 1px solid transparent;
    border-radius: 4px;
    position: relative;
    float: right;
    -webkit-appearance: button;
    cursor: pointer;
}
.navbar-toggle-btn:hover {
    background:rgba(0,0,0,0.2);
}
.icon-bar {
    width: 22px;
    height: 2px;
    border-radius: 1px;
    background-color: #ffffff;
    display: block;
}
.icon-bar + .icon-bar {
    margin-top: 4px;
}
.navbar-brand {
    width: 100px;
    margin: 12px 0 0;
    padding: 0;
    color: #b9c8e0;
    float:left;
}
.navbar-nav{
    max-height: 340px;
    margin: 10px -15px;
    padding-right: 15px;
    padding-left: 15px;
    border-color: #111f36;
    list-style: none;
    display:none;
    overflow-x: visible;
    border-top: 1px solid transparent;
    box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1);
    -webkit-overflow-scrolling: touch;
}
.nav > li {
    position: relative;
    display: block;
}
.navbar-nav > li > a {
    color: #2d25ed;
}
.navbar-nav > li > a:hover {
    color: #fff;
    background-color: rgba(0, 0, 0, 0.2);
}
.home-brick-1{
    display:block;
}
.home-brick-2{
    display:block;
}
.img-p{
    font:12px/14px 微软雅黑,'微软雅黑',Arial,'Microsoft YaHei','宋体'sans-serif;color: #cdcdcd;padding-right: 3px;
}
p{
    font:14px/14px 微软雅黑,'微软雅黑',Arial,'Microsoft YaHei','宋体'sans-serif;
    color: #666;
    padding-right: 3px;
}
p span{
    font:12px/14px 微软雅黑,'微软雅黑',Arial,'Microsoft YaHei','宋体'sans-serif;
    color: #cdcdcd;
    padding-right: 3px;
}
.details-text{
    width:100%;
    height:auto;
}
.text{
    margin:12px 12px;
    padding:12px 12px;
    border:1px solid #cdcdcd;
    border-radius:36px;
}
</style>

<script>
    document.getElementsByClassName(".navbar-toggle-btn").toggle(function () {
        document.getElementsByClassName(".navbar-nav").show();
    });
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container clearfix">
        <div class="nav-bar clearfix">
            <button class="navbar-toggle-btn" type="button">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="/" class="navbar-brand"><img src="/" /></a>
            <nav class="navbar-navCollapse clearfix" role="navigation" style="height:1px; color:#cdcdcd;">
                <ul class="nav navbar-nav">
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
            </nav>
        </div>
        <div class="home-brick-1 clearfix">
            <div class="img-show">
                <asp:Image ID="Image1" runat="server" class="search-img"/>
                <p class="img-p">图片name：<%=show_img_name %></p>
            </div>
            <div class="details">
                <div>
                    <div class="details1">
                        <h3><%=show_name%></h3>
                        <p>作者 ID：<%=show_creator%></p>
                        <p>展品类型：<%=show_type%></p>
                        <p>title信息：<%=show_title%></p>
                    </div>
                    <div class="details2">
                        <p><span>日期：<%=show_times%></span></p>
                        <p>展品编号：<%=show_num%></p>
                        <p>专 利 号：<%=show_patent%></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="home-brick-2">
            <div class="details-text">
                <p>详细介绍：</p>
                <div class="text">
                    <p style="font:12px/14px 微软雅黑,'微软雅黑',Arial,'Microsoft YaHei','宋体'sans-serif;color:#484848;"><%=show_describe%></p>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
