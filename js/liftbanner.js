var w_banner_left;

jQuery(function($) {
    $("#PopContent").addClass("content_addChild");

    // 리프트 배너 크기가 991보다 작을 경우 포지션 재계산
    if ($(".w_banner").width() < 1000)
        w_banner_left = 1000 - $(".w_banner").width();
    else
        w_banner_left = 0;

    if (getCookie("liftbanner") != "checked") {
        timeprice = function() {
            $('.w_banner').show().animate({left: w_banner_left}, {duration: 2600, easing: 'easeOutQuint'});
        }
        setTimeout(timeprice, 800);

        // auto-close!!
        auto_close_liftbanner = function() {
            $('.w_banner').animate({left: '1000px'}, {duration: 2600, easing: 'easeOutQuint'});
        }
        setTimeout(auto_close_liftbanner, 8000);
    }

});

function getCookie(name) {
    var cname = name + "=";
    var dc = document.cookie;
    if (dc.length > 0) {
        begin = dc.indexOf(cname);
        if (begin != -1) {
            begin += cname.length;
            end = dc.indexOf(";", begin);
            if (end == -1)
                end = dc.length;
            if ("EHCustName" == name || "LAST_SECT" == name) {
                return decodeURIComponent(dc.substring(begin, end));
            }
            else {
                return unescape(dc.substring(begin, end));
            }
        }
    }
    return null;
}

// liftBanner cookie
setCookie = function(name, value, expiredays) {
    var todayDate = new Date();
    todayDate.setDate(todayDate.getDate() + expiredays);
    document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";"
}

// re-open!!
var re_flag = "n";
function re_liftbanner() {

    if (re_flag == "n") {
        $('.w_banner').show().animate({left: w_banner_left}, {duration: 1200, easing: 'easeOutQuint'});
        re_flag = "y";
    } else if (re_flag == "y") {
        $('.w_banner').animate({left: '1000px'}, {duration: 1200, easing: 'easeOutQuint'});
        re_flag = "n";
    }
}

hide_img = function() {
    $('.w_banner').hide();
}
setTimeout(hide_img, 300);

// close(cookie)
function close_liftbanner() {
    setCookie("liftbanner", "checked", 1);	// cookie set.

    $('.w_banner').animate({left: '1000px'}, {duration: 1200, easing: 'easeOutQuint'});
    re_flag = "n";
}

// close(not cookie)
function close_liftbanner2() {
    $('.w_banner').animate({left: '1000px'}, {duration: 1200, easing: 'easeOutQuint'});
    re_flag = "n";
}