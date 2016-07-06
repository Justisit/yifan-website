<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_index.aspx.cs" Inherits="yifan.admin_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>admin index</title>
    <link href="web/css/admin_index_css.css" rel="stylesheet" />
    <link href="web/css/sidebar.css" rel="stylesheet" />
    <script src="js/jquery.min.1.7.2.js"></script>
    <script src="js/jquery.form.js"></script>
    <script src="web/js/admin_index_js.js"></script>
    <script src="web/js/snap.svg-min.js"></script>
    <script src="web/js/classie.js"></script>
</head>
<body>
    <div class="container">
	    <nav id="menu" class="menu">
		    <button class="menu__handle"><span>Menu</span></button>
		    <div class="menu__inner">
                <div style ="width:auto;margin-top:24px; height:126px; ">
                    <div class ="admin_pic" style ="background-image:url('<%=admin_himg_address %>');background-position:66% 32%; background-size:260% auto;" title="<%=show_title %>"></div>
                    <div class="a_text"><h3><%=show_text %></h3><div id="edit_c"></div></div>
                </div>
			    <ul>
				    <li><a href="web/home_page.aspx" target="admin_iframe"><i class="fa fa-fw fa-home"></i><span>首页图片<span></span></span></a></li>
				    <li><a href="web/add_goods.aspx" target="admin_iframe"><i class="fa fa-fw fa-heart"></i><span>添加展品<span></span></span></a></li>
				    <li><a href="web/search_goods.aspx" target="admin_iframe"><i class="fa fa-fw fa-folder"></i><span>查询修改<span></span></span></a></li>
				    <li><a href="web/users_manage.aspx" target="admin_iframe"><i class="fa fa-fw fa-tachometer"></i><span>用户管理<span></span></span></a></li>
                    <li><a href="index.aspx" target="_blank"><i class="fa fa-fw fa-tachometer"></i><span>网站首页<span></span></span></a></li>
                    <li><a href="#" onclick="window.close()"><i class="fa fa-fw fa-tachometer"></i><span>退出管理<span></span></span></a></li>
			    </ul>
		    </div>
		    <div class="morph-shape" data-morph-open="M300-10c0,0,295,164,295,410c0,232-295,410-295,410" data-morph-close="M300-10C300-10,5,154,5,400c0,232,295,410,295,410">
			    <svg width="100%" height="100%" viewBox="0 0 600 800" preserveAspectRatio="none">
				    <path fill="none" d="M300,-10C300,-10,300,154,300,400C300,632,300,810,300,810"></path>
			    <desc>Created with Snap</desc><defs></defs></svg>
		    </div>
	    </nav>
	    <div class="main">
            <iframe id="admin_iframe" name="admin_iframe" width="100%" src="web/welcome_page.html" frameborder="0" scrolling="no" onLoad="setIframeHeight()"></iframe>
            <script type="text/javascript">
                            function iFrameHeight() {
                                var ifm = document.getElementById("admin_iframe");
                                var subWeb = document.frames ? document.frames["admin_iframe"].document : ifm.contentDocument;
                                if (ifm != null && subWeb != null) {
                                    ifm.height = subWeb.body.scrollHeight;
                                    ifm.width = subWeb.body.scrollWidth;
                                }
                            }
                            function setIframeHeight() {
                                var iframe = document.getElementById("admin_iframe");
                                if (iframe != null && iframe != null) {
                                    var iframeWin = iframe.contentWindow || iframe.contentDocument.parentWindow;
                                    if (iframeWin.document.body) {
                                        iframe.height = iframeWin.document.documentElement.scrollHeight || iframeWin.document.body.scrollHeight;
                                    }
                                }
                            };
                        </script>
	    </div><!-- /main -->
            
    </div><!-- /container -->
		<script>
		    (function () {

		        function SVGMenu(el, options) {
		            this.el = el;
		            this.init();
		        }

		        SVGMenu.prototype.init = function () {
		            this.trigger = this.el.querySelector('button.menu__handle');
		            this.trigger1 = this.el.querySelector('.menu ul');
		            this.shapeEl = this.el.querySelector('div.morph-shape');

		            var s = Snap(this.shapeEl.querySelector('svg'));
		            this.pathEl = s.select('path');
		            this.paths = {
		                reset: this.pathEl.attr('d'),
		                open: this.shapeEl.getAttribute('data-morph-open'),
		                close: this.shapeEl.getAttribute('data-morph-close')
		            };

		            this.isOpen = false;

		            this.initEvents();
		        };

		        SVGMenu.prototype.initEvents = function () {
		            this.trigger.addEventListener('click', this.toggle.bind(this));
		            this.trigger1.addEventListener('click', this.toggle.bind(this));
		        };

		        SVGMenu.prototype.toggle = function () {
		            var self = this;

		            if (this.isOpen) {
		                classie.remove(self.el, 'menu--anim');
		                setTimeout(function () { classie.remove(self.el, 'menu--open'); }, 250);
		            }
		            else {
		                classie.add(self.el, 'menu--anim');
		                setTimeout(function () { classie.add(self.el, 'menu--open'); }, 250);
		            }
		            this.pathEl.stop().animate({ 'path': this.isOpen ? this.paths.close : this.paths.open }, 350, mina.easeout, function () {
		                self.pathEl.stop().animate({ 'path': self.paths.reset }, 800, mina.elastic);
		            });

		            this.isOpen = !this.isOpen;
		        };

		        new SVGMenu(document.getElementById('menu'));

		    })();
		</script>
    <div class="adminEdit_layer_container clearfix">
        <div id="adminEdit_layer-shade" class="adminEdit_layer-shade" onclick="btn_close();"></div>
        <div class="adminEdit_layer_fixer">
            <div class="show_content_m">
            <form id="Form1" runat ="server" >
                <div class="show_text">
                    <h1 class="show_title"></h1>
                    <div style="width:300px;">
                        <input type="file" id="admin_himg" name="admin_himg" />
                        <input type="text" id="admin_showText" name="admin_showText" placeholder="text" />
                        <input type ="hidden" id="Account" runat="server"/>
                    </div>
                    <div class="show_message">默认messag！</div>
                </div>
                <div class="show_toolbar">
                    <div class="timer"><span id="show_number" class="show_num"></span></div><a class="btn_okShow">OK</a><div class="progress"><div class="progress_bar"></div></div>
                </div>
            </form>
            </div> 
        </div>
    </div>
</body>
</html>
