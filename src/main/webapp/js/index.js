$(function(){
    $("#toplevel").mouseenter(function () {
        $(this).siblings(".item").find(".toplevel2").css("display","block")
    })
    $("#item").mouseleave(function () {
        $("#toplevel").siblings(".item").find(".toplevel2").css("display","none")
    })
    $("#item").hover(function(){
        $(this).addClass("layer");
    },function(){
        $(this).removeClass("layer");
    });

    $(".toplevel3").mouseenter(function () {
        $(this).find(".toplevel2").css("background","#FFFFFF")
        $(this).find("span,i").css("color","red")
        $(this).children(".title2").css({"display":"block","top":"0px"})
    })
    $(".toplevel3").mouseleave(function () {
        $(this).find(".toplevel2").css("background","linear-gradient(90deg,red,#ff3264)")
        $(this).find("span,i").css("color","#fff")
        $(this).children(".title2").css({"display":"none"})
    })
    $(function () {
        var count=0;
        $(".arrow .arrow-left").click(function () {
            count--;
            if(count==-1){
                count=$(".slider li").length-1;
            }
            console.log(count);
            $(".slider li").eq(count).fadeIn().siblings("li").fadeOut()
        })
        $(".arrow .arrow-right").click(function () {
            count++;
            if(count==$(".slider li").length){
                count=0;
            }
            console.log(count);
            $(".slider li").eq(count).fadeIn().siblings("li").fadeOut()
        })
    })
    $(".ul1 li").mouseenter(function () {
        $(this).find("a").css("color","#ff1e32")
        $(this).siblings("li").find("a").css("color","#333")
    })
    $(".ul1 li").mouseleave(function () {
        $(this).find("a").css("color","#333")
    })
    $("#toplevel").mouseenter(function () {
        $(".item").css("display","block")
    })
    $("#item").mouseleave(function () {
        $(".item").css("display","none")
    })

    $(".toplevel3").mouseenter(function () {
        $(this).find(".toplevel2").css("background","#FFFFFF")
        $(this).find("span,i").css("color","red")
        $(this).children(".title2").css({"display":"block","top":"0px"})
    })
    $(".toplevel3").mouseleave(function () {
        $(this).find(".toplevel2").css("background","linear-gradient(90deg,red,#ff3264)")
        $(this).find("span,i").css("color","#fff")
        $(this).children(".title2").css({"display":"none"})
    })
    $(function () {
        var count=0;
        $(".arrow .arrow-left").click(function () {
            count--;
            if(count==-1){
                count=$(".slider li").length-1;
            }
            console.log(count);
            $(".slider li").eq(count).fadeIn().siblings("li").fadeOut()
        })
        $(".arrow .arrow-right").click(function () {
            count++;
            if(count==$(".slider li").length){
                count=0;
            }
            console.log(count);
            $(".slider li").eq(count).fadeIn().siblings("li").fadeOut()
        })
    })
    $(".ul1 li").mouseenter(function () {
        $(this).find("a").css("color","#ff1e32")
    })
    $(".ul1 li").mouseleave(function () {
        $(this).find("a").css("color","#333")
    })

    $("#navright>li,#navleft span,#navcenter").mouseenter(function () {
        $(this).children("a").css("color","white")
    })
    $("#navright>li,#navleft span,#navcenter").mouseleave(function () {
        $(this).children("a").css("color","#999")
    })

    var $li = $(".fix>ul>li");
    $li.mouseenter(function(){
        $(this).children(".wrap").show();
        $(this).children("a").css({
            "color":"#ff2337",
        })
    })

    $li.mouseleave(function(){
        $(this).children(".wrap").hide();
        $(this).children("a").css({
            "color":"#999",

        })
    })

    $(".wrap li").mouseenter(function(){
        $(this).find("a").css("color","#ff1e32");
    })

    $(".wrap li").mouseleave(function(){
        $(this).find("a").css("color","#999");
    })

    $(".cart").mouseenter(function(){
        $(this).css({
            "color":"#ff1e32",
            "background":"#FFF4F5",
            "text-decoration":"none"
        })
    })

    $(".cart").mouseleave(function(){
        $(this).css({
            "color":"#999",
            "background":"white"
        })
    })

    $("#text").focus(function(){
        if($(this).val() == '印象保温杯') {
            $(this).val("");
        }
    })

    $('#text').blur(function(){
        if($(this).val() == "") {
            $(this).val('印象保温杯');
            // $(this).css("color","#999")
        }
    })

    $(".shop").mouseenter(function(){
        $(this).css({
            "height":"420px",
            "z-index":"999999",
            "border":"1px solid #e31436",
        })
        $(this).children(".text").html("<a href='#' style='color:black;'>【当家爆款 温和氨基酸】Freeplus芙丽芳丝 净润洗面霜 100g*3</a>");
        $(".text a").mouseenter(function(){
            $(this).css({
                "color":"#e31436",
                "text-decoration":"e31436"
            })
        })

        $(".text a").mouseleave(function(){
            $(this).css({
                "color":"black",
            })
        })
    })

    $(".shop").mouseleave(function(){
        $(this).css({
            "height":"390px",
            "border":"0px",
            "color":"black"
        })
        $(this).children(".text").html("<a href='#' style='color:black;'>【当家爆款 温和氨基酸】Freeplus芙...</a>");
    })
})