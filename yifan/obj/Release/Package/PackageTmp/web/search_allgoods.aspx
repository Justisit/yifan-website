<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search_allgoods.aspx.cs" Inherits="yifan.web.search_allgoods" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>all_goods</title>

<style>
body{margin:0px;background:#f5f5f5; display:block;}
<!--nav 样式-->
.all_goods_body{width:auto;min-width:750px;}
a {text-decoration: none;}
a:link,a:visited{color:#4E92DF}
a:hover,a:active{color:#CA4536}
ol, ul {list-style: none;}


.header-nav { height:72px;background:url(/images/mainNav_bg.png) 0 0 repeat; z-index:1;}
.mainMenu { height:72px;float:right; }
.mainMenu ul{ margin:0;padding:0; }
.mainMenu ul li{ height:72px; line-height:72px; float:left; position:relative; z-index:2;}
.mainMenu ul li a{ width:120px; height:68px; line-height:64px; padding-top:4px; font-size:16px; color:#fff; text-align:center; text-decoration:none; display:block;}
.mainMenu ul li a:hover{ background:#616162;}
.mainMenu ul li a.menu_a {height: 68px;line-height: 64px;border-top: 4px solid #1620db;padding-top: 0;}
.mainMenu ul li a.menu_b {height: 68px;line-height: 64px;border-top: 4px solid #fff200;padding-top: 0;}
.mainMenu ul li a.menu_c {height: 68px;line-height: 64px;border-top: 4px solid #00d30b;padding-top: 0;}
.mainMenu ul li a.menu_d {height: 68px;line-height: 64px;border-top: 4px solid #1a00fc;padding-top: 0;}
.mainMenu ul li a.menu_e {height: 68px;line-height: 64px;border-top: 4px solid #fc00e5;padding-top: 0;}
.header-logo {width: 200px;height: 72px;position: relative;left: 20px;float: left;/*text-indent: -999px;*/background: url() 0 0 no-repeat;display: block;}
.header-logo a{width: 200px;height: 72px;line-height:64px;font-size:20px;color:#000; position: relative;left: 60px;text-align:center; text-decoration:none; display:block; }
.header-logo a:hover{ background:rgba(1, 1, 1, 0.6); color :#fff}


.container{
    max-width:100%;
    margin:auto;
}
form{
    overflow-x:scroll;
}
.table{
    min-width:750px;
    min-height:600px;
    max-width:1250px;
    max-height:100%;
    margin:10px auto;
    font:12px/14px 微软雅黑,'微软雅黑',Arial,'Microsoft YaHei','宋体'sans-serif;
    color: #000;
    border:solid #cdcdcd;
    border-width:0px 1px 1px 0px;
    position:relative;
}
.table tr:nth-child(odd){
    background:#f2f2f2;
}

.table tr:nth-child(even){
    background:#fff;
}
.table tr:hover{
    background:#1bceff;
}
.table tr td{
    min-width:30px;
    max-width:240px;
    max-height:100%;
    border:solid #cdcdcd;
    border-width:1px 0px 0px 1px;
    padding-left:10px;
    overflow:hidden;
    text-overflow:ellipsis;
    white-space:normal;
}
/*.table tr td:nth-child(13){
    width:60px;
    display:block;
}*/
.table tr td:nth-child(3) input[type="text"]{
    width:60px;
    overflow:hidden;
}
.table tr td:nth-child(4) input[type="text"]{
    width:100px;
    overflow:hidden;
}
.table tr td:nth-child(5) input[type="text"]{
    width:100px;
    overflow:hidden;
}
.table tr td:nth-child(6) input[type="text"]{
    width:70px;
    overflow:hidden;
}
.table tr td:nth-child(7) input[type="text"]{
    width:100px;
    overflow:hidden;
}
.table tr td:nth-child(10) input[type="text"]{
    width:150px;
    overflow:hidden;
}
.table tr td:nth-child(11) input[type="text"]{
    width:150px;
    overflow:hidden;
}
.table tr td:nth-child(12) input[type="text"]{
    width:150px;
    overflow:hidden;
}
.fixed{
    position:relative;
    table-layout:fixed;
    top:expression(this.offsetParent.scrollTop);
    z-index:10;
}

</style>
</head>
<body>
    <header>
        <div class="all_goods_body">
        <div class ="header-nav">
            <div class="header-logo"><a href="../admin_signin_from.aspx" title="Admin Sign In Form">所有展品信息后台预览</a></div>
            <div class ="mainMenu">
                <ul>
                    <li><a class="menu_a" href="home_page.aspx" target="_self">首页图片</a></li>
                    <li><a class="menu_b" href="add_goods.aspx" target="_self">添加展品</a></li>
                    <li><a class="menu_c" href="search_goods.aspx" target="_self">查询修改</a></li>
                    <li><a class="menu_d" href="delete_goods.aspx" target="_self">删除展品</a></li>
                    <li><a class="menu_e" href="http://www.hebeu.edu.cn" target="_blank">HEBEU</a></li>
                </ul>
            </div>
        </div>
    </div>
    </header>
    <form id="form1" runat="server">
    <div class="container">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="2"
                                ForeColor="#cdcdcd" GridLines="None" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"
                                OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDataBound="GridView1_RowDataBound" OnPageIndexChanging="GridView1_PageIndexChanging" 
                                AllowPaging="True" AllowSorting="True" PageSize="20" CssClass="table">
                                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="goods_id" HeaderText="序号" ReadOnly="True" />
                                    <asp:BoundField DataField="goods_id" HeaderText="展品编号" ReadOnly="True" />
                                    <asp:BoundField DataField="goods_name" HeaderText="展品名称" />
                                    <asp:BoundField DataField="goods_type" HeaderText="展品类型" />
                                    <asp:BoundField DataField="goods_title" HeaderText="title信息" />
                                    <asp:BoundField DataField="goods_creator_id" HeaderText="作者 ID" />
                                    <asp:BoundField DataField="goods_patent_num" HeaderText="专利号" />
                                    <asp:BoundField DataField="goods_img_name" HeaderText="图片name" />
                                    <asp:BoundField DataField="goods_img_address" HeaderText="图片地址" />
                                    <asp:BoundField DataField="goods_intro" HeaderText="详细介绍" />
                                    <asp:BoundField DataField="goods_times" HeaderText="添加时间" />
                                    <asp:BoundField DataField="goods_other" HeaderText="备注信息" />
                                    <asp:CommandField HeaderText="编辑" ShowEditButton="True" />
                                    <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                                </Columns>
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" CssClass="fixed" />
                            </asp:GridView>
    </div>
    </form>
</body>
</html>