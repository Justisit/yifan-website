<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_goods.aspx.cs" Inherits="yifan.web.add_goods" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>添加展品及信息</title>
    <link href="../css/admin_home.css" rel="stylesheet" />
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
        <div class="header-logo"><a>产品信息添加</a></div>
        <div class ="mainMenu">
            <ul>
                <li><a class="menu-a" href="home_page.aspx" target="_self">首页图片</a></li>
                <li><a class="menu_b" href="add_goods.aspx" target="_self">添加展品</a></li>
                <li><a class="menu-c" href="search_goods.aspx" target="_self">查询修改</a></li>
                <li><a class="menu-d" href="users_manage.aspx" target="_self">用户管理</a></li>
                <li><a class="menu-e" href="http://www.hebeu.edu.cn" target="_blank">HEBEU</a></li>
            </ul>
        </div>
    </div>
</div>
</header>

<div class="container clearfix">
    <div class="content_box">
        <ul class="btn_tab"><li class="current">产品信息添加</li><li>新作者信息添加</li></ul>
        <form id="form" runat="server" >
            <div id="form_1" class ="form">
                <div class="tabLeft clearfix">
                    <ul class="clearfix">
                        <li>
                            <dl>
							    <dt><i>*</i>展品编号</dt>
							    <dd>
                                    <input type="text" placeholder="系统自动分配；带*为必填项" name="gNumber" id="gNumber"  readonly="readonly"/>
							        <i class="right_icon" style="display:none;"></i>							    
							    </dd>
						    </dl>
                        </li>
                        <li>
                            <dl>
							    <dt><i>*</i>展品名称</dt>
							    <dd>
                                    <input type="text" placeholder="可识别，易分辨，简洁实用" name="gName" id="gName"/>
							        <i class="right_icon" style="display:none;"></i>							    
							    </dd>
						    </dl>
                        </li>
                        <li>
                            <dl>
							    <dt><i>*</i>title信息</dt>
							    <dd>
                                    <input type="text" placeholder="title为展示页面简单的介绍" name="gTitle" id="gTitle"/>
							        <i class="right_icon" style="display:none;"></i>							    
							    </dd>
						    </dl>
                        </li>
                        <li>
                            <dl>
							    <dt><i>*</i>展品类型</dt>
							    <dd>
                                    <div id="select_box1" class="select_box">
<%--                                        <asp:HiddenField ID="HiddenField1" runat="server" />--%>
                                        <input name="choose01" type="hidden" id="choose01" value="1" class="input_hidden" runat="server" />
                                        <div id="choose1" class="select_showbox" style="cursor:pointer">1</div>
                                        <ul style="display: none;">
                                            <li class="selected" style="cursor: pointer;">1</li>
                                            <li style="cursor: pointer;">类型一</li>
                                            <li style="cursor: pointer;">类型二</li>
                                            <li style="cursor: pointer;">类型三</li>
                                            <li style="cursor: pointer;">类型四</li>
                                        </ul>
                                    </div>
                                    <%--<select id="choose1" name="choose1" runat="server">
                                      <option value ="type" selected="selected">1</option>
                                      <option value ="type">类型一</option> 
                                      <option value ="type">类型二</option>
                                      <option value ="type">类型三</option>
                                      <option value ="type">类型四</option>
                                    </select>--%>

                                    <div id="select_box2" class="select_box">
