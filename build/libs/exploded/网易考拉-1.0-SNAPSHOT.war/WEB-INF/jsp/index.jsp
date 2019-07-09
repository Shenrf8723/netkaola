<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/5
  Time: 0:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/bootstrap/css/bootstrap.min.css" />

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/all.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/guding.css">
    <script>
        $(function () {
            $(window).scroll(function(){
                if($(window).scrollTop()>=$("#TopNav").height()){
                    $("#TopNav").addClass("fixed");
                }else{
                    $("#TopNav").removeClass("fixed");
                }
            })
        })

        $(function(){
            $("#toplevel").mouseenter(function () {
                $(this).siblings(".item").find(".toplevel2").css("display","block")
            })
            $("#item").mouseleave(function () {
                $("#toplevel").siblings(".item").find(".toplevel2").css("display","none")
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
                    "height":"410px",
                    "border":"1px solid #e31436",
                })
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
                    "height":"410px",
                    "border":"0px",
                    "color":"black"
                })
            })
            $(window).scroll(function () {
                if($(window).scrollTop()>=1000){
                    $("#actGotop").fadeIn(1000)
                }else {
                    $("#actGotop").fadeOut(1000)
                }
            })
            $("#actGotop").click(function () {
                $('html,body').animate({scrollTop:'0px'},1000)
            })
        })
    </script>
