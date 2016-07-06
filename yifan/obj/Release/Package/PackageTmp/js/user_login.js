var enter = true;
function GetQueryString(name) { 
	var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)"); 
	var r = window.location.search.substr(1).match(reg); 
	if (r!=null) return unescape(r[2]); return null; 
}
//JavaScript Document
//加入收藏 <a onclick="AddFavorite(window.location,document.title)">加入收藏</a>
function AddFavorite(sURL, sTitle)
{
	var ctrl = (navigator.userAgent.toLowerCase()).indexOf('mac') != -1 ? 'Command/Cmd' : 'CTRL';  
    if (document.all) {  
    	window.external.addFavorite(sURL, sTitle);  
    } else if (window.sidebar) {  
    	window.sidebar.addPanel(sTitle, sURL, ""); 
    } else {//添加收藏的快捷键  
    	alert('添加失败\n您可以尝试通过快捷键' + ctrl + ' + D 加入到收藏夹~'); 
    } 
	/*try
	{
	    window.external.addFavorite(sURL, sTitle);
	}
	catch (e)
	{
	    try
	    {
	        window.sidebar.addPanel(sTitle, sURL, "");
	    }
	    catch (e)
	    {
	        alert("加入收藏失败，请使用Ctrl+D进行添加");
	    }
	}*/
}
//设为首页 <a onclick="SetHome(this,window.location)">设为首页</a>
function SetHome(obj,vrl){
    try{
            obj.style.behavior='url(#default#homepage)';obj.setHomePage(vrl);
    }
    catch(e){
            if(window.netscape) {
                    try {
                            netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
                    }
                    catch (e) {
                            alert("此操作被浏览器拒绝！\n请在浏览器地址栏输入“about:config”并回车\n然后将 [signed.applets.codebase_principal_support]的值设置为'true',双击即可。");
                    }
                    var prefs = Components.classes['@mozilla.org/preferences-service;1'].getService(Components.interfaces.nsIPrefBranch);
                    prefs.setCharPref('browser.startup.homepage',vrl);
             }
    }
}

$(window).load(function() {
	$('#slider').nivoSlider({
		//effect:"fade",
		animSpeed: 300,
		pauseTime: 5000,
		postion:"-600",
		startSlide:1,
		scrolWidth:document.body.scrollWidth,
		afterChange:function(){
			$(".nivo-controlNav1").html($(".nivo-controlNav").html());
			$(".nivo-controlNav1").find("a").each(function(){
				$(this).click(function(){
					$(".nivo-controlNav1").find("a").attr("class","nivo-control");
					$(this).attr("class","nivo-control active");
					$(".nivo-controlNav").find("a[rel="+$(this).attr("rel")+"]").click();
				});
			});
		},
		afterLoad:function(){
			$(".nivo-controlNav1").html($(".nivo-controlNav").html());
			$(".nivo-controlNav1").find("a").each(function(){
				$(this).click(function(){
					$(".nivo-controlNav1").find("a").attr("class","nivo-control");
					$(this).attr("class","nivo-control active");
					$(".nivo-controlNav").find("a[rel="+$(this).attr("rel")+"]").click();
				});
			});
		}
	});
	$('#div_reset_name').removeClass("xx"); 
	if($.browser.webkit){	
	}else{
		$("#top_tips_container").show();
	}
	
});
$(document).ready(function () {
	reloadImage();
	$("#tucuser_loginname").keyup(function(){
		var len = 0;     //实际长度
	    var len1=0;     //转换后的长度
	    var va= $("#tucuser_loginname").val();
	    if(va.length>0){
	    	$('#div_reset_name').addClass("xx"); 
		}else{
			$('#div_reset_name').removeClass("xx"); 
		}
    });
	$("#div_reset_name").click(function(){
		$("#tucuser_loginname").val("");
	});
	$(document).keydown(function (e) {
	    if (e.which == 13) {
	        $("#loginbtn").click();
	    }
	}); 
    $("#loginbtn").click(function () {
    	enter = true;
    	if(!validation("u")){
			return;
        }
    	if(!validation("p")){
			return;
        }
    	validation("c");
    });
  
    var urlmsg = GetQueryString("error");
    if(urlmsg == '1001'){
    	var resultObj=$("#resultname");
    	resultObj.html("-用户名或密码错误,请重新检查输入");
    }
});
function reloadImage(){
    document.getElementById("imgservlet").src='CommondAction?mtype=randomstr&ts='+new Date().getTime(); 
}

function codeOnburl(){
	enter = false;
	validation("c");
}

function validation(t){
	if(t=="c"){
		$.get("CommondAction?mtype=vidrandomcode&ts='+new Date().getTime()&checkcode="+
				$("#checkcode").val(),
				null,callback);
	}else if(t=="u"){
		var textval = $("#tucuser_loginname").val();
		if(textval==""||textval==null){
			var resultObj=$("#resultname");
			resultObj.html("-用户名不能为空");
			return false;
		}else{
			var resultObj=$("#resultname");
			resultObj.html("");
			return true;
		}
	}else if(t=="p"){
		var textval = $("#tucuser_loginpassword_false").val(); 
		if(textval==""||textval==null){
			var resultObj=$("#resultpass");
			resultObj.html("-密码不能为空");
			return false;
		}else{
			var resultObj=$("#resultpass");
			resultObj.html("");
			return true;
		}
	}
}

function callback(data){
	var resultObj=$("#result");
	if(data=="isnull"){
		resultObj.html("-请输入验证码");
	}else if(data=="true"){
		//resultObj.html("-正确");
		if(enter&&data=="true"){
			$("#tucuser_loginpassword").val(encode64($("#tucuser_loginpassword_false").val()));
			//$("#tucuser_loginpassword_false").val('');
			var logincode = $("#tucuser_loginname").val()+"&"+encode64($("#tucuser_loginpassword_false").val());
			$("#logincode").val(encode64(logincode));
			$("#inputForm").submit();				
		}
	}else if(data=="false"){
		reloadImage();
		resultObj.html("<img src='ximages/login/login_error.png' style='margin-top: 6px;' />");
	}
}

var keyStr = "ABCDEFGHIJKLMNOP" +"QRSTUVWXYZabcdef" +"ghijklmnopqrstuv" +"wxyz0123456789+/" + "=";

function encode64(input) {

	 var output = "";
	 var chr1, chr2, chr3 = "";
	 var enc1, enc2, enc3, enc4 = "";
	 var i = 0;
	 do
	 {
		 chr1 = input.charCodeAt(i++);
		 chr2 = input.charCodeAt(i++);
		 chr3 = input.charCodeAt(i++);
		 enc1 = chr1 >> 2;
		 enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
		 enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
		 enc4 = chr3 & 63;
		 if (isNaN(chr2)){
			 enc3 = enc4 = 64;
		 }else if (isNaN(chr3)){
			 enc4 = 64;
		 }
		 output = output +
		 keyStr.charAt(enc1) +
		 keyStr.charAt(enc2) +
		 keyStr.charAt(enc3) +
		 keyStr.charAt(enc4);
		 chr1 = chr2 = chr3 = "";
		 enc1 = enc2 = enc3 = enc4 = "";
	 } while (i < input.length);
	 
	 return output;
   
}	
