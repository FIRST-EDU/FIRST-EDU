<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="msapplication-TileColor" content="#da532c" />
    <meta name="theme-color" content="#ffffff" />
    <link rel="apple-touch-icon" sizes="180x180" href="./apple-touch-icon.png" />
    <link rel="shortcut icon" type="image/png" sizes="32x32" href="./favicon-32x32.png" />
    <link rel="shortcut icon" type="image/png" sizes="16x16" href="./favicon-16x16.png" />
    <link rel="mask-icon" href="./safari-pinned-tab.svg" color="#5e72e4" />
	<title> 수강 &gt; 정보 | FIRST EDU</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/style.css" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Material+Icons" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/11694e3acf.js" crossorigin="anonymous" ></script>
    <script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>

<jsp:include page="../common/commonMember.jsp" />

<input type="hidden" id="classNum"  value="${classDetail.classNum}">


		<table  align="center" border="1" id="classListArea">
					<%-- <tr>
						<td>수강번호 </td>
						<td><c:out value="${classDetail.classNum}" /></td>
					</tr> --%>
					<tr>
						<td>수강코드 </td>
						<td><c:out value="${classDetail.code}" /></td>
					</tr>
					<tr>
						<td>담당선생님 </td>
						<td><c:out value="${classDetail.teacherInfo.teacherName}" /></td>
					</tr>
					<tr>
						<td>학년 </td>
						<td><c:out value="${classDetail.grade.gradeName}" /></td>
					</tr>
					<tr>
						<td>과목 </td>
						<td><c:out value="${classDetail.subjectCategory.subjectName}" /></td>
					</tr>
					<tr>
						<td>강의실 </td>
						<td><c:out value="${classDetail.room}" /></td>
					</tr>
					<tr>
						<td>강의명 </td>
						<td><c:out value="${classDetail.className}" /></td>
					</tr>
					<tr>
						<td>요일 </td>
						<td><c:out value="${classDetail.day}" /></td>
					</tr>
					<tr>
						<td>강의시작시간 </td>
						<td><c:out value="${classDetail.startTime}" /></td>
					</tr>
					<tr>
						<td>강의종료시간 </td>
						<td><c:out value="${classDetail.endTime}" /></td>
					</tr>
					<tr>
						<td>교재 </td>
						<td><c:out value="${classDetail.book}" /></td>
					</tr>
					<tr>
						<td>수강료 </td>
						<td><c:out value="${classDetail.payment}" /></td>
					</tr>	
		</table>
		<div align="center">
			<button type="button">취소</button>
			<button type="button" id="updateBtn" >수정</button>
			<button type="button" id="deleteBtn">삭제</button>                                                      
		</div>

		<script>
		
		
		$("#updateBtn").click(function(){
			alert($("#classNum").val())
			const no = $("#classNum").val();
			console.log(no);
			location.href="${pageContext.servletContext.contextPath}/classInfo/classUpdate/" + parseInt(no);
		})
		
		$("#deleteBtn").click(function(){
			alert($("#classNum").val())
			const no = $("#classNum").val();
			console.log(no);
			location.href="${pageContext.servletContext.contextPath}/classInfo/classDelete/" + parseInt(no);
		})
		</script>

</body>
</html>