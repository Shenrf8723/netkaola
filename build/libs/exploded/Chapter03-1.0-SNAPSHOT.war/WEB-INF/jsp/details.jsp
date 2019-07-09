<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/5
  Time: 0:08
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
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/details.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/distpicker.data.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/distpicker.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/main.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/all.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/carousel.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/guding.css">

</head>
<body>
<div class="slider" style="margin-top:-10px;height:80px;">
    <ul>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/details/1.jpg" alt=""></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/details/2.jpg" alt=""></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/images/details/3.jpg" alt=""></a></li>
    </ul>
    <!--箭头-->
    <div class="arrow">
        <span class="arrow-left">&lt;</span>
        <span class="arrow-right">&gt;</span>
    </div>
</div>
<header style="height:auto;">
    <nav id="TopNav" class="col-sm-12">
        <div class="fix">
            <ul id="navright">
                <li class="col-sm-1">
                    <a href="#">每日签到</a>
                </li>
                <li class="col-sm-1">
                    <a href="#">我的订单</a>
                </li>
                <li class="col-sm-2">
                    <a href="#">个人中心<span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></a>
                    <ul class="wrap">
                        <li>
                            <a href="#">我的优惠券</a>
                        </li>
                        <li>
                            <a href="#">我的红包</a>
                        </li>
                        <li style="border-bottom:1px solid gainsboro;">
                            <a href="#">我的考拉豆</a>
                        </li>

                        <li>
                            <a href="#">账号管理</a>
                        </li>
                        <li>
                            <a href="#">我的实名认证</a>
                        </li>
                        <li style="border-bottom:1px solid gainsboro;">
                            <a href="#">我的发票抬头</a>
                        </li>

                        <li>
                            <a href="#">我收藏的商品</a>
                        </li>
                        <li style="border-bottom:1px solid gainsboro;">
                            <a href="#">我关注的品牌</a>
                        </li>

                        <li>
                            <a href="#">售后管理</a>
                        </li>
                    </ul>
                </li>
                <li class="col-sm-2">
                    <a href="#">客户服务<span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></a>
                    <ul class="wrap">
                        <li>
                            <a href="#">联系客服</a>
                        </li>
                        <li>
                            <a href="#">帮助中心</a>
                        </li>
                        <li>
                            <a href="#">知识产权保护</a>
                        </li>
                        <li>
                            <a href="#">规则中心</a>
                        </li>
                    </ul>
                </li>
                <li class="col-sm-2">
                    <a href="#">充值中心<span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></a>
                    <ul class="wrap">
                        <li>
                            <a href="#">话费流量</a>
                        </li>
                        <li>
                            <a href="#">游戏充值</a>
                        </li>
                        <li>
                            <a href="#">AppStore充值卡</a>
                        </li>
                    </ul>
                </li>
                <li class="col-sm-3" style="width:110px;">
                    <a href="#">消费者权益<span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></a>
                    <ul class="wrap">
                        <li>
                            <a href="#">消费者告知书</a>
                        </li>
                        <li>
                            <a href="#">消费投诉公示</a>
                        </li>
                    </ul>
                </li>
                <li class="col-sm-1">
                    <a href="#">更多<span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></a>
                    <ul class="wrap">
                        <li style="border-bottom:1px solid gainsboro;">
                            <a href="#">收藏本站</a>
                        </li>

                        <li>
                            <a href="#">新浪微博</a>
                        </li>
                        <li>
                            <a href="#">微信公众号</a>
                        </li>
                        <li style="border-bottom:1px solid gainsboro;">
                            <a href="#">易信公众号</a>
                        </li>

                        <li style="border-bottom:1px solid gainsboro;">
                            <a href="#">招商合作</a>
                        </li>

                        <li>
                            <a href="#">考拉招聘</a>
                        </li>
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
        <div id="center">
            <div id="search">
                <input type="text" class="col-xs-9" value="印象保温杯" id="text">
                <button class="col-xs-1"><img src="images/search.png" width="25" height="25"></button>
            </div>
            <ul>
                <li>
                    <a href="#">面膜</a>
                </li>
                <li>
                    <a href="#">口红</a>
                </li>
                <li>
                    <a href="#">减肥</a>
                </li>
                <li>
                    <a href="#">全球工厂</a>
                </li>
                <li>
                    <a href="#">运动鞋</a>
                </li>
                <li>
                    <a href="#">项链</a>
                </li>
                <li>
                    <a href="#">女包</a>
                </li>
            </ul>
        </div>
        <a href="${pageContext.request.contextPath}/toShopping" class="cart">
            <span><img src="images/icon_shopping cart.png" >购物车<span class="badge" style="background: #ac2925" id="num">${shoppingNum}</span></span>
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
                                            <a href="#">${t.name}</a>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${c.cid=='t2'}">
                                        <c:forEach var="t" items="${t2}">
                                            <a href="#">${t.name}</a>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${c.cid=='t3'}">
                                        <c:forEach var="t" items="${t3}">
                                            <a href="#">${t.name}</a>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${c.cid=='t4'}">
                                        <c:forEach var="t" items="${t4}">
                                            <a href="#">${t.name}</a>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${c.cid=='t5'}">
                                        <c:forEach var="t" items="${t5}">
                                            <a href="#">${t.name}</a>
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
            <li>
                <a href="#"><img src="images/slideshow/2345_image_file_copy_1.jpg" alt=""></a>
            </li>
            <li>
                <a href="#"><img src="images/slideshow/2345_image_file_copy_2.jpg" alt=""></a>
            </li>
            <li>
                <a href="#"><img src="images/slideshow/2345_image_file_copy_3.jpg" alt=""></a>
            </li>
            <li>
                <a href="#"><img src="images/slideshow/2345_image_file_copy_4.jpg" alt=""></a>
            </li>
            <li>
                <a href="#"><img src="images/slideshow/2345_image_file_copy_5.jpg" alt=""></a>
            </li>
            <li>
                <a href="#"><img src="images/slideshow/2345_image_file_copy_6.jpg" alt=""></a>
            </li>
        </ul>
        <!--箭头-->
        <div class="arrow">
            <span class="arrow-left">&lt;</span>
            <span class="arrow-right">&gt;</span>
        </div>
    </div>
