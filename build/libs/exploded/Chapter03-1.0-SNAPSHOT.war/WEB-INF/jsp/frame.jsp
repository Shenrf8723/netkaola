<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/1
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>网易考拉后台系统</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
    <script src="${pageContext.request.contextPath}/js/frameLayUi.js"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">网易考拉后台系统</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="" target="option">控制台</a></li>
            <li class="layui-nav-item"><a href="">商品管理</a></li>
            <li class="layui-nav-item"><a href="">用户</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">其它系统</a>
                <dl class="layui-nav-child">
                    <dd><a href="">邮件管理</a></dd>
                    <dd><a href="">消息管理</a></dd>
                    <dd><a href="">授权管理</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="" target="option">
                    <img src="${headportrait}" class="layui-nav-img">
                </a>
                <dl class="layui-nav-child">
                    <dd><a>Hi,${aname}</a></dd>
                    <dd><a href="" target="option">基本资料</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/AdminQuit">退出</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <div title="菜单缩放" class="kit-side-fold" style="margin: 10px 0"><i class="fa fa-navicon" aria-hidden="true" style="margin-left:45%;font-size: 20px"></i></div>
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="fa fa-diamond fa-lg"></i> <span >商品信息</span></a>
                    <dl class="layui-nav-child">
                        <dd><a href="${pageContext.request.contextPath}/findPageCommodity?currentPage=1" target="option"><i class="fa fa-address-book fa-lg"></i> <span >查询商品</span></a></dd>
                        <dd><a href="${pageContext.request.contextPath}/toAddCommodity" target="option"><i class="fa fa-check-square fa-lg"></i> <span >添加商品</span></a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="fa fa-gear fa-lg"></i> <span >商品分类信息</span></a>
                    <dl class="layui-nav-child">
                        <dd><a href="${pageContext.request.contextPath}/toQueryCategory" target="option"><i class="fa fa-window-restore fa-lg"></i> <span >查看商品分类</span></a></dd>
                        <dd><a href="${pageContext.request.contextPath}/toAddCategory" target="option"><i class="fa fa-database fa-lg"></i> <span >添加分类</span></a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <iframe id="option" name="option" src="${pageContext.request.contextPath}/findPageCommodity?currentPage=1" style="overflow: scroll;" scrolling="yes" frameborder="no"  width="100%" height="100%">

        </iframe>
    </div>

</div>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
</script>
</body>
</html>
