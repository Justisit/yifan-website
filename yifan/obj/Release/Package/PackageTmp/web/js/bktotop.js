// JavaScript Document

$(function() {
    if ($("#footer").length > 0) {
        $("body").append('<div id="backtotop"><div class="bttbg"></div></div>');
        
        jQuery(window).scroll(function() {
            if (jQuery(this).scrollTop() > 200) {
                jQuery("#backtotop").addClass("showme")
            } else {
                jQuery("#backtotop").removeClass("showme")
            }
		});
		       
	   jQuery("#backtotop").click(function() {
            jQuery("body,html").animate({
                scrollTop: 0
            },
            400);
            return false
        });
		
    if (jQuery(window).scrollTop() == 0) {
        jQuery("#backtotop").removeClass("showme")
    } else {
        jQuery("#backtotop").addClass("showme")
    }
    }
});
    
