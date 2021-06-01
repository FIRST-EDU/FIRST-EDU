<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">시험 점수 관리</h1>
	
	<button type="button" onclick="location.href='${ pageContext.servletContext.contextPath }/score/list'">Score Select Test</button>

	<form action="${ pageContext.servletContext.contextPath }/score/regist" method="post">
		<button>Score Regist Test</button>
	</form>
	
	<form action="${ pageContext.servletContext.contextPath }/score/modify" method="post">
		<button>Score Modify Test</button>
	</form>
	
	<form action="${ pageContext.servletContext.contextPath }/score/remove" method="post">
		<button>Score Remove Test</button>
	</form>
</body>
</html>