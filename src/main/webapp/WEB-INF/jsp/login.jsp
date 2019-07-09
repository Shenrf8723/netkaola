<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/15
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>网易考拉登录界面</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/login.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/bootstrap/css/bootstrap.min.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/bootstrap/js/bootstrap.min.js"></script>
    <link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/carousel.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/all.css">
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
      $(function () {

        $("#user").blur(function () {
            var username=$("#user").val();
            console.log(username+"123")
            if(username==null||username==""){
                $("#userCue").text("请输入用户名")
            }else {
                $.ajax({
                    url:"${pageContext.request.contextPath}/TestSignUser",
                    type:"post",
                    dataType:"json",
                    data:JSON.stringify({username:username}),
                    contentType:"application/json;charset=UTF-8",
                    success:function (data) {
                        if(data!=0){
                            $("#userCue").text("该用户名存在!")
                            $("#user").css({"box-shadow":"0 0 2px red"})
                            console.log("不能")
                            $("#reg").click(function () {
                                return false;
                            })
                        }else {
                            $("#userCue").text("该用户名可以使用!")
                            $("#user").css({"box-shadow":"0 0 2px #198BD4"})
                            console.log("可以")
                            $("#reg").click(function () {
                                $('#regUser').submit();
                            })
                        }
                    },error:function (xhr,state,error) {
                        alert("当前状态"+state)
                    }

                })
            }
        })
      })
        $(function(){
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

        })
    </script>
  </head>
  <body>
  <nav id="TopNav" class="col-sm-12">
    <div class="fix">
      <ul id="navright" style="width:670px;">
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
        <span>考拉欢迎你！</span>
        <span><a href="#">登录</a></span>
        <span><a href="#">免费注册</a></span>
      </div>
      <div class="" id="navcenter">
        <a href="#">手机考拉</a>
      </div>

    </div>
  </nav>

  <!--login头部-->
  <div class="col-lg-12" style="border-bottom: 1px solid #e8e8ea;background: #fff;height: 100px;">
    <div class="col-lg-6 col-lg-offset-3">
      <div class="col-lg-12">
        <div class="col-lg-6" style="margin-top: 15px">
          <a href="#"><img src="images/loginStyle/2345_image_file_copy_2.jpg"> </a>
        </div>
        <div class="col-lg-6" >
          <img src="images/loginStyle/2345_image_file_copy_1.jpg" width="504" height="95">
        </div>
      </div>
    </div>
  </div>

  <!--登录界面-->
  <div class="col-lg-8 col-lg-offset-2">
    <div class="col-lg-12" style="margin-top: 10%">
      <div class="col-md-7">
        <div class="slider" style="margin-top:65px;">
          <ul>
            <li><a href="#"><img src="${pageContext.request.contextPath}/images/login/1.jpg" alt="" width="680px" height="auto"></a></li>
            <li><a href="#"><img src="${pageContext.request.contextPath}/images/login/2.jpg" alt="" width="680px" height="auto"></a></li>
            <li><a href="#"><img src="${pageContext.request.contextPath}/images/login/3.jpg" alt="" width="680px" height="auto"></a></li>
            <li><a href="#"><img src="${pageContext.request.contextPath}/images/login/4.jpg" alt="" width="680px" height="auto"></a></li>
          </ul>
          <!--箭头-->
          <div class="arrow">
            <span class="arrow-left">&lt;</span>
            <span class="arrow-right">&gt;</span>
          </div>
        </div>
      </div>
      <div class="col-lg-5" >
        <div class="login" style="margin-left: 15%;	box-shadow: 2px 2px 2px 2px rgba(0.3, 0, 0, .3);">

          <div class="header">
            <div class="switch" id="switch"><a class="switch_btn_focus" id="switch_qlogin" href="javascript:void(0);" tabindex="7">快速登录</a>
              <a class="switch_btn" id="switch_login" href="javascript:void(0);" tabindex="8">快速注册</a><div class="switch_bottom" id="switch_bottom" style="position: absolute; width: 64px; left: 0px;"></div>
            </div>
          </div>


          <div class="web_qr_login" id="web_qr_login" style="display: block; height: 360px;">

            <!--登录-->
            <div class="web_login" id="web_login">


              <div class="login-box">


                <div class="login_form">
                  <form action="${pageContext.request.contextPath}/findUser" name="loginform"  id="login_form" class="loginForm" method="post">
                    <div id="userCue1" class="cue" style="color: red;text-align: center">${msg}</div>
                    <div class="uinArea" id="uinArea">
                      <label class="input-tips" >帐号：</label>
                      <div class="inputOuter" id="name">
                        <input type="text"  name="username" class="inputstyle"/>
                      </div>
                    </div>
                    <div class="pwdArea" id="pwdArea">
                      <label class="input-tips" >密码：</label>
                      <div class="inputOuter" id="pArea">
                        <input type="password"  name="password" class="inputstyle"/>
                      </div>
                    </div>
                    <div class="codeArea" id="codeArea">
                      <label class="code-tips" >验证码：</label>
                      <div class="inputOuter" id="cArea">
                        <input type="text"  name="code" class="inputstyle" style="width: 100px"/>
                        <img  src="CheckCode" id="code" onclick="javascript:this.src='${pageContext.request.contextPath}/CheckCode?'+Math.random()"/>
                      </div>
                    </div>
                    <div style="margin-left: 20%" class="check1">
                      <input type="radio" name="user" value="user"  >用户
                      <input type="radio" name="user" value="admin" >管理员
                    </div>
                    <div style="padding-left:50px;margin-top:20px;"><input type="submit" value="登 录" style="width:150px;" class="button_blue"/></div>
                  </form>
                </div>

              </div>

            </div>
            <!--登录end-->
          </div>

          <!--注册-->
          <div class="qlogin" id="qlogin" style="display: none; ">

            <div class="web_login">
              <form id="regUser" accept-charset="utf-8"  action="${pageContext.request.contextPath}/signUser" method="post">
                <input type="hidden" name="to" value="reg"/>
                <input type="hidden" name="did" value="0"/>
                <ul class="reg_form" id="reg-ul">
                  <div id="userCue" class="cue" style="color: red;text-align: center">快速注册请注意格式</div>
                  <li>

                    <label for="user"  class="input-tips2">用户名：</label>
                    <div class="inputOuter2">
                      <input type="text" id="user" name="username" maxlength="16" class="inputstyle2"/>
                    </div>

                  </li>
                  <li>

                    <label  class="input-tips2" style="width: 90px">电话号码：</label>
                    <div class="inputOuter2">
                      <input type="text" id="phone" name="tel" maxlength="16" class="inputstyle2"/>
                    </div>

                  </li>

                  <li>
                    <label for="passwd" class="input-tips2">密码：</label>
                    <div class="inputOuter2">
                      <input type="password" id="passwd"  name="password" maxlength="16" class="inputstyle2"/>
                    </div>

                  </li>
                  <li>
                    <label for="passwd2" class="input-tips2" style="width: 90px">确认密码：</label>
                    <div class="inputOuter2">
                      <input type="password" id="passwd2"  maxlength="16" class="inputstyle2" name="password2" />
                    </div>

                  </li>

                  <li>
                    <div class="inputArea">
                      <input type="button" id="reg"  style="margin-top:10px;margin-left:85px;" class="button_blue" value="同意协议并注册"/> <a href="#" class="zcxy" target="_blank">注册协议</a>
                    </div>

                  </li><div class="cl"></div>
                </ul>
              </form>


            </div>


          </div>
          <!--注册end-->
        </div>
      </div>
    </div>
  </div>
  </body>
</html>
