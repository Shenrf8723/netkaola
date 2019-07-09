<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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

    <script type="text/javascript">
        function confirmDialog() {
            if (confirm("确定要删除该图书吗?")) {
                return true;
            }
            else {
                return false;
            }
        }
            function openModal(obj){
                $("#myModal").modal('show');
                var $td = $(obj).parents('tr').children('td');
                var id = $td.eq(0).text();
                var img = $td.eq(1).find("img").attr("src")
                var name = $td.eq(2).text();
                var title = $td.eq(3).text();
                var price=$td.eq(4).text();
                var descript = $td.eq(5).text();
                console.log(img)
                $("#id").val(id)
                $("#img").attr("src","${pageContext.request.contextPath}"+img)
                $("#name").val(name)
                $("#desc").val(descript)
                $("#price").val(price)
                $("#descript").text(title)
            }
            function check() {
                var file=$("#file").val();
                var cid=$("#cid").val();
                if(file.length==0||file==""){
                    alert("请选择商品图片后提交!")
                    return false;
                }
                if(cid.length==0||cid==""){
                    alert("请选择商品所属分类后提交!")
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
    <div style="margin: 0 auto;width: 1400px;">
        <form action="${pageContext.request.contextPath}/findPageCommodity" method="post"
              style="background-color: #fff4f5;border-radius: 6px;margin-top: 20px" class="form-inline">
            <div class="form-group" style='margin-left:5%;margin-bottom:3%;'>
                <input type="text" class="form-control" placeholder="请按商品名称查询" name="b_name" id="text1">
            </div>
            <select class="form-control" name="b_cate" style='margin-left:10%;margin-bottom:3%' id="option1">
                <option disabled="disabled" value="">--请选择分类--</option>
                <c:forEach var="i" items="${categoryMsg}">
                    <option value="${i.cid}">${i.cname}</option>
                </c:forEach>
            </select>
            <input type="submit" value='点击查询' class="btn btn-success" style='margin-left:15%;margin-bottom:3%'>
            <a class="btn btn-info" style='margin-left:15%;margin-bottom:3%' href="${pageContext.request.contextPath}/findPageCommodity?currentPage=1">查询全部商品</a>
        </form>
        <table width="95%" borderColor="#C0C0C0" align="center" class="table table-bordered">
            <tr bgcolor="#FFFF00">
                <th style="text-align: center">商品Id</th>
                <th style="text-align: center">商品图片</th>
                <th style="text-align: center">商品名称</th>
                <th style="text-align: center">商品标题</th>
                <th style="text-align: center">商品价格</th>
                <th style="text-align: center">商品描述</th>
                <th style="text-align: center">操作</th>
            </tr>
            <c:forEach items="${pager.rs }" var="b">
                <tr>
                    <td align='center' style="vertical-align: middle;">${b.id }</td>
                    <td align='center' style="vertical-align: middle;"><img src="${pageContext.request.contextPath}/${b.img }" width="100px"
                                                                            height="100px"></td>
                    <td align='center' style="vertical-align: middle;">${b.name }</td>
                    <td align='center' style="vertical-align: middle;">${b.title}</td>
                    <td align='center' style="vertical-align: middle;">${b.price }</td>
                    <td align='center' style="vertical-align: middle;">${b.descript }</td>
                    <td align='center' style="vertical-align: middle;">
                        <a class="layui-btn layui-btn-danger layui-btn-sm" onclick="openModal(this)">
                            <i class="layui-icon"></i>
                        </a>
                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
                             aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog" style="width: 1000px">
                                <div class="modal-content" style="width: 1000px">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                            &times;
                                        </button>
                                        <h4 class="modal-title" id="myModalLabel">修改图书信息</h4>
                                    </div>
                                    <div class="modal-body" style="height: 600px">
                                        <form action="${pageContext.request.contextPath}/updateCommodity" enctype="multipart/form-data" method="post" onsubmit="return check()">
                                            <input type="hidden" name="id" id="id">
                                            <div class="form-horizontal" style="width: 960px">
                                                <div class="form-group">
                                                    <label class="col-sm-4 control-label">商品名称</label>
                                                    <div class="col-sm-5">
                                                        <input type="text" class="form-control" name="name" id="name" >
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-sm-4 control-label">商品描述</label>
                                                    <div class="col-sm-5">
                                                        <input type="text" class="form-control" name="descript" id="desc">
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
                                                    <label class="col-sm-4 control-label">商品图片</label>
                                                    <div class="col-sm-2" >
                                                        <input type="file" id="file" name="uploadfile">
                                                    </div>
                                                    <div class="col-sm-3" >
                                                        <img src="" alt="" width="100px" height="100px" id="img">
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-sm-4 control-label">商品标题</label>
                                                    <div class="col-sm-5">
                                                        <textarea class="form-control" rows="5" name="title" id="descript"></textarea>
                                                    </div>
                                                </div>


                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                                                </button>
                                                <input type="submit" class="btn btn-primary" value="提交更改"/>
                                            </div>
                                        </form>
                                    </div>


                                </div><!-- /.modal-content -->
                            </div><!-- /.modal -->
                        </div>
                        &nbsp;&nbsp;
                        <a href="${pageContext.request.contextPath}/deleteCommodity?id=${b.id }" class="layui-btn layui-btn-sm"
                           onclick="return confirmDialog();">
                            <i class="layui-icon"></i>
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <div>
            <span style="margin-left: 27%;margin-top: -50%">共${pager.total}记录&nbsp;&nbsp;共${pager.totalPage}页</span>
            <div class="demo" style="min-height: 300px;">
                <div class="container">
                    <div class="row pad-15">
                        <div class="col-md-12">
                            <nav class="pagination-outer" aria-label="Page navigation">
                                <ul class="pagination">
                                    <li class="page-item top">
                                        <a href="" class="page-link" aria-label="Previous">
                                            <span aria-hidden="true">«</span>
                                        </a>
                                    </li>
                                    <c:forEach var="i" begin="1" end="${pager.totalPage}">
                                        <c:if test="${i==pager.currentPage}">
                                            <li class="page-item active"><a class="page-link" href="href="${pageContext.request.contextPath}/findPageCommodity?currentPage=${i}">${i}</a></li>
                                        </c:if>
                                        <c:if test="${i!=pager.currentPage}">
                                            <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/findPageCommodity?currentPage=${i}">${i}</a></li>
                                        </c:if>
                                    </c:forEach>
                                    <li class="page-item bottom">
                                        <a href="" class="page-link" aria-label="Next">
                                            <span aria-hidden="true">»</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <p align="center" style='color:red'>${msg}</p>
        </form>
    </div>
</div>
<script>
    $(function () {
        $(".li1").click(function () {
            $(this).addClass("active")
        })
        console.log(${pager.currentPage}+"dad")
        $(".top").click(function () {
            var currentPage =${pager.currentPage};
            var totalPage =${pager.totalPage}
            console.log(currentPage)
            if (currentPage > 1) {
                currentPage--;
                $(this).find("a").attr("href", "${pageContext.request.contextPath}/findPageCommodity?currentPage="+currentPage+"&b_name=${b_name}&b_cate=${b_cate}")
            } else {
                $(this).addClass("disabled");
            }
        })
        $(".bottom").click(function () {
            var currentPage =${pager.currentPage};
            var totalPage =${pager.totalPage}
                console.log(currentPage)
            if (currentPage < totalPage) {
                currentPage++;
                $(this).find("a").attr("href", "${pageContext.request.contextPath}/findPageCommodity?currentPage="+currentPage+"&b_name=${b_name}&b_cate=${b_cate}")
            } else {
                $(this).addClass("disabled");
            }
        })
        var bcate = "${b_cate}"
        var index;
        for (var i = 0; i < $("#option1 option").length; i++) {
            if ($("#option1 option").eq(i).val() == bcate) {
                index = i;
                console.log(index)
            }
        }
        $("#option1 option").eq(index).attr("selected", "selectded")

        var bname = "${b_name}"
        $("#text1").val(bname)


        layui.use('laydate', function() {
            var laydate = layui.laydate;
            laydate.render({
                elem: '#test5'
                ,type: 'datetime'
            });
        })

    })
</script>
</body>
</html>