//zhang yz




$(document).ready(function () {
    $("#.site-topbar .topbar-go").hover(function () {
        $("#loader").show();
        $(".a-menu").hide();
        setTimeout('$("#loader").hide(); $(".a-menu").show();', 1000);
        window.clearTimeout();
    });
    $(".topText").hover(function () {
        $(".a-text").css("background", "#fff")
        $(".topbar-aboutUs .topText ul").show();
    }, function () {
        $(".a-text").css("background", "#2e6efc")
        $("..topbar-aboutUs .topText ul").hide();
    });

    //search
    $("#search").focus(function () {
        $(".keyword-list.hide").removeClass("hide");
        $(".search-hot-words").css("display", "none");
    });
    $("#search").blur(function () {
        setTimeout("$('.keyword-list').addClass('hide')", 100);
        $(".search-hot-words").show();
    });
    //star goods 切换
    $(".control.control-prev").click(function () {
        left();
        parallaxLeft();
    });
    $(".control.control-next").click(function () {
        right();
        parallaxRight();
    });

    //搜索btn传值
    $("#search").blur(function () {
        var keyword = $("#search").val();
        if (keyword != "") {
            $("#search-go").attr("href", "../web/search-result.aspx?content=" + keyword);
        }
    });

    setTimeout("right()", 6000);
    window.clearTimeout();
    setInterval("left(); setTimeout('right()', 6000);", 12000);

    setTimeout("parallaxRight()", 6000);
    window.clearTimeout();
    setInterval("parallaxLeft(); setTimeout('parallaxRight()', 6000);", 12000);

    //翻页button
    var numHide = $("#numHideId").val();
    var pageCount = $("#pageCount").text();
    if (pageCount == numHide) {
        $(".posts-nav .next").addClass("post-disabled");
        $(".posts-nav .next").removeAttr("href");
        $(".allPageNum").text("o(^▽^)o已经是最后一页了呦")
    } else {
        $(".posts-nav .next .post-disabled").removeClass("post-disabled");
        $(".posts-nav .next .post-disabled").attr("href", "javascript:__doPostBack('btn_next','')");
        $(".allPageNum").text(numHide)
    }
    if (pageCount == "1") {
        $(".posts-nav .previous").addClass("post-disabled");
        $(".posts-nav .previous").removeAttr("href");
        $(".allPageNum").text("o(^▽^)o已经是第一页了呦")
    } else {
        $(".posts-nav .previous .post-disabled").removeClass("post-disabled");
        $(".posts-nav .previous .post-disabled").attr("href", "javascript:__doPostBack('btn_pre','')");
    }
    $("#view-well .goods-list li").hover(function () {
        $("#view-well .goods-list li div.move").addClass("moveDiv");
    }, function () {
        $("#view-well .goods-list li div.moveDiv").removeClass("moveDiv")
    });
    var like = parseInt($("#isLike span.upvote").text()) + 1;
    var goodsNum = $("#goodsNum").text();
    $("#isLike").one("click", function () {
        $.ajax({
            type: 'post',
            url: 'Handler.ashx',
            data: { like:like,goodsNum:goodsNum},
            //contentType:"application/json;charset=utf-8",
            dataType: 'text',
            success: function (data) {
                if (data != null && data != undefined) {
                    var num = Math.floor(Math.random() * 10).toString();
                    $(".like span").text(data);
                    $("#isLike").addClass("liked");
                    textChang(num);
                } else {
                    $("#isLike").removeClass("liked")
                }
            },
            error:function() {
                alert("sorry unknow happened !!")
            }
        });
    });


});

    function left() {
        $(".yf-controls-list.goods-list").addClass("left");
        $(".yf-controls-list.goods-list").removeClass("right");
        $(".control.control-prev").addClass("control-disabled")
        $(".control.control-next").removeClass("control-disabled")
    }
    function right(){
        $(".yf-controls-list.goods-list").removeClass("left");
        $(".yf-controls-list.goods-list").addClass("right");
        $(".control.control-prev").removeClass("control-disabled")
        $(".control.control-next").addClass("control-disabled")
    }
    function parallaxLeft() {
        $(".yf-controls-list.goods-list.parallax").addClass("parallax-left");
        $(".yf-controls-list.goods-list.parallax").removeClass("parallax-right");
        $(".control.control-prev").addClass("control-disabled")
        $(".control.control-next").removeClass("control-disabled")
    }
    function parallaxRight() {
        $(".yf-controls-list.goods-list.parallax").removeClass("parallax-left");
        $(".yf-controls-list.goods-list.parallax").addClass("parallax-right");
        $(".control.control-prev").removeClass("control-disabled")
        $(".control.control-next").addClass("control-disabled")
    }
    function textChang(num) {
        switch (num) {
            case "1": alert("多一份点赞，多一份幸福");
                break;
            case "2": alert("多一份点赞，多一份微笑");
                break;
            case "3": alert("THANK YOU");
                break;
            case "4": alert("你一定是一个乐观的人");
                break;
            case "5": alert("谢谢你为作者加油");
                break;
            case "6": alert("你的喜爱是作者最大的动力");
                break;
            case "7": alert("认真的人运气都不会太差");
                break;
            case "8": alert("一份耕耘一份收获");
                break;
            case "9": alert("你是人间的四月天");
                break;
            default: alert("不小心出错了呀！！");
                break;
        }
    }
