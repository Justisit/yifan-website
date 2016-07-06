<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_sign_in.aspx.cs" Inherits="yifan.admin_sign" %>



<!DOCTYPE html>

<html lang="en" class="no-js">



    <head>



        <meta charset="utf-8">

        <title>Admin Login</title>

        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <meta name="description" content="Admin Login">

        <meta name="author" content="@zhangyz">



        <!-- CSS -->

        <link rel="stylesheet" href="web/css/admin_css.css">


        <!-- Javascript -->

        <script src="web/js/jquery-1.8.3.min.js"></script>
        <!--背景图片自动更换-->
        <script src="web/js/supersized.3.2.7.min.js"></script>

        <script src="web/js/supersized-init.js"></script>
        <!--表单验证-->
        <script src="web/js/scripts.js"></script>



        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->

        <!--[if lt IE 9]>

            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>

        <![endif]-->



    </head>



    <body>



        <div class="page-container">

            <h1>Login</h1>

            <form action="" method="post">

                <input type="text" name="username" class="username" placeholder="Username">

                <input type="password" name="password" class="password" placeholder="Password">

                <button type="submit">Sign in</button>

                <div class="sign"><a class="sign_up">Sign up</a>

                <a class="sign_out">Sign out</a>

                <div class="error"><span>+</span></div></div>

            </form>

            <div class="connect">

                <p>Or connect with:</p>

                <p>

                    <a class="facebook" href=""></a>

                    <a class="twitter" href=""></a>

                </p>

            </div>

        </div>

      






    </body>



</html>




