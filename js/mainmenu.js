$(document).ready(function() {

    $("#gnb>li>a").mouseover(function() {
        $("#gnb>li>ul").hide();
        $(this).parent().find("ul").slideDown("fast");
    });
    $("#gnb>li>a").focus(function() {
        $(this).mouseover();
    });

    $("#gnb>li>ul").mouseleave(function() {
        $("#gnb>li>ul").hide();
    });

});


