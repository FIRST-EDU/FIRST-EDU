<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">시험 일정 관리</h1>
	<form action="${ pageContext.servletContext.contextPath }/exam/regist" method="post">
		<button>Regist Test</button>
	</form>
	<button type="button" onclick="location.href='${ pageContext.servletContext.contextPath }/exam/list'">시험 목록 조회</button>
</body>
</html>