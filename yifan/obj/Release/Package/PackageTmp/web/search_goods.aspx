<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search_goods.aspx.cs" Inherits="yifan.web.search_goods" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>查询展品及修改</title>
    <link href="../css/admin_search.css" rel="stylesheet" />
    <script src="../js/jquery-1.7.1.min.js"></script>
    <script src="../js/addgoods.js"></script>
</head>
<body>





<header class="header">
	<!--[if IE 5]>
	<script type="text/javascript">
		window.location.href="/new/cn/sc/lowBrowser.html";
	</script>
<![endif]--> 
<!--[if IE 6]>
	<script type="text/javascript">
		window.location.href="/new/cn/sc/lowBrowser.html";
	</script>
<![endif]-->
<!--[if IE 7]>
	<script type="text/javascript">
		window.location.href="/new/cn/sc/lowBrowser.html";
	</script>
<![endif]--> 
<div class="add_goods_body">
    <div class ="header-nav">
        <div class="header-logo"><a>查询展品及修改</a></div>
        <div class ="mainMenu">
            <ul>
                <li><a class="menu-a" href="home_page.aspx" target="_self">首页图片</a></li>
                <li><a class="menu-b" href="add_goods.aspx" target="_self">添加展品</a></li>
                <li><a class="menu_c" href="search_goods.aspx" target="_self">查询修改</a></li>
                <li><a class="menu-d" href="users_manage.aspx" target="_self">用户管理</a></li>
                <li><a class="menu-e" href="http://www.hebeu.edu.cn" target="_blank">HEBEU</a></li>
            </ul>
        </div>
    </div>
</div>
</header>

