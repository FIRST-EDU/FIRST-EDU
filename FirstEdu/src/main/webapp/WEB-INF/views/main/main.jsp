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
	<button type="button" onclick="location.href='${ pageContext.servletContext.contextPath }/grade/exam'">시험 관리</button>
	<button type="button" onclick="location.href='${ pageContext.servletContext.contextPath }/grade/score'">성적 분석</button>
</body>
</html>