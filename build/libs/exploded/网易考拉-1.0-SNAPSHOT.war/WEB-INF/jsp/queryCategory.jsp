<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

        function openModal(obj){
            $("#myModal").modal('show');
            var $td = $(obj).parents('tr').children('td');
            var id = $td.eq(0).text();
            var cname = $td.eq(1).text();
            $("#id").val(id);
            $("#name").val(cname);
        }

        function confirmDialog() {
            if (confirm("确定要删除该图书吗?")) {
                return true;
            }
            else {
                return false;
            }
        }
        function check() {
			var name=$("#name").val();
			if(name.length==0||name==""){
			    alert("请填写分类名称")
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
</div>
	<div style="margin: 0 auto;width: 400px" >
					  <h3 align="center" style="margin-top: 20px; color:#666664;">查看商品分类列表:</h3>
					<table  width="80%" borderColor="#fff4f5" align="center" class="table table-bordered" style="margin-top: 50px">
						<tr style='background:#4E4E4E'>
							<th align="center" style='color: #fff;'>分类id</th>
							<th align="center"  style='color: #fff;'>分类名称</th>
							<th align="center" style='color: #fff;'>操作</th>
						</tr>
						<c:forEach var="c" items="${commodity}">
							<tr>
								<td align="center">${c.cid}</td>
								<td align="center">${c.cname}</td>
								<td align='center' style="vertical-align: middle;">
									<a class="layui-btn layui-btn-danger layui-btn-sm" onclick="openModal(this)">
										<i class="layui-icon"></i>
									</a>
									<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
										 aria-labelledby="myModalLabel" aria-hidden="true">
										<div class="modal-dialog" >
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
														&times;
													</button>
													<h4 class="modal-title" id="myModalLabel">修改分类信息</h4>
												</div>
												<div class="modal-body">
													<form action="${pageContext.request.contextPath}/updateCategory"  method="post" onsubmit="return check()">
														<input type="hidden" name="cid" id="id">
														<div class="form-horizontal">
															<div class="form-group">
																<label class="col-sm-4 control-label">分类名称</label>
																<div class="col-sm-5">
																	<input type="text" class="form-control" name="cname" id="name" >
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
									<a href="${pageContext.request.contextPath}/deleteCategory?cid=${c.cid }" class="layui-btn layui-btn-sm"
									   onclick="return confirmDialog();">
										<i class="layui-icon"></i>
									</a>
								</td>
							</tr>
						</c:forEach>
					  		
					  </table>
							<p align="center" style='color:red'>${msg}</p>
					<div style='margin-left:30%;margin-top:20%'><button class="layui-btn" href="addminLoginResult.jsp">返回</button></div>
				
				
	</div>
</body>
</html>