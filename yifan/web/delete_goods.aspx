<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delete_goods.aspx.cs" Inherits="yifan.web.delete_goods" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>删除展品及信息</title>
    <link href="../css/admin_home.css" rel="stylesheet" />
    <script src="../js/jquery-1.7.1.min.js"></script>
    <script src="../js/addgoods.js"></script>
</head>
<body>
<div style:"width:100%;height:600%;"></div>
<div class="layer-shade" style=""></div>
<div class="layer-iframe" id="serviceAgreement">
	<div class="popup clearfix">
    	<div class="title">Operating Instruction<a class="close" href="javascript:closeAgreement();"></a></div>
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
<div style="width:100%;height:auto;background-color:#e6e2dd;"><div class="footer">	© 2016 翼帆展示 版权所有 冀ICP备xxxxxxxx号</div></div>
</body>
</html>