<%--                                        <asp:HiddenField ID="HiddenField2" runat="server" />--%>
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
                                    <%--<select id="choose2" name="choose2" runat="server">
                                      <option value ="type" selected="selected">2</option>
                                      <option value ="type">类型五</option> 
                                      <option value ="type">类型六</option>
                                      <option value ="type">类型七</option>
                                      <option value ="type">类型八</option>
                                    </select>--%>
							        <i class="right_icon" style="display:none;"></i>							    
							    </dd>
						    </dl>
                        </li>
                        <li>
                            <dl>
							    <dt><i>*</i>作者ID</dt>
							    <dd>
                                    <input type="text" placeholder="通过作者ID，可在其它页面添加相关信息" name="gCreator" id="gCreator"/>
							        <i class="right_icon" style="display:none;"></i>							    
							    </dd>
						    </dl>
                        </li>
                        <li>
                            <dl>
							    <dt><i>&nbsp</i>专利号</dt>
							    <dd>
                                    <input type="text" placeholder="专利号项为可选" name="gPatent" id="gPatent"/>
							        <i class="right_icon" style="display:none;"></i>							    
							    </dd>
						    </dl>
                        </li>
                        <li>
                            <dl>
							    <dt><i>&nbsp</i>图片</dt>
							    <dd>
                                    <%--<input type="file" name="ipt" id="gImage"/>--%>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
							        <i class="right_icon" style="display:none;"></i>							    
							    </dd>
						    </dl>
                        </li>
                        <li>
                            <dl>
							    <dt><i>*</i>详细介绍</dt>
							    <dd>
                                    <textarea placeholder="为产品的详细介绍" name="gDescribe" id="gDescribe"></textarea>
							        <i class="right_icon" style="display:none;"></i>							    
							    </dd>
						    </dl>
                        </li>
                        <li>
                            <dl>
							    <dt><i>&nbsp</i>备注信息</dt>
							    <dd>
                                    <input type="text" placeholder="可记录一般信息" name="gMessage" id="gMessage"/>
							        <i class="right_icon" style="display:none;"></i>							    
							    </dd>
						    </dl>
                        </li>
                        <li>
                            <dl>
							    <dt>&nbsp;</dt>
							    <dd><label><input id="checkbox1" type="checkbox" checked="checked" style="width:20px; height:20px;" value="" name="op-check" runat="server" />记录操作日期</label><a href="javascript:readAgreement()">《操作指南》</a></dd>
						    </dl>
                        </li>
                        <li>
                            <dl>
							    <dt>&nbsp;</dt>
							    <dd><input type="button" class="btn_blue" value="添加" runat="server" id="btn_add" onserverclick="btn_add_Click"/></dd>
						    </dl>
                        </li>

                    </ul>
                    <dl class="notice">
                        <dt><span class="circle_dot"></span>管理员对展品添加的说明</dt>
                        <dd class="h_icon1">要点说明一</dd>
                        <dd class="h_icon2">要点说明二</dd>
                        <dd class="h_icon3">要点说明三</dd>
                        <dd class="h_icon4">要点说明四</dd>
                    </dl>
                </div>
            </div>
            <div id="from_2" class ="form">
                <div class="tabRight clearfix"style="display:none;">
                    <ul>
                        <li>
                            <dl>
							    <dt><i>*</i>作者ID</dt>
							    <dd>
                                    <input type="text" placeholder="作者ID为指定证件号；带*为必填项" name="cId" id="cId"/>
							        <i class="right_icon" style="display:none;"></i>							    
							    </dd>
						    </dl>
                        </li>
                        <li>
                            <dl>
							    <dt><i>*</i>作者名称</dt>
							    <dd>
                                    <input type="text" placeholder="作者名称" name="cName" id="cName"/>
							        <i class="right_icon" style="display:none;"></i>							    
							    </dd>
						    </dl>
                        </li>
                        <li>
                            <dl>
							    <dt><i>*</i>部门-职位</dt>
							    <dd>
                                    <div id="select_box3" class="select_box">
<%--                                        <asp:HiddenField ID="HiddenField3" runat="server" />--%>
                                        <input type="hidden" id="choose03" name="choose03" class="input_hidden" value="3" runat="server" />
                                        <div id="choose3" class="select_showbox" style="cursor:pointer">3</div>
                                        <ul>
                                            <li class="selected" style="cursor: pointer;">3</li>
                                            <li style="cursor: pointer;">部门一</li>
                                            <li style="cursor: pointer;">部门二</li>
                                            <li style="cursor: pointer;">部门三</li>
                                            <li style="cursor: pointer;">部门四</li>
                                        </ul>
                                    </div>
                                    <%--<select id="choose3" name="choose3" runat="server">
                                      <option value ="type" selected="selected">3</option>
                                      <option value ="type">部门一</option> 
                                      <option value ="type">部门二</option>
                                      <option value ="type">部门三</option>
                                      <option value ="type">部门四</option>
                                    </select>--%>
                                    <div id="select_box4" class="select_box">
