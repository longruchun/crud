<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    pageContext.setAttribute("APP_PATH", request.getContextPath());
    
    %>
    
    <!-- web路径:
    不以/开始的相对路径,找资源,以及当前资源路径基准,经常出现问题
    以/开始的相对路径,找资源,以服务器路径为标准(http://localhost:3306);需要加项目名
    http://localhost:3306/crud
     -->
<!DOCTYPE html>
<script src="${ APP_PATH}../../static/bootstrap-3.3.7-dist/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="${ APP_PATH}../../static/js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="${ APP_PATH}../../static/bootstrap-3.3.7-dist/css/bootstrap-theme.css"/>
<html>
<head>
<meta charset="UTF-8">
<title>员工列表</title>
</head>
<body>
  <!-- 搭建显示页面 -->
</body>
</html>