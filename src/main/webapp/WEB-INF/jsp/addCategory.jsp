<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/css/carousel.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/bootstrap/css/bootstrap.min.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/commodity.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <script src="${pageContext.request.contextPath}/js/frameLayUi.js"></script>
    <style type="text/css">
        body,form{
            background-color: #fff4f5;
        }

    </style>
</head>
<body>
<div class="col-lg-12">
    <div style="margin: 0 auto;width: 1200px" >
        <form action="${pageContext.request.contextPath}/addCategory" method="post" style="height: 360px;padding: 50px;background-color: #fff4f5;border-radius: 6px;"  enctype="multipart/form-data">
            <h3 align="center" style="margin-top:-20px; color:#666664;">添加商品分类信息</h3>
            <div class="form-horizontal" style="width: 960px;margin: 0 auto;margin-top: 30px">
                <div class="form-group">
                    <label class="col-sm-4 control-label">分类id</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" name="cid" >
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label">分类名称</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" name="cname" id="name" >
                    </div>
                </div>
            </div>
            <div style='margin-left:45%;margin-top:10%'><input type="submit" value="添加" class="layui-btn" style='margin-right:20px'><input type="reset" value="重置" class="layui-btn"></div>
            <p style='color:red;margin-left:5%' align="center">${msg }</p>
        </form>

    </div>
</div>

<script type="text/javascript">
    layui.use('laydate', function() {
        var laydate = layui.laydate;
        laydate.render({
            elem: '#test5'
            ,type: 'datetime'
        });
    })
</script>
</body>
</html>