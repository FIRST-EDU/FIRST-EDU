<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">FIRST EDU</h1>
	<button onclick="location.href='${pageContext.servletContext.contextPath}/consult/list'">상담목록</button>
	<button onclick="location.href='${pageContext.servletContext.contextPath}/consult/reserve'">상담예약</button>
</body>
</html>