<div class="container clearfix">
    <div class="content_box">
        <ul class="btn_tab"><li class="current">产品信息查询</li><li>展品信息修改</li></ul>
        <form id="form" runat="server" >
            <div id="form_1" class ="form">
                <div class="tabLeft clearfix">
                    <ul class="clearfix">
                        <li>
                            <dl>
							    <dt><i>*</i>查询类型</dt>
							    <dd>
                                    <div id="select_box5" class="select_box">
                                        <input name="choose05" type="hidden" id="choose05" value="展品编号" class="input_hidden" runat="server" />
                                        <div id="choose5" class="select_showbox" style="cursor:pointer">展品编号</div>
                                        <ul style="display: none;">
                                            <li class="selected" style="cursor: pointer;">展品编号</li>
                                            <li style="cursor: pointer;" onclick="showType();">展品类型</li>
                                            <li style="cursor: pointer;">专 利 号</li>
                                            <li style="cursor: pointer;">作者 ID</li>
                                            <li style="cursor: pointer;">作者名称</li>
                                            <li style="cursor: pointer;">title 信息</li>
                                            <li style="cursor: pointer;">查询所有</li>
                                        </ul>
                                    </div>
                                    <input type="text" id="input_box1" name="input_box1" class="input_box" placeholder="请输入查询内容！" />

                                    <div id="select_box1" class="select_box" style="display:none">
                                        <input name="choose01" type="hidden" id="choose01" value="展品编号" class="input_hidden" runat="server" />
                                        <div id="choose1" class="select_showbox" style="cursor:pointer">1</div>
                                        <ul style="display: none;">
                                            <li class="selected" style="cursor: pointer;">1</li>
                                            <li style="cursor: pointer;">类型一</li>
                                            <li style="cursor: pointer;">类型二</li>
                                            <li style="cursor: pointer;">类型三</li>
                                            <li style="cursor: pointer;">类型四</li>
                                        </ul>
                                    </div>
                                    <div id="select_box2" class="select_box" style="display:none">
                                        <input name="choose02" type="hidden" id="choose02" value="2" class="input_hidden" runat="server" />
                                        <div id="choose2" class="select_showbox" style="cursor: pointer;">2</div>
                                        <ul style="display: none;">
                                            <li class="selected" style="cursor: pointer;">2</li>
                                            <li style="cursor: pointer;">类型五</li>
                                            <li style="cursor: pointer;">类型六</li>
                                            <li style="cursor: pointer;">类型七</li>
                                            <li style="cursor: pointer;">类型八</li>
                                        </ul>
                                    </div>
                                    <div class="magnifier"></div>
                                    <input type="button" class="btn_blue btn_search" id="btn_search" value="查询" runat="server" onserverclick="btn_search_ServerClick"/>
							    </dd>
						    </dl>
                        </li>                  
                    </ul>
                    <div id ="show_content" class="show_content">
                        <div class="dt"><i>*</i>查询结果</div>
                        <div class="dd">
                            <div style="width:auto;height:200px;">
                                <div style ="width:240px;height:160px;padding:20px 10px; float:left;position:relative;">
                                    <asp:Image ID="Image1" runat="server" class="search_img"/>
                                    <p style="font:12px/14px 微软雅黑,'微软雅黑',Arial,'Microsoft YaHei','宋体'sans-serif;color: #cdcdcd;padding-right: 3px;">图片name：<%=show_img_name %></p>
                                </div>
                                <div style="width:460px; float:left;padding-top:20px;position:relative;">
                                    <div>
                                        <div style="width:240px; float:left;padding-left:10px;position:relative;border-left:1px solid #e6e2dd;display:block;">
                                            <h3><%=show_name%></h3>
                                            <p>作者 ID：<%=show_creator%></p>
                                            <p>展品类型：<%=show_type%></p>
                                            <p>title信息：<%=show_title%></p>
                                        </div>
                                        <div style="float:left;margin-left:10px;padding-top:16px; position:relative;display:block">
                                            <p><span>日期：<%=show_times%></span></p>
                                            <p>展品编号：<%=show_num%></p>
                                            <p>专 利 号：<%=show_patent%></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div style="width:720px;height:120px;padding-left:10px;text-align:left; position:relative;display :block;">
                                <p>详细介绍：</p>
                                <div style="width:-webkit-calc(100% - 20px);min-height:75px;"><p style="font:12px/14px 微软雅黑,'微软雅黑',Arial,'Microsoft YaHei','宋体'sans-serif;color:#484848;"><%=show_describe%></p></div>
                            </div>
                        </div>
                        <div class="dd2" id="dd2" runat="server">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="6" ForeColor="#cdcdcd" GridLines="None" 
                                OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" 
                                OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDataBound="GridView1_RowDataBound" OnPageIndexChanging="GridView1_PageIndexChanging" 
                                AllowPaging="true" AllowSorting="True" PageSize="10" CssClass="table" ShowHeaderWhenEmpty="true" EmptyDataText="无此查询数据！" >
                                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="序号" ReadOnly="True" />
                                    <asp:BoundField DataField="goods_id" HeaderText="展品编号" ReadOnly="True" />
                                    <asp:BoundField DataField="goods_name" HeaderText="展品名称" />
                                    <asp:BoundField DataField="goods_type" HeaderText="展品类型" />
                                    <asp:BoundField DataField="goods_title" HeaderText="title信息" />
                                    <asp:BoundField DataField="goods_creator_id" HeaderText="作者 ID" />
                                    <asp:BoundField DataField="goods_patent_num" HeaderText="专利号" />
                                    <asp:CommandField HeaderText="编辑" ShowEditButton="False" />
                                    <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                                </Columns>
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                        </div>
                        
                    </div>
                </div>
            </div>
            <div id="form_2" class ="form">
                <div class="tabRight clearfix"style="display:none;">
                    <ul>
                        <li>
                            <dl>
							    <dt><i>*</i>查询类型</dt>
							    <dd>
                                    <div id="select_box6" class="select_box">
                                        <input type="hidden" id="choose06" name="choose06" value="展品编号" class="input_hidden" runat="server" />
                                        <div id="choose6" class="select_showbox" style="cursor:pointer">展品编号</div>
                                        <ul style="display: none;">
                                            <li class="selected" style="cursor: pointer;">展品编号</li>
                                            <%--<li style="cursor: pointer;">展品类型</li>--%>
                                            <li style="cursor: pointer;">专 利 号</li>
                                           <%-- <li style="cursor: pointer;">作者 ID</li>
                                            <li style="cursor: pointer;">作者名称</li>
                                               <li style="cursor: pointer;">title 信息</li>
                                            <li style="cursor: pointer;">查询所有</li>--%>
                                        </ul>
                                    </div>
                                    <input type="text" id="input_box2" name="input_box2" class="input_box" placeholder="请输入查询内容！" />
                                    <input type="button" class="btn_blue" id="btn_show" value="显示" runat="server" onserverclick="btn_show_ServerClick"/>
                                    <input type="button" class="btn_blue" id="btn_edit" value="修改" runat="server" onserverclick="btn_edit_ServerClick"/>
							    </dd>
						    </dl>
                        </li>                  
                    </ul>
                    <div id ="show_content2" class="show_content">
                        <div class="dt"><i>*</i>显示结果</div>
                        <div class="dd">
                            <div style="width:auto;height:200px;">
                                <div style ="width:240px;height:200px;padding:20px 10px; float:left;position:relative;">
                                    <div id="show_images">
                                        <asp:Image ID="Image2" runat="server" class="search_img"/>
                                        <img src="#" id="newImg" class="newImg"/>
                                    </div>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </div>
                                <div style="width:460px;float:left;padding-top:20px;position:relative;">
                                    <div>
                                        <div style="width:240px; float:left;padding-left:10px;position:relative;border-left:1px solid #e6e2dd;display:block;">
                                            <h6>展品名称：</h6><input type="text" placeholder="展品名称" name="gName" id="gName" value="<%=show_name1 %>" />
                                            <p>作者 ID：</p><input type="text" placeholder="作者 ID" name="gCreator" id="gCreator" value="<%=show_creator1 %>" />
                                            <p>展品类型：</p><input type="text" placeholder="展品类型" name="gType" id="gType" value="<%=show_type1 %>" />
                                            <p>title信息：</p><input type="text" style="width:246px;" placeholder="title信息" name="gTitle" id="gTitle" value="<%=show_title1 %>" />
                                        </div>
                                        <div style="float:left;margin-left:10px;padding-top:4px; position:relative;display:block">
                                            <p><span>日期：</span></p><input type="text" placeholder="添加日期" name="gTimes" id="gTimes" value="<%=show_times1 %>" readonly="readonly"/>
                                            <p><span style="font:12px/10px 微软雅黑,'微软雅黑',Arial,'Microsoft YaHei','宋体'sans-serif;">展品编号：</span></p><input type="text" placeholder="展品编号" name="gNumber" id="gNumber" value="<%=show_num1 %>" readonly="readonly"/>
                                            <p>专 利 号：</p><input type="text" placeholder="专利号" name="gPatent" id="gPatent" value="<%=show_patent1 %>" />
                                            <p>备注信息：</p><input type="text" placeholder="备注信息" name="gMessage" id="gMessage" value="<%=show_other1 %>" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div style="width:720px;height:120px;padding:6px 0px 0px 10px;text-align:left;position:relative;display :block;">
                                <p style="width: 70px;position:relative;float: left;margin-left: -250px;">详细介绍：</p><div class="dashboard"></div><span style="margin-left:20px;margin-top:6px;"><input type="button" id="btn_delete" class="btn_delete" value="删除" runat="server" onserverclick="btn_delete_ServerClick"/><a href="javascript:readAgreement();" style="color:#aeaeae;text-decoration:none;">操作说明</a></span>
                                <textarea style="width:-webkit-calc(100% - 20px);min-height:75px;margin-top:-10px;font:10px/12px 微软雅黑,'微软雅黑',Arial,'Microsoft YaHei','宋体'sans-serif;color:#484848;resize:none;" placeholder="为产品的详细介绍" name="gDescribe" id="gDescribe" runat="server" ></textarea>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form> 
    </div>