</head>
<body>
<header style="height:auto;">
    <nav id="TopNav" class="col-sm-12">
        <div class="fix">
            <ul id="navright">
                <li class="col-sm-1"><a href="#">每日签到</a></li>
                <li class="col-sm-1"><a href="#">我的订单</a></li>
                <li class="col-sm-2">
                    <a href="#">个人中心<span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></a>
                    <ul class="wrap">
                        <li ><a href="#">我的优惠券</a></li>
                        <li ><a href="#">我的红包</a></li>
                        <li style="border-bottom:1px solid gainsboro;"><a href="#" >我的考拉豆</a></li>

                        <li><a href="#">账号管理</a></li>
                        <li><a href="#">我的实名认证</a></li>
                        <li style="border-bottom:1px solid gainsboro;"><a href="#">我的发票抬头</a></li>

                        <li><a href="#">我收藏的商品</a></li>
                        <li style="border-bottom:1px solid gainsboro;"><a href="#">我关注的品牌</a></li>

                        <li><a href="#">售后管理</a></li>
                    </ul>
                </li>
                <li class="col-sm-2">
                    <a href="#">客户服务<span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></a>
                    <ul class="wrap">
                        <li><a href="#">联系客服</a></li>
                        <li><a href="#">帮助中心</a></li>
                        <li><a href="#">知识产权保护</a></li>
                        <li><a href="#">规则中心</a></li>
                    </ul>
                </li>
                <li class="col-sm-2">
                    <a href="#">充值中心<span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></a>
                    <ul class="wrap">
                        <li><a href="#">话费流量</a></li>
                        <li><a href="#">游戏充值</a></li>
                        <li><a href="#">AppStore充值卡</a></li>
                    </ul>
                </li>
                <li class="col-sm-3" style="width:110px;">
                    <a href="#">消费者权益<span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></a>
                    <ul class="wrap">
                        <li><a href="#">消费者告知书</a></li>
                        <li><a href="#">消费投诉公示</a></li>
                    </ul>
                </li>
                <li class="col-sm-1">
                    <a href="#">更多<span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></a>
                    <ul class="wrap">
                        <li style="border-bottom:1px solid gainsboro;"><a href="#">收藏本站</a></li>

                        <li><a href="#">新浪微博</a></li>
                        <li><a href="#">微信公众号</a></li>
                        <li style="border-bottom:1px solid gainsboro;"><a href="#">易信公众号</a></li>

                        <li style="border-bottom:1px solid gainsboro;"><a href="#">招商合作</a></li>

                        <li><a href="#">考拉招聘</a></li>
                    </ul>
                </li>
            </ul>
            <div id="navleft">
                <span>您好,${user}</span>
                <span><a href="${pageContext.request.contextPath}/UserQuit">退出</a></span>
            </div>
            <div class="" id="navcenter">
                <a href="#">手机考拉</a>
            </div>

        </div>
    </nav>

    <div id="TopSearch">
        <a href="kaola.html" title="网易考拉" style="float:left;margin:20px 30px;"><img src="images/1.png"></a>
        <div  id="center">
            <div id="search">
                <input type="text" class="col-xs-9" value="印象保温杯" id="text">
                <button class="col-xs-1"><img src="images/search.png" width="25" height="25"></button>
            </div>
            <ul>
                <li><a href="#">面膜</a></li>
                <li><a href="#">口红</a></li>
                <li><a href="#">减肥</a></li>
                <li><a href="#">全球工厂</a></li>
                <li><a href="#">运动鞋</a></li>
                <li><a href="#">项链</a></li>
                <li><a href="#">女包</a></li>
            </ul>
        </div>
        <a href="${pageContext.request.contextPath}/toShopping" class="cart">
            <span><img src="images/icon_shopping cart.png" >购物车<span class="badge" style="background: #ac2925">${shoppingNum}</span></span>
        </a>

    </div>

    <div id="CenterNav">
        <ul class="ul1" >
            <li><a href="${pageContext.request.contextPath}/toIndex?name=${user}">首页</a></li>
            <li><a href="${pageContext.request.contextPath}/toCommodityCategory?name=${user}">商品分类</a></li>
            <li><a href="${pageContext.request.contextPath}/toguoJiaGuan?name=${user}">国家馆</a></li>
            <li><a href="#">每日上新</a></li>
            <li><a href="#">海外旗舰店</a></li>
            <li><a href="#">工厂店</a></li>
            <li><a href="#">品质奶粉</a></li>
            <li><a href="#">人气面膜</a></li>
            <li><a href="#">礼品卡</a></li>
        </ul>

        <div id="item" style="width:165px;">
            <div class="toplevel" id="toplevel">
                <span><i class="fa fa-bars" style="color: #fff;height: 12px;margin-left: 15px;font-size: 17px"></i></span>
                <span style="margin-left: 20%;color: #fff;font-size: 14px;">所有分类</span>
            </div>
            <div class="item">
                <c:forEach var="c" items="${commodity}">
                    <div class="toplevel3">
                        <div class="toplevel2 title one" style="display: none">
                            <span><i class="${c.vector}" style="color: #fff;height: 12px;margin-left: 15px;font-size: 17px"></i></span>
                            <span style="margin-left: 20%;color: #fff;font-size: 14px;">${c.cname}</span>
                            <span style="margin-left: 10px;color: #fff;font-size: 18px;" class="arrow">></span>
                        </div>
                        <div class="title2">
                            <div style="float:left;width:500px;padding:5px 20px;margin-right:10px;">
                                <div style="border-bottom:1px solid #f2f2f2;">
                                    <h4 style="padding-top:10px;padding-left:30px;">${c.cname}</h4>
                                </div>
                                <div class="lists" style="padding-top:10px;">
                                    <c:if test="${c.cid=='t1'}">
                                        <c:forEach var="t" items="${t1}">
                                            <a href="${pageContext.request.contextPath}/toDetails?id=${t.id}">${t.name}</a>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${c.cid=='t2'}">
                                        <c:forEach var="t" items="${t2}">
                                            <a href="${pageContext.request.contextPath}/toDetails?id=${t.id}">${t.name}</a>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${c.cid=='t3'}">
                                        <c:forEach var="t" items="${t3}">
                                            <a href="${pageContext.request.contextPath}/toDetails?id=${t.id}">${t.name}</a>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${c.cid=='t4'}">
                                        <c:forEach var="t" items="${t4}">
                                            <a href="${pageContext.request.contextPath}/toDetails?id=${t.id}">${t.name}</a>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${c.cid=='t5'}">
                                        <c:forEach var="t" items="${t5}">
                                            <a href="${pageContext.request.contextPath}/toDetails?id=${t.id}">${t.name}</a>
                                        </c:forEach>
                                    </c:if>

                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>

    <div class="slider">
        <ul>
            <li><a href="#"><img src="images/slideshow/2345_image_file_copy_1.jpg" alt=""></a></li>
            <li><a href="#"><img src="images/slideshow/2345_image_file_copy_2.jpg" alt=""></a></li>
            <li><a href="#"><img src="images/slideshow/2345_image_file_copy_3.jpg" alt=""></a></li>
            <li><a href="#"><img src="images/slideshow/2345_image_file_copy_4.jpg" alt=""></a></li>
            <li><a href="#"><img src="images/slideshow/2345_image_file_copy_5.jpg" alt=""></a></li>
            <li><a href="#"><img src="images/slideshow/2345_image_file_copy_6.jpg" alt=""></a></li>
        </ul>
        <!--箭头-->
        <div class="arrow">
            <span class="arrow-left">&lt;</span>
            <span class="arrow-right">&gt;</span>
        </div>
    </div>
