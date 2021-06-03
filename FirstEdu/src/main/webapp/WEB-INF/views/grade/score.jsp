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
	
	<button type="button" onclick="return showScoreList()">Score Select Test</button>

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
				<th>세부 과목</th>
				<th>목표 점수</th>
				<th>달성 점수</th>
				<th>반 석차</th>
				<th>학교 석차</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items='${ scoreList }' var='score' varStatus='status'>
				<input type='hidden' name='scoreNo'/>
				<tr>
					<td>${ status.count }</td>
					<%-- <td><input type='text' value='${ score.student.name }'/></td> --%>
					<td><input type='text' value='test'/></td>
					<td>test</td>
<%-- 					<td><input type='text' value='${ score.student.grade.gradeName }'/></td>
					<td><input type='text' name='scoreList[" + ${ status.index } + "].name' value='${ score.subject.name }'/></td> --%>
					<td><input type='text' name='scoreList[" + ${ status.index } + "].subjectDetail' value='${ score.subjectDetail }'/></td>
					<td><input type='text' name='scoreList[" + ${ status.index } + "].targetScore' value='${ score.targetScore }'/></td>
					<td><input type='text' name='scoreList[" + ${ status.index } + "].score' value='${ score.score }'/></td>
					<td>
						<input type='text' name='scoreList[" + ${ status.index } + "].classRank' value='${ score.classRank }'/>
						/
						<input type='text' name='scoreList[" + ${ status.index } + "].classPersonnel' value='${ score.classPersonnel }'/>
					</td>
					<td>
						<input type='text' name='scoreList[" + ${ status.index } + "].overallRank' value='${ score.overallRank }'/>
						/
						<input type='text' name='scoreList[" + ${ status.index } + "].totalPersonnel' value='${ score.totalPersonnel }'/>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>