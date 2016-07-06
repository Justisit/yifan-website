<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="users_manage.aspx.cs" Inherits="yifan.web.users_manage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户信息查询及修改</title>
    <link href="../css/admin_search.css" rel="stylesheet" />
    <script src="../js/jquery-1.7.1.min.js"></script>
    <script src="../js/addgoods.js"></script>
</head>
<body>
<div class="add_goods_body">
    <div class ="header-nav">
        <div class="header-logo"><a>用户信息查询修改</a></div>
        <div class ="mainMenu">
            <ul>
                <li><a class="menu-a" href="home_page.aspx" target="_self">首页图片</a></li>
                <li><a class="menu-b" href="add_goods.aspx" target="_self">添加展品</a></li>
                <li><a class="menu-c" href="search_goods.aspx" target="_self">查询修改</a></li>
                <li><a class="menu_d" href="users_manage.aspx" target="_self">用户管理</a></li>
                <li><a class="menu-e" href="http://www.hebeu.edu.cn" target="_blank">HEBEU</a></li>
            </ul>
        </div>
    </div>
</div>

<div class="container clearfix">
    <div class="content_box">
        <form id="form" runat="server" >
            <div id="from_2" class ="form" style="margin-top:50px" >
                <div class="tabRight clearfix">
                    <ul>
                        <li>
                            <dl>
							    <dt><i>*</i>查询类型</dt>
							    <dd>
                                    <div id="select_box6" class="select_box">
                                        <input type="hidden" id="choose06" name="choose06" value="作者 ID" class="input_hidden" runat="server" />
                                        <div id="choose6" class="select_showbox" style="cursor:pointer">作者 ID</div>
                                        <ul style="display: none;">
                                            <li style="cursor: pointer;">作者 ID</li>
                                            <li style="cursor: pointer;">作者名称</li>
<%--                                            <li style="cursor: pointer;">查询所有</li>--%>
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
                                        <asp:Image ID="Image1" runat="server" class="search_img"/>
                                        <img src="#" id="newImg" class="newImg" />
                                    </div>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </div>
                                <div style="width:460px;float:left;padding-top:20px;position:relative;">
                                    <div>
                                        <div style="width:240px; float:left;padding-left:10px;position:relative;border-left:1px solid #e6e2dd;display:block;">
                                            <h6>作者名称：</h6><input type="text" placeholder="作者名称" name="uName" id="uName" value="<%=show_nameu %>" />
                                            <p>作者 ID：</p><input type="text" placeholder="作者 ID" name="uId" id="uId" value="<%=show_idu %>" />
                                            <p>部门职位：</p><input type="text" placeholder="部门职位" name="uType" id="uType" value="<%=show_typeu %>" />
                                            <p>居住地址：</p><input type="text" style="width:246px;" placeholder="居住地址" name="uAddress" id="uAddress" value="<%=show_addressu %>" />
                                        </div>
                                        <div style="float:left;margin-left:10px;padding-top:4px; position:relative;display:block">
                                            <p><span>日期：</span></p><input type="text" placeholder="修改日期" name="uTimes" id="uTimes" value="<%=show_timesu %>" readonly="readonly"/>
                                            <p><span style="font:12px/10px 微软雅黑,'微软雅黑',Arial,'Microsoft YaHei','宋体'sans-serif;">联系电话：</span></p><input type="text" placeholder="联系电话" name="uNumber" id="uNumber" value="<%=show_numu %>"/>
                                            <p>邮箱地址：</p><input type="text" placeholder="邮箱地址" name="uEmail" id="uEmail" value="<%=show_emailu %>" />
                                            <p>备注信息：</p><input type="text" placeholder="备注信息" name="uMessage" id="uMessage" value="<%=show_otheru %>" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div style="width:720px;height:120px;padding:6px 0px 0px 10px;text-align:left;position:relative;display :block;">
                                <p style="width: 70px;position:relative;float: left;margin-left: -250px;">详细介绍：</p><div class="dashboard"></div><span style="margin-left:20px;margin-top:6px;"><input type="button" id="btn_delete" class="btn_delete" value="删除" runat="server" onserverclick="btn_delete_ServerClick"/><a href="javascript:readAgreement();" style="color:#aeaeae;text-decoration:none;">操作说明</a></span>
                                <textarea style="width:-webkit-calc(100% - 20px);min-height:75px;margin-top:-10px;font:10px/12px 微软雅黑,'微软雅黑',Arial,'Microsoft YaHei','宋体'sans-serif;color:#484848;resize:none;" placeholder="为作者的详细介绍" name="uDescribe" id="uDescribe" runat="server" ></textarea>
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
    	<div class="title">Operating Instruction<div class="cloud_bar"></div><a class="close" href="javascript:closeAgreement();"></a></div>
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