</header>

<main style="background: #F0F0F0;" >
    <div class="center">

        <!--优惠券开始-->
        <div style="height:600px;margin-bottom:-20px;">
            <div class="discount2" style="border-bottom: 1px solid silver;padding-bottom: 20px">
                <div style="height:70px;">
                    <h1 style="color: #E56278;text-align: center;padding-top:15px;">新人专享区</h1>
                </div>

                <div style="height:200px;">
                    <div class="discount1" >
                        <div style="margin-left: 10%;height: 40%">
                            <span style="font-size: 25px;font-weight: bold;color: white;">￥</span><span style="font-size: 70px;font-weight: bold;color: white">100</span>
                        </div>
                        <p style="margin-top: 20px;text-align: center;color: #FFB9C4;font-size: 20px;font-weight: bold;border-bottom: 1px dashed  #d9534f;padding-bottom: 5px">新人礼包</p>
                        <div class="btn1"><span>点击领取</span></div>
                    </div>
                    <div class="discount1">
                        <div style="margin-left: 15%;height: 40%">
                            <span style="font-size: 25px;font-weight: bold;color: white;">￥</span><span style="font-size: 70px;font-weight: bold;color: white">10</span>
                        </div>
                        <p style="margin-top: 20px;text-align: center;color: #FFB9C4;font-size: 20px;font-weight: bold;border-bottom: 1px dashed  #d9534f;padding-bottom: 5px">无门槛红包</p>
                        <div class="btn1"><span>点击领取</span></div>
                    </div>
                    <div class="discount1">
                        <div style="margin-left: 15%;height: 40%">
                            <span style="font-size: 25px;font-weight: bold;color: white;">￥</span><span style="font-size: 70px;font-weight: bold;color: white">20</span>
                        </div>
                        <p style="margin-top: 20px;text-align: center;color: #FFB9C4;font-size: 20px;font-weight: bold;border-bottom: 1px dashed  #d9534f;padding-bottom: 5px">满169可用</p>
                        <div class="btn1"><span>点击领取</span></div>
                    </div>
                    <div class="discount1">
                        <div style="margin-left: 15%;height: 40%">
                            <span style="font-size: 25px;font-weight: bold;color: white;">￥</span><span style="font-size: 70px;font-weight: bold;color: white">35</span>
                        </div>
                        <p style="margin-top: 20px;text-align: center;color: #FFB9C4;font-size: 20px;font-weight: bold;border-bottom: 1px dashed  #d9534f;padding-bottom: 5px">满256可用</p>
                        <div class="btn1"><span>点击领取</span></div>
                    </div>
                </div>
            </div>


            <div class="discount2" style="border-bottom: 1px solid silver;padding-bottom: 20px">
                <div style="height:60px;">
                    <h1 style="color: #E56278;text-align: center;">不限新老顾客</h1>
                </div>

                <div style="height:200px;">
                    <div class="discount1" >
                        <div style="margin-left: 15%;height: 40%">
                            <span style="font-size: 25px;font-weight: bold;color: white;">￥</span><span style="font-size: 70px;font-weight: bold;color: white">10</span>
                        </div>
                        <p style="margin-top: 20px;text-align: center;color: #FFB9C4;font-size: 20px;font-weight: bold;border-bottom: 1px dashed  #d9534f;padding-bottom: 5px">满99可使用</p>
                        <div class="btn1"><span>点击领取</span></div>
                    </div>
                    <div class="discount1">
                        <div style="margin-left: 15%;height: 40%">
                            <span style="font-size: 25px;font-weight: bold;color: white;">￥</span><span style="font-size: 70px;font-weight: bold;color: white">20</span>
                        </div>
                        <p style="margin-top: 20px;text-align: center;color: #FFB9C4;font-size: 20px;font-weight: bold;border-bottom: 1px dashed  #d9534f;padding-bottom: 5px">满199可使用</p>
                        <div class="btn1"><span>点击领取</span></div>
                    </div>
                    <div class="discount1">
                        <div style="margin-left: 15%;height: 40%">
                            <span style="font-size: 25px;font-weight: bold;color: white;">￥</span><span style="font-size: 70px;font-weight: bold;color: white">25</span>
                        </div>
                        <p style="margin-top: 20px;text-align: center;color: #FFB9C4;font-size: 20px;font-weight: bold;border-bottom: 1px dashed  #d9534f;padding-bottom: 5px">满256可用</p>
                        <div class="btn1"><span>点击领取</span></div>
                    </div>
                    <div class="discount1">
                        <div style="margin-left: 15%;height: 40%">
                            <span style="font-size: 25px;font-weight: bold;color: white;">￥</span><span style="font-size: 70px;font-weight: bold;color: white">40</span>
                        </div>
                        <p style="margin-top: 20px;text-align: center;color: #FFB9C4;font-size: 20px;font-weight: bold;border-bottom: 1px dashed  #d9534f;padding-bottom: 5px">满599可用</p>
                        <div class="btn1"><span>点击领取</span></div>
                    </div>
                </div>

            </div>
        </div>
        <!--优惠券结束-->

        <div style="padding-top:30px;">
            <div style="height:70px;background:#ff2337;">
                <h1 style="color: #fff;text-align: center;padding-top:15px;">个人洗护</h1>
            </div>
            <div style="height: 850px">
            <c:forEach var="c" items="${t1}">
                    <div class="shop col-md-3" style="margin-top: 30px">
                        <a href="${pageContext.request.contextPath}/toDetails?id=${c.id}"><img src="${pageContext.request.contextPath}/${c.img}" width="220px" height="232px"  alt="${c.title}"/></a>
                        <span style="margin-left:10px;">
                        <p></p><span style="font-size:20px;color:#E31436;font-weight:700;">￥${c.price}</span>
                        <span style="border-radius:40px;background:#E31436;color:white;font-size:12px;padding:3px 5px;">新人价</span>
                        <span style="color:#999;font-size:12px;margin-left:3px;">考拉价￥${c.price}</span>
                </span>
                        <p class="text" style="font-size:13px;margin-left:10px;"><a href="${pageContext.request.contextPath}/toDetails?id=${c.id}" style="color:black;text-decoration: none" >${c.title}</a></p>
                        <span style="margin-left:10px;">
                        <span style="border:1px solid #ff2337;color:#e31436;font-size:12px;padding:1px 2px;">自营</span>
                        <span style="background:#e31436;font-size:12px;color:white;padding:1px 2px;">券每满259减25</span>
                        <span style="background:#e31436;font-size:12px;color:white;padding:1px 2px;">白条免息</span>
                </span>
                        <p style="margin-top:15px;position:relative;left:10px;">
                            <img src="images/chart.png"/>
                            <a href="#" style="color:black;text-decoration:none;font-size:12px;font-weight:700;">150507</a>
                            <span style="color:#999;font-size:12px;position:absolute;right:20px;">日本</span>
                        </p>
                        <p style="color:#999;font-size:12px;margin-left:10px;">网易考拉自营</p>
                    </div>
            </c:forEach>
            </div>
        </div>

        <div style="padding-top:30px;">
            <div style="height:70px;background:#ff2337;">
                <h1 style="color: #fff;text-align: center;padding-top:15px;">服饰鞋靴</h1>
            </div>
            <div style="height: 850px">
                <c:forEach var="c" items="${t2}">
                    <div class="shop col-md-3" style="margin-top: 30px">
                        <a href="${pageContext.request.contextPath}/toDetails?id=${c.id}"><img src="${pageContext.request.contextPath}/${c.img}" width="220px" height="232px"  alt="${c.title}"/></a>
                        <span style="margin-left:10px;">
                        <p></p><span style="font-size:20px;color:#E31436;font-weight:700;">￥${c.price}</span>
                        <span style="border-radius:40px;background:#E31436;color:white;font-size:12px;padding:3px 5px;">新人价</span>
                        <span style="color:#999;font-size:12px;margin-left:3px;">考拉价￥${c.price}</span>
                </span>
                        <p class="text" style="font-size:13px;margin-left:10px;"><a href="${pageContext.request.contextPath}/toDetails?id=${c.id}" style="color:black;text-decoration: none" >${c.title}</a></p>
                        <span style="margin-left:10px;">
                        <span style="border:1px solid #ff2337;color:#e31436;font-size:12px;padding:1px 2px;">自营</span>
                        <span style="background:#e31436;font-size:12px;color:white;padding:1px 2px;">券每满259减25</span>
                        <span style="background:#e31436;font-size:12px;color:white;padding:1px 2px;">白条免息</span>
                </span>
                        <p style="margin-top:15px;position:relative;left:10px;">
                            <img src="images/chart.png"/>
                            <a href="#" style="color:black;text-decoration:none;font-size:12px;font-weight:700;">150507</a>
                            <span style="color:#999;font-size:12px;position:absolute;right:20px;">日本</span>
                        </p>
                        <p style="color:#999;font-size:12px;margin-left:10px;">网易考拉自营</p>
                    </div>
                </c:forEach>
            </div>
        </div>

        <div style="padding-top:30px;">
            <div style="height:70px;background:#ff2337;">
                <h1 style="color: #fff;text-align: center;padding-top:15px;">数码家电</h1>
            </div>
            <div style="height: 850px">
                <c:forEach var="c" items="${t3}" >
                    <div class="shop col-md-3" style="margin-top: 30px">
                        <a href="${pageContext.request.contextPath}/toDetails?id=${c.id}"><img src="${pageContext.request.contextPath}/${c.img}" width="220px" height="232px"  alt="${c.title}"/></a>
                        <span style="margin-left:10px;">
                        <p></p><span style="font-size:20px;color:#E31436;font-weight:700;">￥${c.price}</span>
                        <span style="border-radius:40px;background:#E31436;color:white;font-size:12px;padding:3px 5px;">新人价</span>
                        <span style="color:#999;font-size:12px;margin-left:3px;">考拉价￥${c.price}</span>
                </span>
                        <p class="text" style="font-size:13px;margin-left:10px;"><a href="${pageContext.request.contextPath}/toDetails?id=${c.id}" style="color:black;text-decoration: none" >${c.title}</a></p>
                        <span style="margin-left:10px;">
                        <span style="border:1px solid #ff2337;color:#e31436;font-size:12px;padding:1px 2px;">自营</span>
                        <span style="background:#e31436;font-size:12px;color:white;padding:1px 2px;">券每满259减25</span>
                        <span style="background:#e31436;font-size:12px;color:white;padding:1px 2px;">白条免息</span>
                </span>
                        <p style="margin-top:15px;position:relative;left:10px;">
                            <img src="images/chart.png"/>
                            <a href="#" style="color:black;text-decoration:none;font-size:12px;font-weight:700;">150507</a>
                            <span style="color:#999;font-size:12px;position:absolute;right:20px;">日本</span>
                        </p>
                        <p style="color:#999;font-size:12px;margin-left:10px;">网易考拉自营</p>
                    </div>
                </c:forEach>
            </div>
        </div>
        <div style="padding-top:30px;">
            <div style="height:70px;background:#ff2337;">
                <h1 style="color: #fff;text-align: center;padding-top:15px;">运动户外</h1>
            </div>
            <div style="height: 850px">
                <c:forEach var="c" items="${t4}" >
                    <div class="shop col-md-3" style="margin-top: 30px">
                        <a href="${pageContext.request.contextPath}/toDetails?id=${c.id}"><img src="${pageContext.request.contextPath}/${c.img}" width="220px" height="232px"  alt="${c.title}"/></a>
                        <span style="margin-left:10px;">
                        <p></p><span style="font-size:20px;color:#E31436;font-weight:700;">￥${c.price}</span>
                        <span style="border-radius:40px;background:#E31436;color:white;font-size:12px;padding:3px 5px;">新人价</span>
                        <span style="color:#999;font-size:12px;margin-left:3px;">考拉价￥${c.price}</span>
                </span>
                        <p class="text" style="font-size:13px;margin-left:10px;"><a href="${pageContext.request.contextPath}/toDetails?id=${c.id}" style="color:black;text-decoration: none" >${c.title}</a></p>
                        <span style="margin-left:10px;">
                        <span style="border:1px solid #ff2337;color:#e31436;font-size:12px;padding:1px 2px;">自营</span>
                        <span style="background:#e31436;font-size:12px;color:white;padding:1px 2px;">券每满259减25</span>
                        <span style="background:#e31436;font-size:12px;color:white;padding:1px 2px;">白条免息</span>
                </span>
                        <p style="margin-top:15px;position:relative;left:10px;">
                            <img src="images/chart.png"/>
                            <a href="#" style="color:black;text-decoration:none;font-size:12px;font-weight:700;">150507</a>
                            <span style="color:#999;font-size:12px;position:absolute;right:20px;">日本</span>
                        </p>
                        <p style="color:#999;font-size:12px;margin-left:10px;">网易考拉自营</p>
                    </div>
                </c:forEach>
            </div>
        </div>
        <div style="padding-top:30px;">
            <div style="height:70px;background:#ff2337;">
                <h1 style="color: #fff;text-align: center;padding-top:15px;">手表配饰</h1>
            </div>
            <div style="height: 900px">
                <c:forEach var="c" items="${t5}" >
                    <div class="shop col-md-3" style="margin-top: 30px">
                        <a href="${pageContext.request.contextPath}/toDetails?id=${c.id}"><img src="${pageContext.request.contextPath}/${c.img}" width="220px" height="232px"  alt="${c.title}"/></a>
                        <span style="margin-left:10px;">
                        <p></p><span style="font-size:20px;color:#E31436;font-weight:700;">￥${c.price}</span>
                        <span style="border-radius:40px;background:#E31436;color:white;font-size:12px;padding:3px 5px;">新人价</span>
                        <span style="color:#999;font-size:12px;margin-left:3px;">考拉价￥${c.price}</span>
                </span>
                        <p class="text" style="font-size:13px;margin-left:10px;"><a href="${pageContext.request.contextPath}/toDetails?id=${c.id}" style="color:black;text-decoration: none" >${c.title}</a></p>
                        <span style="margin-left:10px;">
                        <span style="border:1px solid #ff2337;color:#e31436;font-size:12px;padding:1px 2px;">自营</span>
                        <span style="background:#e31436;font-size:12px;color:white;padding:1px 2px;">券每满259减25</span>
                        <span style="background:#e31436;font-size:12px;color:white;padding:1px 2px;">白条免息</span>
                </span>
                        <p style="margin-top:15px;position:relative;left:10px;">
                            <img src="images/chart.png"/>
                            <a href="#" style="color:black;text-decoration:none;font-size:12px;font-weight:700;">150507</a>
                            <span style="color:#999;font-size:12px;position:absolute;right:20px;">日本</span>
                        </p>
                        <p style="color:#999;font-size:12px;margin-left:10px;">网易考拉自营</p>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</main>
