<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/4
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/css/carousel.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/bootstrap/css/bootstrap.min.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/commodity.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <script src="${pageContext.request.contextPath}/js/frameLayUi.js"></script>
    <script>
        function check() {
            var file=$("#file").val();
            var cid=$("#cid").val();
            var name=$("#name").val();
            var price=$("#price").val()
            var descript=$("#descript").val()
            var title=$("#title").val();
            if(file.length==0||file==""){
                alert("请选择商品图片后提交!")
                return false;
            }
            if(cid.length==0||cid==""){
                alert("请选择商品所属分类后提交!")
                return false;
            }
            if(name.length==0||name==""){
                alert("请输入商品名称!")
                return false;
            }
            if(price.length==0||price==""){
                alert("请输入商品价格!")
                return false;
            }
            if(descript.length==0||descript==""){
                alert("请输入商品描述!")
                return false;
            }
            if(title.length==0||title==""){
                alert("请输入商品标题!")
                return false;
            }
            if($.isNumeric(price)==false){
                alert("价格输入格式错误!")
                return false;
            }
            return true;
        }
    </script>
    <style type="text/css">
        body,form{
            background-color: #fff4f5;
        }

    </style>
</head>
<body>
<div class="col-lg-12">
    <div style="margin: 0 auto;width: 1200px" >
        <form action="${pageContext.request.contextPath}/addCommodity" method="post" style="height: 360px;padding: 50px;background-color: #fff4f5;border-radius: 6px;"  enctype="multipart/form-data" onsubmit="return check()">
            <h3 align="center" style="margin-top:-20px; color:#666664;">添加商品</h3>
            <div class="form-horizontal" style="width: 960px;margin: 0 auto;margin-top: 30px">
                <div class="form-group">
                    <label class="col-sm-4 control-label">商品名称</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" name="name" id="name" >
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label">商品价格</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" name="price" id="price">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label">选择所属分类</label>
                    <div class="col-sm-5">
                        <select class="form-control" name="cid" id="cid">
                            <option disabled="disabled">--请选择分类--</option>
                            <c:forEach var="i" items="${categoryMsg}">
                                <option value="${i.cid}">${i.cname}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label">商品描述</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" name="descript" id="descript" >
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label">商品图片</label>
                    <div class="col-sm-5" >
                        <input type="file"  style="margin-right:145px" name="uploadfile" id="file">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label">商品标题</label>
                    <div class="col-sm-5">
                        <textarea class="form-control" rows="5" name="title" id="title"></textarea>
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
