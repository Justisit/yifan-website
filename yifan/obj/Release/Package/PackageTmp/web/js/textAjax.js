




//zhangyz
$(document).ready(function () {
    $(".timer").hide();
    $(".progress_bar").hide();
    $("#edit_c").click(function () {
        $(".timer").hide();
        $(".progress_bar").hide();
        var textFirst = $(".a_text h3").text();
        $("#admin_showText").attr("placeholder",textFirst);

        var message_show = "︿(￣︶￣)︿，Text 内容要简洁直观哟！"
        $(".adminEdit_layer_container").addClass("show")
        $(".show_content_m").addClass("animated");
        $(".show_message").text(message_show);
    });
    var imageAddress = "";
    $("#admin_himg").change(function () {
        imageAddress = getObjectURL(this.files[0]);
    });

    $(".btn_okShow").click(function () {
        var textMessage = $("#admin_showText").val();
        if ($.trim(imageAddress) == "") {
            var show_message = "︿(￣︶￣)︿，Wait a minutes，请选择文件！"
            $(".show_message").css("color", "YELLOW");
            $(".show_message").text(show_message);
            $("#admin_himg").css("border", "1px solid RED")
            return;
        }
        if (textMessage == "") {
            textMessage = $(".a_text h3").text();
            $("#admin_showText").css("border", "1px solid RED")
        }
        $(".timer").show();
        $(".progress_bar").show();
        btn_ok();
        setTimeout("$('.show_message').css('color','LIGHTGREEN')", 2600);
        window.clearTimeout;
        //alert(imageAddress + textMessage)
        if (imageAddress != "") {
            $("#Form1").ajaxSubmit({
                type: "post",//设置表单提交方式（post）
                url: "../Handler1.ashx",//设置post提交到的页面
                dataType: "text",//预期服务器返回的数据类型（设置返回值为文本）
                success: function (data) {
                    if (data != null && data != undefined) {
                        switch (data) {
                            case "1": var show_message = "︿(￣︶￣)︿，OK，更新完成了哟！"
                                $(".show_message").css("color", "LIGHTGREEN");
                                $(".show_message").text(show_message);
                                //$(".admin_pic").src = imageAddress;//刷新图片
                                $(".admin_pic").css("background-image", "url(" + imageAddress + ")");
                                $(".a_text h3").text(textMessage);//更新文字
                                break;
                            case "2": var show_message = "︿(￣︶￣)︿，OH NO，格式错误！"
                                $(".show_message").css("color", "RED");
                                $(".show_message").text(show_message);
                                break;
                            case "3": var show_message = "︿(￣︶￣)︿，OH NO，图片太大了（1M）！"
                                $(".show_message").css("color", "RED");
                                $(".show_message").text(show_message);
                                break;
                            case "4": var show_message = "︿(￣︶￣)︿，OH NO，你好像忘了选择图片了哟！"
                                $(".show_message").css("color", "YELLOW");
                                $(".show_message").text(show_message);
                                break;
                            default: var show_message = "︿(￣︶￣)︿，OH NO，系统也不知道怎么了！"
                                $(".show_message").css("color", "RED");
                                $(".show_message").text(show_message);
                                $(".admin_pic").css("background-image", data);
                                break;
                        }
                    } else {
                        var message_show = "︿(￣︶￣)︿，SORRY，更新失败了哟！"
                        $(".show_message").css("color", "RED");
                        $(".show_message").text(show_message);
                        $(".admin_pic").css("background-image", firstImageAddress);
                    }
                },
                error: function (error) {
                    var message_show = "︿(￣︶￣)︿，SORRY，操作失败了哟！"
                    $(".show_message").css("color", "RED");
                    $(".show_message").text(show_message);
                }
            });
        }
    });


    function getObjectURL(file) {
        var url = null;
        if (window.createObjectURL != undefined) { // basic
            url = window.createObjectURL(file);
        } else if (window.URL != undefined) { // mozilla(firefox)
            url = window.URL.createObjectURL(file);
        } else if (window.webkitURL != undefined) { // webkit or chrome
            url = window.webkitURL.createObjectURL(file);
        }
        return url;
    }


});

    function btn_ok() {
        var message_show = "︿(￣︶￣)︿，稍等片刻，马上完成哟！"
        //var message = $("#admin_showText").val();
        //var Message = $("#admin_showText").attr("placeholder");
        show_number("4");
        setTimeout("show_number('3')", 1000);
        setTimeout("show_number('2')", 2000);
        setTimeout("show_number('1')", 3000);
        setTimeout("show_number('0')", 3900);
        //showAdminEdit_layer(message_show);
        setTimeout("btn_close()", 4000);
        window.clearTimeout();
    }

    function btn_close() {
        $(".adminEdit_layer_container").removeClass("show");
    }
    function show_number(text){
        $("#show_number").text(text);
    }
    function showAdminEdit_layer(message) {
        var show_message = message;
        $(".adminEdit_layer_container").addClass("show")
        $(".show_content_m").addClass("animated");
        $(".show_message").text(show_message);
    }