<br>
<br>
<footer>
    <div class="container">
        <div class="row col-md-12" style="margin-top: 100px">
            <div class="col-md-3">
                <div class="col-md-4">
                    <img src="images/footer1.PNG"/>
                </div>
                <div class="col-md-8">
                    <p>正品承诺</p>
                    <p>正品保证 假一赔十</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="col-md-4">
                    <img src="images/footer2.PNG"/>
                </div>
                <div class="col-md-8">
                    <p>低价保障</p>
                    <p>缩减中间环节 确保低价</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="col-md-4">
                    <img src="images/footer3.PNG"/>
                </div>
                <div class="col-md-8">
                    <p>30天无忧退货</p>
                    <p>国内退货 售后无忧</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="col-md-4">
                    <img src="images/footer4.PNG"/>
                </div>
                <div class="col-md-8">
                    <p>满88包邮</p>
                    <p>部分特殊商品除外</p>
                </div>
            </div>
        </div>
        <br>
        <hr><br>
        <div class="row">
            <div class="col-md-3">
                <img src="images/footer6.PNG">
            </div>
            <div class="col-md-7">
                <!--<div class="col-lg-2">-->
                <!--<h4>考拉保障</h4><h6>假一赔十</h6><h6>廉政监督</h6>-->
                <!--</div>-->
                <div class="col-md-3">
                    <h4>新手指南</h4><h6>购物流程</h6><h6>支付方式</h6><h6>通关税费</h6><h6>常见问题</h6>
                </div>
                <div class="col-md-3">
                    <h4>售后服务</h4><h6>退货政策</h6><h6>退货流程</h6><h6>退款说明</h6><h6>联系客服</h6>
                </div>
                <div class="col-md-3">
                    <h4>物流配送</h4><h6>配送方式</h6><h6>配送服务</h6><h6>运费标准</h6><h6>物流跟踪</h6>
                </div>
                <div class="col-md-3">
                    <h4>关于我们</h4><h6>联系我们</h6><h6>招商合作</h6><h6>销售联盟</h6><h6>CEO邮箱</h6>
                </div>
            </div>
            <div class="col-md-2">
                <img src="images/footer7.PNG">
                <h6>&nbsp;&nbsp;&nbsp;&nbsp;扫描下载手机版</h6>
            </div>
        </div>
        <br><br><br>
    </div>
    <<div class="container-fluid" style="height: 183px;background-color: #333333;">
    <div class="container" style="color: #c2c2c2;text-align: center">
        <br>
        <p><span>About NetEase</span>-<span>公司简介</span>-<span>联系方法</span>-<span>友情链接</span>-<span>招聘信息</span>-<span>客户服务</span>-<span>隐私政策</span>-<span>网络营销</span>-<span>网易考拉</span></p>
        <p><span>网络文化经营许可证:浙网文[2019]1372-138号</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>增值电信业务经营许可证:浙B2-20160288</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>自营经营者信息</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>(浙)网械平台备字[2018]第00007号</span></p>
        <p><span><img src="images/f1.PNG"></span><span>浙公网安备 33010802002216号</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>网易公司版权所有@1997-2019</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>互联网药品信息服务资格证书编号(浙) -2017-0027</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>浙ICP备16011229号-6</span></p>
        <p><span><img src="images/f2.PNG"></span><span><img src="images/f3.PNG"></span><span><img src="images/f4.PNG"></span></p>
    </div>
</div>
</footer>
<!-- 返回顶部小火箭 -->
<div id="actGotop"><a href="javascript:;" title="Top"></a></div>
</body>
</html>
