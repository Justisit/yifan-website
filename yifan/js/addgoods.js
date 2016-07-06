//zhangyz
$(document).ready(function () {



    $("ul.btn_tab li:first-child").click(function () {
        if ($("this").hasClass("current")) {
            $("div.tabRight").hide();
            $("ul.btn_tab li:nth-child(2)").removeClass("current");
        } else {
            $("ul.btn_tab li:first-child").addClass("current");
            $("div.tabLeft").show();
            $("div.tabRight").hide();
            $("ul.btn_tab li:nth-child(2)").removeClass("current");
        }
    });

    $("ul.btn_tab li::nth-child(2)").click(function () {
        if ($("this").hasClass('current')) {
            $("div.tabLeft").hide();
            $("ul.btn_tab li:first-child").removeClass("current");
        } else {
            $("ul.btn_tab li:nth-child(2)").addClass("current");
            $("div.tabRight").show();
            $("div.tabLeft").hide();
            $("ul.btn_tab li:first-child").removeClass("current");
        }
    });

    //弹出面板关闭按钮：关闭弹出面板和遮罩
    $(".popup a.close").click(function () {
        $(".layer-shade").hide();
        $(this).parent(".title").parent(".popup").parent(".layer-iframe").hide();
        return false;
    });


    //模拟select
    $('#select_box1').toggle(function () {
        $('#select_box1 ul').show();
        $('#select_box1').addClass('li_hover');
    }, function () {
        $('#select_box1 ul').hide();
        $('#select_box1').removeClass('li_hover');
    });

    $('#select_box1 ul li').on('click', function () {
        $(this).addClass('selected').siblings().removeClass('selected');
        var value = $(this).text();
        $('#select_box1 .select_showbox').text(value);
        $('#select_box1 ul').hide();
        $('#choose01').val(value);
        $('#HiddenField1').val(value);
  
    });
    $('#select_box1 ul li').hover(function () {
        $(this).addClass('li_hover').siblings().removeClass('li_hover');
    }, function () {
        $('#select_box1 ul li').removeClass('li_hover');
    });




    $('#select_box2').toggle(function () {
        $('#select_box2 ul').show();
        $('#select_box2').addClass('li_hover');
    }, function () {
        $('#select_box2 ul').hide();
        $('#select_box2').removeClass('li_hover');
    });

    $('#select_box2 ul li').on('click', function () {
        $(this).addClass('selected').siblings().removeClass('selected');
        var value = $(this).text();
        $('#select_box2 .select_showbox').text(value);
        $('#select_box2 ul').hide();
        $('#choose02').val(value);
        $('#HiddenField2').val(value);
  
    });
    $('#select_box2 ul li').hover(function () {
        $(this).addClass('li_hover').siblings().removeClass('li_hover');
    }, function () {
        $('#select_box2 ul li').removeClass('li_hover');
    });


    $('#select_box3').toggle(function () {
        $('#select_box3 ul').show();
        $('#select_box3').addClass('li_hover');
    }, function () {
        $('#select_box3 ul').hide();
        $('#select_box3').removeClass('li_hover');
    });

    $('#select_box3 ul li').on('click', function () {
        $(this).addClass('selected').siblings().removeClass('selected');
        var value = $(this).text();
        $('#select_box3 .select_showbox').text(value);
        $('#select_box3 ul').hide();
        $('#choose03').val(value);
        $('#HiddenField3').val(value);
  
    });
    $('#select_box3 ul li').hover(function () {
        $(this).addClass('li_hover').siblings().removeClass('li_hover');
    }, function () {
        $('#select_box3 ul li').removeClass('li_hover');
    });




    $('#select_box4').toggle(function () {
        $('#select_box4 ul').show();
        $('#select_box4').addClass('li_hover');
    }, function () {
        $('#select_box4 ul').hide();
        $('#select_box4').removeClass('li_hover');
    });

    $('#select_box4 ul li').on('click', function () {
        $(this).addClass('selected').siblings().removeClass('selected');
        var value = $(this).text();
        $('#select_box4 .select_showbox').text(value);
        $('#select_box4 ul').hide();
        $('#choose04').val(value);
        $('#HiddenField4').val(value);

    });
    $('#select_box4 ul li').hover(function () {
        $(this).addClass('li_hover').siblings().removeClass('li_hover');
    }, function () {
        $('#select_box4 ul li').removeClass('li_hover');
    });

    //var selects = $('select');//获取select
    //for (var i = 0; i < selects.length; i++) {
    //    createSelect(selects[i], i);
    //}
    //var ID = $('select').attr('name') + "_input";//bu  xing ne ?
    
    //function createSelect(select_container, index) {
    //    //创建select容器，class为select_box，插入到select标签前
    //    var tag_select = $('<div></div>');//div相当于select标签
    //    tag_select.attr('class', 'select_box');
    //    tag_select.insertBefore(select_container);
    //    //显示框class为select_showbox,插入到创建的tag_select中
    //    var select_showbox = $('<div></div>');//显示框
    //    var input_hidden = $('<input/>')//添加隐藏的input获取show_box值
    //    input_hidden.attr({ 'type':'hidden','id': ID, 'class': 'select_showbox', 'runat': 'server' }).appendTo(tag_select);
    //    select_showbox.css('cursor', 'pointer').attr({ 'class': 'select_showbox', 'runat': 'server' }).appendTo(tag_select);
    //    //创建option容器，class为select_option，插入到创建的tag_select中
    //    var ul_option = $('<ul></ul>');//创建option列表
    //    //ul_option.attr('class', 'clearfix');
    //    ul_option.appendTo(tag_select);
    //    createOptions(index, ul_option);//创建option
    //    //点击显示框
    //    tag_select.toggle(function () {
    //        ul_option.show();
    //        select_showbox.addClass('hover');
    //    }, function () {
    //        ul_option.hide();
    //        select_showbox.removeClass('hover');
    //    });
    //    var li_option = ul_option.find('li');
    //    li_option.on('click', function () {
    //        $(this).addClass('selected').siblings().removeClass('selected');
    //        var value = $(this).text();
    //        select_showbox.text(value);
    //        ul_option.hide();
    //        //selected_index1 = $(this).index();
    //        //$('choose1').find("option[text=" + value + "]").attr("selected", true).siblings().attr("selected", false);
    //    });
    //    li_option.hover(function () {
    //        $(this).addClass('hover').siblings().removeClass('hover');
    //    }, function () {
    //        li_option.removeClass('hover');
    //    });
    //}

    ////1、设置value为pxx的项选中   $(".selector").val("pxx");
    ////2、设置text为pxx的项选中    $(".selector").find("option[text='pxx']").attr("selected", true);
    ////3、获取当前选中项的value    $(".selector").val();
    ////4、获取当前选中项的text     $(".selector").find("option:selected").text();

    //function createOptions(index, ul_list) {
    //    //获取被选中的元素并将其值赋值到显示框中
    //    var options = selects.eq(index).find('option'),
    //        selected_option = options.filter(':selected'),
    //        selected_index = selected_option.index(),
    //        showbox = ul_list.prev();
    //    showbox.text(selected_option.text());
    //    //为每个option建立个li并赋值
    //    for (var n = 0; n < options.length; n++) {
    //        var tag_option = $('<li></li>'),//li相当于option
    //            txt_option = options.eq(n).text();
    //        tag_option.text(txt_option).css('cursor', 'pointer').appendTo(ul_list);
    //        //为被选中的元素添加class为selected
    //        if (n == selected_index) {
    //            tag_option.attr('class', 'selected');
    //        }
    //    }
    //}

    
    //正则验证电话、邮箱
    $("#cPhone").blur(function () {
        var text = $(this).val();
        var reg = /^0?1[3|4|5|8][0-9]\d{8}$/;
        if (!reg.test(text)) {
            $(this).css("border-color", "#ff1e1e");
            $(".validate_layer_container").addClass("show")
            $(".show_content").addClass("animated");
            $(".show_message").text("o(>﹏<)o,Oh no,电话号码有误!");
        } else {
            $(".validate_layer_container").removeClass("show");
            $(this).css("border-color", "#666");
        }
    });
    $("#cEmail").blur(function () {
        var text = $(this).val();
        var reg = /^([a-zA-Z0-9]*[-_\.]?[a-zA-Z0-9]+)+@([a-zA-Z0-9]*[-_]?[a-zA-Z0-9]+)+[\.][A-Za-z]{2,3}([\.][A-Za-z]{2})?$/;
        if (!reg.test(text)) {
            $(this).css("border-color", "#ff1e1e");
            $(".validate_layer_container").addClass("show")
            $(".show_content").addClass("animated");
            $(".show_message").text("o(>﹏<)o,Oh no,邮箱输入有误!");

        } else {
            $(".validate_layer_container").removeClass("show");
            $(this).css("border-color", "#666");
        }
    });



    //search 页面查询类型
    $('#select_box5').toggle(function () {
        $('#select_box5 ul').show();
        $('#select_box5').addClass('li_hover');
    }, function () {
        $('#select_box5 ul').hide();
        $('#select_box5').removeClass('li_hover');
    });

    $('#select_box5 ul li').on('click', function () {
        $(this).addClass('selected').siblings().removeClass('selected');
        var value = $(this).text();
        $('#select_box5 .select_showbox').text(value);
        $('#select_box5 ul').hide();
        $('#choose05').val(value);
        $('#HiddenField5').val(value);
    });
        $('#select_box5 ul li:first-child').click(function () {
            $('#show_content .dd').show();
            $('#show_content .dd2').hide();
        });
        $('#select_box5 ul li:nth-child(3)').click(function () {
            $('#show_content .dd').show();
            $('#show_content .dd2').hide();
        });
        $('#select_box5 ul li:not(li:first-child,li:nth-child(3))').click(function () {
            $('#show_content .dd').hide();
            $('#show_content .dd2').show();
        });
        $("#select_box5 ul li:nth-child(2)").click(function () {
        
            $('#input_box1').hide();
            $('#select_box1').show();
            $('#select_box2').show();
            $('#something').addClass('hover');
            
        }); 
        $("#select_box5 ul li:not(li:nth-child(2))").click(function () {
        
            $('#input_box1').show();
            $('#select_box1').hide();
            $('#select_box2').hide();
            $('#something').removeClass('hover');
            
        });

    $('#select_box5 ul li').hover(function () {
        $(this).addClass('li_hover').siblings().removeClass('li_hover');
    }, function () {
        $('#select_box5 ul li').removeClass('li_hover');
    });


    $('#select_box6').toggle(function () {
        $('#select_box6 ul').show();
        $('#select_box6').addClass('li_hover');
    }, function () {
        $('#select_box6 ul').hide();
        $('#select_box6').removeClass('li_hover');
    });

    $('#select_box6 ul li').on('click', function () {
        $(this).addClass('selected').siblings().removeClass('selected');
        var value = $(this).text();
        $('#select_box6 .select_showbox').text(value);
        $('#select_box6 ul').hide();
        $('#choose06').val(value);
        $('#HiddenField6').val(value);

    });
    $('#select_box6 ul li').hover(function () {
        $(this).addClass('li_hover').siblings().removeClass('li_hover');
    }, function () {
        $('#select_box6 ul li').removeClass('li_hover');
    });


    //search中的图片对比     users_manage页面也同样的事件处理
    $("#FileUpload1").change(function () {
        var loadImg = $(this).val();
        if (loadImg) {
            showImagesCompare(this);
        }
    });

    //home_page中图片预览
    $("#FileUpload1").change(function () {
        $("#div_showimg1").show();
        $("#div_showimg2").hide();
        var dataUrl = getObjectURL(this.files[0]);
        if (dataUrl) {
            $("#img1").attr("src", dataUrl);
        }
    });
    $("#FileUpload2").change(function () {
        $("#div_showimg1").show();
        $("#div_showimg2").hide();
        var dataUrl = getObjectURL(this.files[0]);
        if (dataUrl) {
            $("#img2").attr("src",dataUrl);
        }
    });
    $("#FileUpload3").change(function () {
        $("#div_showimg1").show();
        $("#div_showimg2").hide();
        var dataUrl = getObjectURL(this.files[0]);
        if (dataUrl) {
            $("#img3").attr("src", dataUrl);
        }
    });
    $("#FileUpload4").change(function () {
        $("#div_showimg1").show();
        $("#div_showimg2").hide();
        var dataUrl = getObjectURL(this.files[0]);
        if (dataUrl) {
            $("#img4").attr("src", dataUrl);
        }
    });
    $("#FileUpload5").change(function () {
        $("#div_showimg1").show();
        $("#div_showimg2").hide();
        var dataUrl = getObjectURL(this.files[0]);
        if (dataUrl) {
            $("#img5").attr("src", dataUrl);
        }
    });
    $("#FileUpload6").change(function () {
        $("#div_showimg1").show();
        $("#div_showimg2").hide();
        var dataUrl = getObjectURL(this.files[0]);
        if (dataUrl) {
            $("#img6").attr("src", dataUrl);
        }
    });
    $("#FileUpload7").change(function () {
        $("#div_showimg1").hide();
        $("#div_showimg2").show();
        var objUrl = getObjectURL(this.files[0]);
        if (objUrl) {
            $("#imgShow1").attr("src", objUrl);
        }
    });
    $("#FileUpload8").change(function () {
        $("#div_showimg1").hide();
        $("#div_showimg2").show();
        var objUrl = getObjectURL(this.files[0]);
        if (objUrl) {
            $("#imgShow2").attr("src", objUrl);
        }
    });
    $("#FileUpload9").change(function () {
        $("#div_showimg1").hide();
        $("#div_showimg2").show();
        var objUrl = getObjectURL(this.files[0]);
        if (objUrl) {
            $("#imgShow3").attr("src", objUrl);
        }
    });
    $("#FileUpload10").change(function () {
        $("#div_showimg1").hide();
        $("#div_showimg2").show();
        var objUrl = getObjectURL(this.files[0]);
        if (objUrl) {
            $("#imgShow4").attr("src", objUrl);
        }
    });
    $("#FileUpload11").change(function () {
        $("#div_showimg1").hide();
        $("#div_showimg2").show();
        var objUrl = getObjectURL(this.files[0]);
        if (objUrl) {
            $("#imgShow5").attr("src", objUrl);
        }
    });
    $("#FileUpload12").change(function () {
        $("#div_showimg1").hide();
        $("#div_showimg2").show();
        var objUrl = getObjectURL(this.files[0]);
        if (objUrl) {
            $("#imgShow6").attr("src", objUrl);
        }
    });




    //验证 查询input 内容
    $(".dd input[type='text']").focus(function () {
        Message = $(this).val();
    });
    $(".dd input[type='text']").blur(function () {
        var message_show = "︿(￣︶￣)︿，未改变其中的内容哟！"
        var message = $(this).val();
        if (message == Message) {
            show_number("4");
            setTimeout("show_number('3')", 1000);
            setTimeout("show_number('2')", 2000);
            setTimeout("show_number('1')", 3000);
            setTimeout("show_number('0')", 3900);
            showValidate_layer(message_show);
            setTimeout("btn_ok()", 4000);
            window.clearTimeout();
        }
    });
    $(".dd textarea").focus(function () {
        Message = $(this).val();
    });
    $(".dd textarea").blur(function () {
        var message_show = "︿(￣︶￣)︿，未改变其中的内容哟！"
        var message = $(this).val();
        if (message == Message) {
            show_number("4");
            setTimeout("show_number('3')", 1000);
            setTimeout("show_number('2')", 2000);
            setTimeout("show_number('1')", 3000);
            setTimeout("show_number('0')", 3900);
            showValidate_layer(message_show);
            setTimeout("btn_ok()", 4000);
            window.cleartimeout();
        }
    });
    

});

    function readAgreement() {
    $(".layer-shade,.layer-iframe").show();
    calPositionMore("serviceAgreement");
    }
    function closeAgreement() {
        $(".layer-shade,.layer-iframe").hide();
        $(".layer-iframe").height("500px");
    }

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

    function showImagesCompare(obj) {
        $("#show_images").addClass("show_compare");
        $(".search_img").addClass("originImg");
        //$("#Image2").addClass("originImg");
        $("#newImg").css("display", "block");
        var imgSrc = getObjectURL(obj.files[0]);
        if (imgSrc) {
            $("#newImg").attr("src",imgSrc);
        }
    }

    function btn_ok() {
        $(".validate_layer_container").removeClass("show");
    }
    function show_number(text){
        $("#show_number").text(text);
    }

    function showValidate_layer(message) {
        var show_message = message;
        $(".validate_layer_container").addClass("show")
        $(".show_content_m").addClass("animated");
        $(".show_message").text(show_message);
    }

    function showType() {
        $('#input_box1').hide();
        $('#select_box1').show();
        $('#select_box2').show();
        $('#show_content .dd').hide();
        $('#show_content .dd2').show();
    }



