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
	<button type="button" onclick="location.href='${ pageContext.servletContext.contextPath }/exam/list'">Select Test</button>
	<form action="${ pageContext.servletContext.contextPath }/exam/modify" method="post">
		<button>Modify Test</button>
	</form>
	<form action="${ pageContext.servletContext.contextPath }/exam/remove" method="post">
		<button>Remove Test</button>
	</form>
</body>
</html>