</div>
<div class="layer-shade" onclick="closeAgreement();"></div>
<div class="layer-iframe" id="serviceAgreement">
	<div class="popup clearfix">
    	<div class="title">Operating Instruction<div class="cloud_bar"></div><a class="close"></a></div>
        <div class="containerBody">
            <h2>尊敬的用户：</h2>
            <p></p>
            <h2></h2>
            
            <h3>一、</h3>  
            <ul>
            <li><p></p><p></p> <p></p></li>
            <li><p></p></li>
            </ul>
            
            <h3>二、</h3> 
            <ul>
            <li><p></p></li>
            <li><p></p></li>
            <li><p></p></li>
            </ul>
            
            <h3>三、</h3>
            <ul>
            <li><p></p> <p></p><p></p></li>
            <li><p></p></li>
            <li><p></p></li>
            </ul>
            
            <h3>四、</h3>   
            <div class="popup_btn">
            	<button type="button" class="btn_close" onclick="closeAgreement()">关闭</button>
            </div>
        </div>
    </div>
</div>
    <div class="validate_layer_container clearfix">
        <div id="validate_layer-shade" class="validate_layer-shade" onclick="btn_ok();"></div>
        <div class="validate_layer_fixer">
            <div class="show_content_m">
                <div class="show_text">
                    <h1 class="show_title"></h1>
                    <div class="show_message">默认messag！</div>
                </div>
                <div class="show_toolbar">
                    <div class="timer"><span id="show_number" class="show_num"></span></div><a href="javascript:btn_ok();" class="btn_closeShow" rel="btn_ok">OK</a><div class="progress"><div class="progress_bar"></div></div>
                </div>
            </div>
        </div>
    </div>
<div style="width:100%;height:auto;background-color:#e6e2dd;"><div class="footer">	© 2016 翼帆展示 版权所有 冀ICP备xxxxxxxx号</div></div>
</body>
</html>
