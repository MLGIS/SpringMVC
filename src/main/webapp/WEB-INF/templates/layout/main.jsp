<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>sweet potato</title>
<link rel="stylesheet" href="static/css/bootstrap.css"><!-- http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css -->
<link rel="stylesheet" href="static/css/blog.css">
<link rel="stylesheet" href="static/css/carousel.css">
<link rel="stylesheet" href="static/css/css.css">
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>
	
	<jsp:include page="header.jsp"></jsp:include>
	<div class="row">
		<div class="leftnag"><div class="right"><jsp:include page="left.jsp"></jsp:include></div></div>
		<div class="center"><jsp:include page="center.jsp"></jsp:include></div><%--  --%><!-- <iframe  width="100%" style="_width: 100%;" height="600px" scrolling="auto" frameborder="0" name="main"  src="http://localhost:8080/test/html/pubuliu.html"></iframe> -->
	</div>

</body>
</html>