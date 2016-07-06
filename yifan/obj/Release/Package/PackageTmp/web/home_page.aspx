<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home_page.aspx.cs" Inherits="yifan.web.home_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>网站首页幻灯片图片更换</title>
    <link href="../css/admin_home_page.css" rel="stylesheet" />
    <script src="../js/jquery-1.7.1.min.js"></script>
    <script src="../js/addgoods.js"></script>
</head>
<body>
    <div class="home_page_body">
        <div class ="header-nav">
            <div class="header-logo"><a>首页图片更换</a></div>
            <div class ="mainMenu">
                <ul>
                    <li><a class="menu_a" href="home_page.aspx" target="_self">首页图片</a></li>
                    <li><a class="menu-b" href="add_goods.aspx" target="_self">添加展品</a></li>
                    <li><a class="menu-c" href="search_goods.aspx" target="_self">查询修改</a></li>
                    <li><a class="menu-d" href="users_manage.aspx" target="_self">用户管理</a></li>
                    <li><a class="menu-e" href="http://www.hebeu.edu.cn" target="_blank">HEBEU</a></li>
                </ul>
            </div>
        </div>
    </div>
    
    <div class="container clearfix">
        <div class="content_box">
            <ul class="btn_tab"><li class="current">首页幻灯片图片更换</li><li>关于我们幻灯片图片更换</li></ul>
            <form id="form1" runat="server" >
                <div id="form_1" class ="form">
                    <div class="tabLeft clearfix">
                        <ul class="clearfix">
                            <li>
                                <dl>
                                    <dt><i>*</i>图片一</dt>
                                    <dd>
                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                        <asp:Label ID="Label1" Font-Names="TextBox1" runat="server" Text="描述信息:"></asp:Label>
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                       <a href="javascript:readAgreement()">预览</a>
                                    </dd>
                                </dl>				    
                            </li>
                            <li>
                                <dl>
                                    <dt><i>*</i>图片二</dt>
                                    <dd>
                                        <asp:FileUpload ID="FileUpload2" runat="server" />
                                        <asp:Label ID="Label2" Font-Names="TextBox2" runat="server" Text="描述信息:"></asp:Label>
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        <a href="javascript:readAgreement()">预览</a>
                                    </dd>
                                </dl>	
                            </li>
                            <li>
                                <dl>
                                    <dt><i>*</i>图片三</dt>
                                    <dd>
                                        <asp:FileUpload ID="FileUpload3" runat="server" />
                                        <asp:Label ID="Label3" Font-Names="TextBox3" runat="server" Text="描述信息:"></asp:Label>
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                        <a href="javascript:readAgreement()">预览</a>
                                    </dd>
                                </dl>	
                            </li>
                            <li>
                                <dl>
                                    <dt><i>*</i>图片四</dt>
                                    <dd>
                                        <asp:FileUpload ID="FileUpload4" runat="server" />
                                        <asp:Label ID="Label4" Font-Names="TextBox4" runat="server" Text="描述信息:"></asp:Label>
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                        <a href="javascript:readAgreement()">预览</a>
                                    </dd>
                                </dl>	
                            </li>
                            <li>
                                <dl>
                                    <dt><i>*</i>图片五</dt>
                                    <dd>
                                        <asp:FileUpload ID="FileUpload5" runat="server" />
                                        <asp:Label ID="Label5" Font-Names="TextBox5" runat="server" Text="描述信息:"></asp:Label>
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                        <a href="javascript:readAgreement()">预览</a>
                                    </dd>
                                </dl>	
                            </li>
                            <li>
                                <dl>
                                    <dt><i>*</i>图片六</dt>
                                    <dd>
                                        <asp:FileUpload ID="FileUpload6" runat="server" />
                                        <asp:Label ID="Label6" Font-Names="TextBox6" runat="server" Text="描述信息:"></asp:Label>
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                        <a href="javascript:readAgreement()">预览</a>
                                    </dd>
                                </dl>	
                            </li>
                            <li>
                                <dl>
							        <dt>&nbsp;</dt>
							        <dd>
                                        <input type="button" class="btn_blue" id="pic_change01" value="添加" runat="server" onserverclick="pic_change01_ServerClick"/>
							        </dd>
						        </dl>
                            </li>
                        </ul>
                    
                    </div>
                </div>
                <div id="from_2" class ="form">
                    <div class="tabRight clearfix"style="display:none;">
                        <ul>
                            <li>
                                <dl>
                                    <dt><i>*</i>图片一</dt>
                                    <dd>
                                        <asp:FileUpload ID="FileUpload7" runat="server" />
                                        <asp:Label ID="Label7" Font-Names="TextBox7" runat="server" Text="描述信息:"></asp:Label>
                                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                       <a href="javascript:readAgreement()">预览</a>
                                    </dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt><i>*</i>图片二</dt>
                                    <dd>
                                        <asp:FileUpload ID="FileUpload8" runat="server" />
                                        <asp:Label ID="Label8" Font-Names="TextBox8" runat="server" Text="描述信息:"></asp:Label>
                                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                        <a href="javascript:readAgreement()">预览</a>
                                    </dd>
                                </dl>	
                            </li>
                            <li>
                                <dl>
                                    <dt><i>*</i>图片三</dt>
                                    <dd>
                                        <asp:FileUpload ID="FileUpload9" runat="server" />
                                        <asp:Label ID="Label9" Font-Names="TextBox9" runat="server" Text="描述信息:"></asp:Label>
                                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                        <a href="javascript:readAgreement()">预览</a>
                                    </dd>
                                </dl>	
                            </li>
                            <li>
                                <dl>
                                    <dt><i>*</i>图片四</dt>
                                    <dd>
                                        <asp:FileUpload ID="FileUpload10" runat="server" />
                                        <asp:Label ID="Label10" Font-Names="TextBox10" runat="server" Text="描述信息:"></asp:Label>
                                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                        <a href="javascript:readAgreement()">预览</a>
                                    </dd>
                                </dl>	
                            </li>
                            <li>
                                <dl>
                                    <dt><i>*</i>图片五</dt>
                                    <dd>
                                        <asp:FileUpload ID="FileUpload11" runat="server" />
                                        <asp:Label ID="Label11" Font-Names="TextBox11" runat="server" Text="描述信息:"></asp:Label>
                                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                                        <a href="javascript:readAgreement()">预览</a>
                                    </dd>
                                </dl>	
                            </li>
                            <li>
                                <dl>
                                    <dt><i>*</i>图片六</dt>
                                    <dd>
                                        <asp:FileUpload ID="FileUpload12" runat="server" />
                                        <asp:Label ID="Label12" Font-Names="TextBox12" runat="server" Text="描述信息:"></asp:Label>
                                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                                        <a href="javascript:readAgreement()">预览</a>
                                    </dd>
                                </dl>	
                            </li>
                            <li>
                                <dl>
							        <dt>&nbsp;</dt>
							        <dd>
                                        <input type="button" class="btn_blue" id="pic_change02" value="添加" runat="server" onserverclick="pic_change02_ServerClick"/>
							        </dd>
						        </dl>
                            </li>
                            </ul>
                    </div>
                </div>
            </form> 
        </div>
        </div>
    <div class="layer-shade" onclick="closeAgreement();"></div>
    <div class="layer-iframe" id="serviceAgreement">
	    <div class="popup clearfix">
    	    <div class="title">Operating Instruction<a class="close" href="javascript:closeAgreement();"></a></div>
            <div class="containerBody">
                <div id="div_showimg1">
                    <p>图片一</p>
                    <img src="../images/png_mid.png" id="img1" class="show_img" />
                    <p>图片二</p>
                    <img src="../images/png_mid.png" id="img2" class="show_img" />
                    <p>图片三</p>
                    <img src="../images/png_mid.png" id="img3" class="show_img" />
                    <p>图片四</p>
                    <img src="../images/png_mid.png" id="img4" class="show_img" />
                    <p>图片五</p>
                    <img src="../images/png_mid.png" id="img5" class="show_img" />
                    <p>图片六</p>
                    <img src="../images/png_mid.png" id="img6" class="show_img" />
                </div>
                
                <div id="div               <p>图片一</p>
                    <img src="../images/png_mid.png" id="imgShow1" class="show_img" />
                    <p>图片二</p>
                    <img src="../images/png_mid.png" id="imgShow2" class="show_img" />
                    <p>图片三</p>
                    <img src="../images/png_mid.png" id="imgShow3" class="show_img" />
                    <p>图片四</p>
                    <img src="../images/png_mid.png" id="imgShow4" class="show_img" />
                    <p>图片五</p>
                    <img src="../images/png_mid.png" id="imgShow5" class="show_img" />
                    <p>图片六</p>
                    <img src="../images/png_mid.png" id="imgShow6" class="show_img" />
                </div>

                <div class="popup_btn">
            	    <button type="button" class="btn_close" onclick="closeAgreement()">关闭</button>
                </div>
            </div>
        </div>
    </div>
    <div style="width:100%;height:auto;background-color:#e6e2dd;"><div class="footer">	© 2016 翼帆展示 版权所有 冀ICP备xxxxxxxx号</div></div>



</body>
</html>
