<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/5
  Time: 23:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/shopping.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/bootstrap/css/bootstrap.min.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/distpicker.data.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/distpicker.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/main.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/carts.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/carousel.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/guding.css">
    <script src="${pageContext.request.contextPath}/js/carts.js"></script>
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
                    "height":"410px",
                    "border":"1px solid #e31436",
                    // "margin":"30px 6px"
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
                    "height":"410px",
                    "border":"0px",
                    "color":"black"
                })
                $(this).children(".text").html("<a href='#' style='color:black;'>【当家爆款 温和氨基酸】Freeplus芙...</a>");
            })
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
            <div id="navcenter">
                <a href="#">手机考拉</a>
            </div>

        </div>
    </nav>

    <div id="TopSearch">
        <a href="kaola.html" title="网易考拉" style="float:left;margin:20px 30px;"><img src="images/1.png"></a>
    </div>
</header>

<!--购物车开始-->
<div class="col-md-12">
    <div class="col-md-7 col-md-offset-2" style="margin-left: 21.5%">
        <div class="col-md-2">
            <span class="tt">我的购物车 ${shoppingNum}</span>
        </div>
        <div class="col-md-9 col-md-offset-1">
            <img src="images/shopping/2345_image_file_copy_1.jpg">
            <span class="msg" _ti="32">考拉自营商品已免运费</span>
            &nbsp;
            <a href="javascript:;">再逛逛 &gt;</a>
            <span>配送至</span>
            <span data-toggle="distpicker">
				<select></select>
				<select></select>
				<select></select>
			</span>
        </div>
    </div>
    <section class="cartMain" style="margin-top: 50px">
        <div class="cartMain_hd">
            <ul class="order_lists cartTop">
                <li class="list_chk">
                    <!--所有商品全选-->
                    <input type="checkbox" id="all" class="whole_check">
                    <label for="all"></label>
                    全选
                </li>
                <li class="list_con">商品信息</li>
                <li class="list_info">商品参数</li>
                <li class="list_price">单价</li>
                <li class="list_amount">数量</li>
                <li class="list_sum">金额</li>
                <li class="list_op">操作</li>
            </ul>
        </div>

        <div class="cartBox">
            <div class="shop_info">
                <div class="all_check">
                    <!--店铺全选-->
                    <input type="checkbox" id="shop_a" class="shopChoice">
                </div>
            </div>
            <div class="order_content" >
                <c:forEach items="${shoppingMsg}" var="s" >
                        <ul class="order_lists" id="haha">
                            <span style="display: none;" id="id">${s.id}</span>
                            <li class="list_chk">
                                <input type="checkbox" id="checkbox_2" class="son_check">
                                <label for="checkbox_2"></label>
                            </li>
                            <li class="list_con">
                                <div class="list_img"><a href="javascript:;"><img src="${pageContext.request.contextPath}/${s.commodity_img}" alt=""></a></div>
                                <div class="list_text"><a href="javascript:;">${s.commodity_name}</a></div>
                            </li>
                            <li class="list_info">
                                <p>规格：默认</p>
                                <p>尺寸：16*16*3(cm)</p>
                            </li>
                            <li class="list_price">
                                <p class="price">￥${s.commodity_price}</p>
                            </li>
                            <li class="list_amount">
                                <div class="amount_box">
                                    <a href="javascript:;" class="reduce reSty">-</a>
                                    <input type="text" value="1" class="sum">
                                    <a href="javascript:;" class="plus">+</a>
                                </div>
                            </li>
                            <li class="list_sum">
                                <p class="sum_price">￥${s.commodity_price}</p>
                            </li>
                            <li class="list_op">
                                <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
                            </li>
                        </ul>
                </c:forEach>
            </div>
        </div>


        <!--底部-->
        <div class="bar-wrapper">
            <div class="bar-right">
                <div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
                <div class="totalMoney">共计: <strong class="total_text">0.00</strong></div>
                <div class="calBtn"><a href="javascript:;">结算</a></div>
            </div>
        </div>
    </section>
    <section class="model_bg"></section>
    <section class="my_model">
        <p class="title">删除宝贝<span class="closeModel">X</span></p>
        <p>您确认要删除该宝贝吗？</p>
        <div class="opBtn"><a href="javascript:;" class="dialog-sure">确定</a><a href="javascript:;" class="dialog-close">关闭</a></div>
    </section>
</div>

<div class="slider col-md-12" style="margin-top: -5%">
    <ul>
        <li><a href="#"><img src="images/shopping/2345_image_file_copy_2.jpg" height="250" width="1920"></a></li>
        <li><a href="#"><img src="images/shopping/2345_image_file_copy_3.jpg" height="250" width="1920"></a></li>
        <li><a href="#"><img src="images/shopping/2345_image_file_copy_4.jpg" height="250" width="1920"></a></li>
        <li><a href="#"><img src="images/shopping/2345_image_file_copy_5.jpg" height="250" width="1920"></a></li>
    </ul>
    <!--箭头-->
    <div class="arrow">
        <span class="arrow-left">&lt;</span>
        <span class="arrow-right">&gt;</span>
    </div>
</div>

<footer>
    <div class="container">
        <div class="row col-md-12" style="margin-top: 50px">
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
<div id="actGotop"><a href="javascript:;" title="Top"></a></div>
<script>
    $("#haha .delBtn").click(function () {
        var id=$(this).parents("#haha").find("#id").text();
        $(".dialog-sure").click(function () {
            $.ajax({
                url:"${pageContext.request.contextPath}/delShopping",
                type:"POST",
                data:{id:id},
                success:function (data) {
                    if(data==1){
                    }
                }
            })
        })

    })
</script>

</body>
