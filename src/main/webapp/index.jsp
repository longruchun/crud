<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<script
	src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"
	type="text/javascript" charset="utf-8"></script>
<script src="${APP_PATH }/static/js/jquery-1.12.4.min.js"
	type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css"
	href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
</head>
<body>
          


	<!-- 员工添加的模态框 -->
	<div class="modal fade" id="empAndModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">员工添加</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-2 control-label">empName</label>
							<div class="col-sm-10">
								<input type="email" name="empName" class="form-control"
									id="empName_add_input" placeholder="empName">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">eamil</label>
							<div class="col-sm-10">
								<input type="text" name="email" class="form-control"
									id="email_add_input" placeholder="emil@longZRUchun.com">
							</div>
						</div>


						<div class="form-group">
							<label class="col-sm-2 control-label">gender</label>
							<div class="col-sm-10">
								<label class="radio-inline"> <input type="radio"
									name="gender" id="gender1_add_input" value="M"  checked="checked"> 男
								</label> <label class="radio-inline"> <input type="radio"
									name="gender" id="gender1_add_input" value=""> 女 
							</div>
						</div>


						<div class="form-group">
							<label class="col-sm-2 control-label">deptName</label>
							<div class="col-sm-4">
							<!-- 部门提交部门id即可 -->
								<select class="form-control"  name="dId" id="dept_add_select">
									
								</select>
							</div>
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="emp_save_btn">保存</button>
				</div>
			</div>
		</div>
	</div>


	<!-- 搭建显示页面 -->
	<div class="container">
		<!-- 标题 -->
		<div class="row">
			<div class="col-md-12">

				<h1>SSM-CRUD</h1>
			</div>

		</div>
		<!--按钮-->
		<div class="row">
			<div class="col-md-4 col-md-offset-8">

                         
				<button class="btn btn-primary " id="emp_and_modal_btn">新增</button>
				<button class="btn btn-danger" id="emp_and_del">删除</button>

			</div>
		</div>
		<!--显示表格数据-->
		<div class="row">
			<div class="col-md-12 ">

				<table class="table table-striped table-bordered table-hover"
					id="emps_table">
					<thead>
						<tr>

							<th>#</th>
							<th>empName</th>
							<th>gender</th>
							<th>email</th>
							<th>deptName</th>
							<th>操作</th>
						</tr>
					</thead>



					<tbody>
						<!-- 放导航条信息 -->


					</tbody>

				</table>


			</div>
		</div>
		<!--显示分页信息-->
		<div class="row">
			<!--分页文字信息 -->
			<div class="col-md-6" id="page_info_area"></div>
			<!--分页条信息  -->

			<div class="col-md-6" id="page_nav_area"></div>
		</div>
	</div>


	<script type="text/javascript">
	   var totalRecord;//总记录数
	
	
	      
		//页面加载完成后直接发送一个ajax请求
		$(function() {

			//去首页
			to_page(1)
		});

		
		function to_page(pn) {
			$ajax({
				url : "${APP_PATH}/emps",
				data : "pn=" + pn,
				type : "GET",
				success : function(result) {//result是服务器响应给浏览器的数据
					//console.log(result);
					//1.解析显示数据
					build_emps_table(result);
					//2.解析并显示分页信息
					build_page_info(result);
					//3,解析显示分页条信息
					build_page_nav(result)
				}

			});

		}

		
		function build_emps_table(result) {
			//清空table表格
			$("emps_table tbody").empty();

			//构建员工显示数据的表格
			var emps = result.extend.pageInfo.list;//所有的员工数据
			//便利员工数据
			$.each(emps, function(index, item) {//index是索引,item当前对象
				//alert(item.empName);
				var empId = $("<td></td>").append(item.empId);
				var empNameId = $("<td></td>").append(item.empName);
				var genderId = $("<td></td>").append(
						item.gender == 'M' ? "男" : "女");
				var emailId = $("<td></td>").append(item.email);

				/*<button class="btn btn-primary btn-sm">
									 <span class=" glyphicon glyphicon-pencil" aria-hidden="true"></span>
				                              编辑
								</button>
								<button class="btn btn-danger btn-sm ">
									 <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
									 删除
								</button>*/

				var editBtn = $("<button></button>").addClass(
						"btn btn-primary btn-sm").append(
						$("<span></span>").addClass(
								" glyphicon glyphicon-pencil")).append("编辑");
				var delBtn = $("<button></button>").addClass(
						"btn btn-danger btn-sm").append(
						$("<span></span>")
								.addClass("glyphicon glyphicon-trash")).append(
						"删除");
				var btnId = $("<td></td>").append(editBtn).append("").append(
						delBtn);

				var deptNameId = $("<td></td>")
						.append(item.department.deptName);
				//append执行完后还是返回原来的元素
				$("<tr><tr/>").append(empId).append(empNameId).append(genderId)
						.append(emailId).append(deptNameId).append(btnId)
						.appendTo("#emps_table tbody")
			});
		}

		//解析显示分页信息
		function build_page_info(result) {

			$("#page_info_area").empty();
			$("#page_info_area").append(
					"当前 " + result.extend.pageInfo.pageNum + "页,总"
							+ result.extend.pageInfo.pages + "页,总 "
							+ result.extend.pageInfo.total + "条记录");
			
			totalRecord=result.extend.pageInfo.total;

		}

		//解析显示分页条,点击分页要能去下一页
		function build_page_nav(result) {

			/*  <nav aria-label="Page navigation">
			<ul class="pagination">
			<li>
			<a href="#" aria-label="Previous">
			<span aria-hidden="true">&laquo;</span>
			</a>
			</li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li>
			<a href="#" aria-label="Next">
			<span aria-hidden="true">&raquo;</span>
			</a>
			</li>
			</ul>
			</nav>*/

			$("#page_nav_area").empty();
			//下面就是动态这个nav界面   
			//page_nav_area
			var ul = $("<ul></ul>").addClass("pagination");

			//构建元素
			var fistpageLi = $("<li></li>").append(
					$("<a></a>").append("首页").attr("href", "#"));
			var prePageLi = $("<li></li>")
					.append($("<a></a>").append("&laquo"));
			if (result.extend.pageInfo.hasPreviousPage == false) {
				fistpageLi.addClass("disabled");
				prePageLi.addClass("disabled");
			} else {

				//为元素添加翻页事件
				fistpageLi.click(function() {
					to_page(1);
				});
				prePageLi.click(function() {
					to_page(result.extend.pageInfo.pageNum - 1);
				});
			}

			var nextPageLi = $("<li></li>").append(
					$("<a></a>").append("&raquo"));
			var lastPageLi = $("<li></li>").append(
					$("<a></a>").append("末页").attr("href", "#"));

			if (result.extend.pageInfo.hasNextPage == false) {
				nextPageLi.addClass("disabled");
				lastPageLi.addClass("disabled");
			} else {
				nextPageLi.click(function() {

					to_page(result.extend.pageInfo.pageNum + 1);

				});

				lastPageLi.click(function() {

					to_page(result.extend.pageInfo.pages);

				});

			}

			//添加首页和前一页的提示
			ul.append(fistpageLi).append(lastPageLi);

			//1,2,3给ul中添加页码提示
			$.each(result.extend.pageInfo.navigatepageNums, function(index,
					item) {

				var numLi = $("<li></li>")
						.append($("<a></a>").append("&raquo"));

				if (result.extend.pageInfo.pageNum == item) {
					numLi.addClass("active");

				}
				numLi.click(function() {
					to_page(item);
				})

				ul.append(numLi);

			});
			//添加下一页和末页的提示
			ul.append(nextPageLi).append(lastPageLi);
			//把ul加入到nav元素
			var navEle = $("<nav></nav>").append(ul);
			navEle.appendTo("#page_nav_area");

		}
            //点击新增按钮弹出模态框
		$("emp_and_modal_btn ").click(function() {
			
			//发送ajax请求,查出部门信息显示在下拉列表中
			
			
			//弹出模态框
			$("#empAndModal").modal({
				backdrop : "static"

			});
		});
            
            
            
            //查出所有部门信息并显示在下拉列表中
            function getDepts(){
            	$.ajax({
            		
            		url:"${APP_PATH}/depts",
            		type:"GET",
            		success:function(result){
            			//console.log(result);
            			//显示部门信息在下拉列表中
            			
            			//$("#dept_add_select").append("")
            			
            			$.each(result.extend.depts,function(){
            				
            				var optionEle=$("<option></option>").append(this.deptName).attr("value",this.deptId);
            				optionEle.appendTo("#dept_add_select");
            				
            			});
            			
            			
            		}
            		
            	});
            	
            	
            }
            //校验表单数据
            function validate_add_form(){
            	//1,拿到要校验的数据
            	var empName=$("#empName_add_input").val();
            	var regName=/(^[a-zA-Z-9_-]{6,16}$)|(/^[\u2E80-\u9FFF]{2,5}+$/)/;
            	
            	alert(regName.test(empName));
            	if (!regName.test(empName)) {
            		alert("用户名可以是2-5位的中文或者6-16位英文和数字的组合");
            		
            		return false;
				}
            	
           
            	//校验邮箱信息
            	      	var  email=$("#email_add_input").val;
            	      	var regEmail=/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
            	      	
            	      	if (!regEmail.test(email)) {
							alert("邮箱格式不正确")
							return false;
						}

            	
            	return false;
            	
            }
            
            
            //点击保存员工
            $("#emp_save_btn").click(function(){
            	//1,模态框中填写的表单数据提交给服务器保存
            	//1,先对要提交给服务器的数据进行校验
            	
            	if (!validate_add_form()) {
            	
            		
            		return false;
				}
            	
            	
            	
            	//2,发送ajax请求保存员工
            	
            	 $.ajax({
            		url:"${APP_PATH}/emp",
            		type:"POST",
            		data: $("#empAndModal from").serialize(),
            		success:function(result){
            			//alert(result.msg);
            			//员工保存成功
            			//1,关闭模态框
            			$("#empAndModal").modle('hide');
            			
            			//2,来到最后一页,显示刚才保存的数据
            			//发送Ajax请求显示最后一页数据即可
            			
            			to_page(totalRecord);
            		}
            	});
            	 
            	
            	
            	
            	
            	
            	
            });
            
	</script>



</body>
</html>