</header>
<hr>
<div class="container">
    <c:forEach var="c" items="${commidtiyById}">
        <div class="row">
            <div class="col-md-4">
                <div style="border: 1px solid #eee;">
                    <img id="img" src="${c.img}" alt="${c.title}" class="center-block" style="height: 400px;width: 350px;"/>
                </div>
                <div class="row" style="margin-bottom: 25px;"></div>
            </div>
            <div class="col-md-7 col-lg-offset-1">
                <div class="row">
                    <div class="pull-left">
                        <img src="images/d3c18d60f0e54c32af5cf24d18be585b1419662519909i46mer1g10007.png" alt="" width="25px" height="25px"/>
                        <span>法国</span>
                        <span>|<a href="" class="lianjie">${c.name}</a></span>
                    </div>
                    <div class="pull-right">
                        <p style="border: 1px solid #FE0712; color: #FE0712;font-weight: bold;">自营|品牌直采</p>
                    </div>

                </div>
                <div class="row">
                    <h4 style="font-weight: bold" id="commodity_name">${c.title}</h4>
                </div>
                <div class="row">
                    <div class="panel panel-danger">
                        <div class="panel-heading">
                            <h3 class="panel-title" style="color: #ffffff"><span class="pull-left"><img src="images/191a6c21-1d3c-479f-9d4a-383bf214b71fT1905311348_200_80.jpg" style="height: 37px; width: 80px;position: relative;top: -9px;"/></span>限时特价<span class="pull-right">距结束还有1天12分32秒</span></h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <span>售价</span>
                                <span style="padding-left:25px; color:#FE0712; font-weight: bold;">新人价；<span style="font-size: 25px;">￥<span id="price">${c.price}</span></span></span>
                                <span style="padding-left: 25px;">考虑价<span>￥${c.price}</span></span>
                                <span style="color: white;background-color:#FE0712;font-size: 12px" >包邮</span>
                            </div>
                            <div class="row " style="margin-left: 20px">
                                <span style="padding-left:25px;font-weight: bold;font-size: 13px"><img src="images/6dc03e40-5452-4a3e-a039-1ae8badbce2e_120_45.png" alt="" height="17px" width="45.5px" style="color: #1e1e1e;">黑卡会员预计可<span style="color: red;font-size: 12px">省￥2.00</span></span>
                            </div>
                            <div class="row " style="margin-left: 67px">
								<span style="padding-left:25px;font-size: 13px;">会员可享96折<span style="color: red;font-size: 12px;margin-left: 10px"><a
                                        href="">立即开卡</a></span></span>
                            </div>
                            <div class="row " style="margin-left: 20px">
								<span style="padding-left:25px;font-size: 13px"><img src="images/coupon-icon.2cc23d0.png" alt="" height="12.7px">&nbsp;<img src="images/6c0ba6fa-3faa-4b12-a114-66e9d74dca70.png" alt="" height="12.7px" width="40px" style="color: #1e1e1e;">先领满599减59优惠券，再下单<span style="color: red;font-size: 12px;margin-left: 10px"><a
                                        href="">点击领取</a></span></span>
                            </div>

                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <span style="padding-right:40px;">配送</span><span>至<span data-toggle="distpicker">
				<select></select>
				<select></select>
				<select></select>
			</span><span style="padding-left: 25px;">免运费</span></span>
                </div>
                <br />
                <div class="row">
                    <span style="padding-right:40px;">服务</span><span>由自营国内仓<span style="padding-left: 25px;">发货</span></span>
                </div>
                <br />
                <div class="row" style="margin-left: 45px">
                    <span style=""><img src="images/1big0qbev83_120_120.jpg" alt="" height="35px" width="35px">——————</span><span><img src="images/fahuodi@3x.png" alt="" height="30px" width="30px">——————<span style=""><img src="images/mudidi@3x.png" alt="" height="30px" width="30px"></span></span>
                </div>
                <div class="row" style="margin-left: 45px">
                    <span style="">品牌直采</span><span style="padding-left: 19px">自营国内仓库发货<span style="padding-left: 37px">武汉市</span></span>
                </div>
                <br />
                <div class="row">
                    <span style="padding-right:69px;"></span><span>24点前完成支付，预计6月4日（周二）送达<span style="padding-left: 25px;"></span></span>
                </div>
                <br />
                <div class="row">
                    <span style="padding-right:40px;" class="pull-left">数量</span>
                    <div class="col-md-3">
                        <form class="bs-example bs-example-form" role="form">
                            <div class="input-group input-group-sm">
                                <span class="input-group-addon reduce" style="cursor: pointer">-</span>
                                <input type="text" class="form-control values" value="1" style="text-align: center">
                                <span class="input-group-addon add" style="cursor: pointer">+</span>
                            </div>
                        </form>
                    </div>
                </div>
                <br />

                <br />
                <div class="row" style="font-size: 12px">
                    <span style="padding-right:40px;">说明</span><span class="glyphicon glyphicon-ok-circle">会员96折<i class="glyphicon glyphicon-ok-circle" style="padding-left: 25px;">正品保障</i><span style="padding-left: 25px;" class="glyphicon glyphicon-ok-circle">支持30天无忧退货</span></span>
                </div>
                <br />
                <br />
                <div class="row">
                    <div class="col-md-8 col-md-offset-1">
                        <button type="button" class="btn btn-default btn-lg" style="margin-right: 35px;">
                            立即购买
                        </button>
                        <button type="button" class="btn btn-danger btn-lg" style="margin-right: 35px;" onclick="return shopping()">
                            <span class="glyphicon glyphicon-shopping-cart"> </span>加入购物车
                        </button>
                        <span style="font-size: 20px;color: red">♡</span><span style="margin-left: 2px;">收藏</span>
                    </div>
                </div>

            </div>

        </div>
    </c:forEach>

    <div class="row" style="margin-top: 100px">
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
    <br><hr><br>
    <div class="row">
        <div class="col-md-3">
            <img src="images/footer6.PNG">
        </div>
        <div class="col-md-7">
            <!--<div class="col-md-2">-->
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
<div class="container-fluid" style="height: 183px;background-color: #333333;">
    <div class="container" style="color: #c2c2c2;text-align: center">
        <br>
        <p><span>About NetEase</span>-<span>公司简介</span>-<span>联系方法</span>-<span>友情链接</span>-<span>招聘信息</span>-<span>客户服务</span>-<span>隐私政策</span>-<span>网络营销</span>-<span>网易考拉</span></p>
        <p><span>网络文化经营许可证:浙网文[2019]1372-138号</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>增值电信业务经营许可证:浙B2-20160288</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>自营经营者信息</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>(浙)网械平台备字[2018]第00007号</span></p>
        <p><span><img src="images/f1.PNG"></span><span>浙公网安备 33010802002216号</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>网易公司版权所有@1997-2019</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>互联网药品信息服务资格证书编号(浙) -2017-0027</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>浙ICP备16011229号-6</span></p>
        <p><span><img src="images/f2.PNG"></span><span><img src="images/f3.PNG"></span><span><img src="images/f4.PNG"></span></p>
    </div>

</div>
<div id="actGotop"><a href="javascript:;" title="Top"></a></div>
<script>
    function shopping() {
        var commodity_name=$("#commodity_name").text();
        var img=$("#img").attr("src");
        var price=$("#price").text();
        var num=parseInt($("#num").text());
        num=num+1;
        console.log(num)
        $("#num").text(num);
        $.ajax({
            url:"${pageContext.request.contextPath}/addShopping",
            type:"POST",
            data:JSON.stringify({commodity_name:commodity_name,commodity_price:price,commodity_img:img}),
            dataType:"json",
            contentType:"application/json;charset=UTF-8",
            success:function (data) {
                if(data==1){
                    alert("添加成功！请去购物车中查看您的宝贝吧！")
                }
            }
        })
    }

    $(function () {
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
</body>
</html>
