<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>员工列表</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>

<!-- web路径:
    不以/开始的相对路径,找资源,以及当前资源路径基准,经常出现问题
    以/开始的相对路径,找资源,以服务器路径为标准(http://localhost:3306);需要加项目名
    http://localhost:3306/crud
     -->
    
<script src="../../static/bootstrap-3.3.7-dist/js/bootstrap.min.js"
	type="text/javascript" charset="utf-8"></script>
	<script src="../../static/js/jquery-1.12.4.min.js"
	type="text/javascript" charset="utf-8"></script>
	
<link rel="stylesheet" type="text/css"
	href="../../static/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
</head>
<body>
	<!-- 搭建显示页面 -->
	<div class="container">
		<!--
  	作者：1430468717@qq.com
  	时间：2018-12-10
  	描述：标题
  -->
		<div class="row">
			<div class="col-md-12">

				<h1>SSM-CRUD</h1>
			</div>

		</div>
		<!--
  	作者：1430468717@qq.com
  	时间：2018-12-10
  	描述：按钮
  -->
		<div class="row">
			<div class="col-md-4 col-md-offset-8">


				<button class="btn btn-primary ">新增</button>
				<button class="btn btn-danger">删除</button>

			</div>
		</div>
		<!--
  	作者：1430468717@qq.com
  	时间：2018-12-10
  	描述：显示表格数据
  -->
		<div class="row">
			<div class="col-md-12 ">

				<table class="table table-striped table-bordered table-hover">
					<tr>

						<th>#</th>
						<th>empName</th>
						<th>gender</th>
						<th>email</th>
						<th>deptName</th>
						<th>操作</th>
					</tr>

					<c:forEach items="${pageInfo.list }" var="emp">

						<tr>

							<th>${emp.empId }</th>
							<th>${emp.empName }</th>
							<th>${emp.gender=="M"?"男":"女" }</th>
							<th>${emp.email }</th>
							<th>${emp.department.department }</th>
							<th>
								<button class="btn btn-primary btn-sm">
									 <span class=" glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                          编辑
								</button>
								<button class="btn btn-danger btn-sm ">
									 <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
									 删除
								</button>

							</th>
						</tr>


					</c:forEach>

				</table>


			</div>
		</div>
		<!--
  	作者：1430468717@qq.com
  	时间：2018-12-10
  	描述：显示分页信息
  -->
		<div class="row">
			<!--
      	作者：1430468717@qq.com
      	时间：2018-12-10
      	描述：分页文字信息
      -->
			<div class="col-md-6">当前${pageInfo.pageNum }页,总${pageInfo.pages }页,总${pageInfo.total}
				条记录</div>
			<!--
      	作者：1430468717@qq.com
      	时间：2018-12-10
      	描述：分页条信息
      -->
			<div class="col-md-6">
				<nav aria-label="Page navigation">
					<ul class="pagination">
						<li><a href="${APP_PATH }/emps?pn/${pageInfo.isFirstPage}">首页</a></li>
						<c:if test="${pageInfo.hasPreviousPage}">
						<li><a href="${APP_PATH}/emps?pn={pageInfo.pageNum-1}" aria-label="Previous"> <span
								aria-hidden="true">&laquo;</span>
						</a></li>
						
						</c:if>
						
						<c:forEach items="${pageInfo.NavigatepageNums }" var="page_Num">
							<c:if test="${page_Num==pageInfo.pageNum}">

								<li class="active"><a href="#">${page_Num}</a></li>

							</c:if>

							<c:if test="${page_Num!=pageInfo.pageNum }">

								<li><a href="${APP_PATH}/emps?pn=">${page_Num}</a></li>

							</c:if>
						</c:forEach>
                            <c:if test="${pageInfo.hasNextPage }">
                            <li>
                            <a href="${APP_PATH }/emps?pn=${pageInfo.pageNum+1} " aria-label="Next"> <span
								aria-hidden="true">&raquo;</span>
						     </a>
						
						</li>
                            
                            </c:if>
						
						<li><a href="${APP_PATH }/emps?pn/${pageInfo.pages}">末页</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>





</body>
</html>