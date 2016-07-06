<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_signin_from.aspx.cs" Inherits="yifan.admin_signin_from" %>

<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
    <title>Material Login Form</title>
    
    
    <link rel="stylesheet" href="css/adminsigninformreset.css">


    <link rel="stylesheet" href="css/adminsigninformstyle.css">

    <script type="text/javascript" src="js/jquery.min.1.7.2.js"></script>

   
</head>

<body>
    
<!-- Mixins-->
<!-- Pen Title-->
<div class="pen-title">
  <h1 class="text_colorful">Admin Login Form</h1><span>Pen <i >&lt;&#47;&gt;</i> by <a href='http://www.baidu.com'>Zhang YZ</a></span>
</div>

<div class="container">
  <div class="card"></div>
  <div class="card">
    <h1 class="title">Login</h1>
    <form runat="server">
      <div class="input-container">
        <input type="text" id="Username" name="Username" required="required"/>
        <label for="Username">Username</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="password" id="Password" name="Password" required="required"/>
        <label for="Password">Password</label>
        <div class="bar"></div>
      </div>
     

      <div class="button-container">
        <div class="button"><input type="button" id="GO_Admin_Server" class="signin_btn" runat="server" value="GO" onserverclick="Go_Admin_Server_Click" /></div>
      </div>

      <div class="footer"><a href="web/forgotpassword_page.html" target="_blank">Forgot your password?</a></div>
    </form>
  </div>



  <div class="card alt">
    <div class="toggle"></div>
    <h1 class="title">Official Website
      <div class="close"></div>
    </h1>
    <form>
      <div class="url-list">
        <p><a href="index.aspx">H&nbsp;O&nbsp;M&nbsp;E</a></p>
        <div class="bar"></div>
      </div>
      <div class="url-list">
        <p><a href="all_goods_view.aspx">all goods view</a></p>
        <div class="bar"></div>
      </div>
      <div class="url-list">
        <p><a href="web/index_about_us.aspx">about us</a></p>
        <div class="bar"></div>
      </div>
      <div class="url-list">
        <p><a href="BMap/BMap.htm">B&nbsp;map</a></p>
        <div class="bar"></div>
      </div>
       <div class="url-list">
        <p><a href="http//:www.baidu.com">hebeu</a></p>
        <div class="bar"></div>
      </div>
      
    </form>
  </div>
</div>

    <script type="text/javascript">
        $('.toggle').on('click', function () {
            $('.container').stop().addClass('active');
        });

        $('.close').on('click', function () {
            $('.container').stop().removeClass('active');
        });
    </script>

  </body>
</html>

