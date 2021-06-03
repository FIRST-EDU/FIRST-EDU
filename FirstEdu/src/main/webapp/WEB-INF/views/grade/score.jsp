<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/grade/score.js"></script>
</head>
<body>
	<h1 align="center">시험 점수 관리</h1>
	
	<button type="button" onclick="return showHagwonExamScoreList()">Score Select Test</button>

	<form action="${ pageContext.servletContext.contextPath }/grade/score/regist" method="post">
		<button>Score Regist Test</button>
	</form>
	
	<form action="${ pageContext.servletContext.contextPath }/score/modify" method="post">
		<button>Score Modify Test</button>
	</form>
	
	<form action="${ pageContext.servletContext.contextPath }/score/remove" method="post">
		<button>Score Remove Test</button>
	</form>
	
	<table id="scoreInfo">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>학년</th>
				<th>과목 구분</th>
				<th>점수</th>
				<th>반 석차</th>
				<th>선생님 의견</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>

		</tbody>
	</table>
</body>
</html>