<%--                                        <asp:HiddenField ID="HiddenField4" runat="server" />--%>
                                        <input type="hidden" id="choose04" name="choose04" class="input_hidden" value="4" runat="server" />
                                        <div id="choose4" class="select_showbox" style="cursor: pointer;">4</div>
                                        <ul>
                                            <li class="selected" style="cursor: pointer;">4</li>
                                            <li style="cursor: pointer;">职务一</li>
                                            <li style="cursor: pointer;">职务二</li>
                                            <li style="cursor: pointer;">职务三</li>
                                            <li style="cursor: pointer;">职务四</li>
                                        </ul>
                                    </div>
                                    <%--<select id="choose4" name="choose4" runat="server">
                                      <option value ="type" selected="selected">4</option>
                                      <option value ="type">职务一</option> 
                                      <option value ="type">职务二</option>
                                      <option value ="type">职务三</option>
                                      <option value ="type">职务四</option>
                                    </select>--%>
							        <i class="right_icon" style="display:none;"></i>							    
							    </dd>
						    </dl>
                        </li>
                        <li>
                            <dl>
							    <dt><i>&nbsp</i>居住地址</dt>
							    <dd>
                                    <input type="text" placeholder="居住地址" name="cAddress" id="cAddress"/>
							        <i class="right_icon" style="display:none;"></i>							    
							    </dd>
						    </dl>
                        </li>
                        <li>
                            <dl>
							    <dt><i>*</i>电话</dt>
							    <dd>
                                    <input type="text" placeholder="电话" name="cPhone" id="cPhone"/>
							        <i class="right_icon" style="display:none;"></i>							    
							    </dd>
						    </dl>
                        </li>
                        <li>
                            <dl>
							    <dt><i>*</i>邮箱</dt>
							    <dd>
                                    <input type="text" placeholder="邮箱" name="cEmail" id="cEmail"/>
							        <i class="right_icon" style="display:none;"></i>							    
							    </dd>
						    </dl>
                        </li>
                        <li>
                            <dl>
							    <dt><i>&nbsp</i>作者介绍</dt>
							    <dd>
                                    <input type="text" placeholder="作者的简短介绍" name="cDescribe" id="cDescribe"/>
							        <i class="right_icon" style="display:none;"></i>							    
							    </dd>
						    </dl>
                        </li>
                        <li>
                            <dl>
							    <dt><i>&nbsp</i>备注信息</dt>
							    <dd>
                                    <input type="text" placeholder="作者的一些其它信息" name="cOther" id="cOther"/>
							        <i class="right_icon" style="display:none;"></i>							    
							    </dd>
						    </dl>
                        </li>
                        <li>
                            <dl>
							    <dt>&nbsp;</dt>
							    <dd><input type="button" class="btn_blue" id="btn_add2" value="添加" runat="server" onserverclick="btn_add2_ServerClick"/></dd>
						    </dl>
                        </li>
                    </ul>
                    <dl class ="notice">
                        <dt><span class="square"></span>管理员对作者信息添加的说明</dt>
                        <dd class="h_icon1">要点说明一</dd>
                        <dd class="h_icon2">要点说明二</dd>
                        <dd class="h_icon3">要点说明三</dd>
                        <dd class="h_icon4">要点说明四</dd>
                    </dl>
                </div>
            </div>
        </form> 
    </div>
    </div>
<div class="layer-shade" onclick="closeAgreement();"></div>
<div class="layer-iframe" id="serviceAgreement">
	<div class="popup clearfix">
    	<div class="title">Operating Instruction<div class="loader_dot"></div><a class="close" href="javascript:closeAgreement();"></a></div>
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
            <div class="show_content">
                <div class="show_text">
                    <h1 class="show_title"></h1>
                    <div class="show_message">默认messag！</div>
                </div>
                <div class="show_toolbar">
                    <a href="javascript:btn_ok();" class="btn_closeShow" rel="btn_ok">OK</a>
                </div>
            </div>
        </div>
    </div>
<div style="width:100%;height:auto;background-color:#e6e2dd;"><div class="footer">	© 2016 翼帆展示 版权所有 冀ICP备xxxxxxxx号</div></div>
</body>
</html>
