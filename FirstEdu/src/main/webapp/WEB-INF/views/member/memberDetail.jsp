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
	<title> 직원 &gt; 상세 정보| FIRST EDU</title>
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

<input type="hidden" id="TeacherNo"  value="${memberDetail.no}">


		<table align="center" id="classListArea">
		<tr>
			<td>번호 </td>
			<td><c:out value="${memberDetail.no}" /></td>
		<tr>
			<tr>
				<td>이름</td>
				<td><c:out value="${memberDetail.name}" /></td>
			</tr>
 			<tr>
				<td>이메일</td>
				<td><c:out value="${memberDetail.email}" /></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><c:out value="${memberDetail.phone}" /></td>
			</tr>
			<tr>
				<td>권한</td>
				<td><c:out value="${memberDetail.hireDate}" /></td>
			</tr>
			<tr>
				<td>입사일</td>
				<td><c:out value="${memberDetail.hireDate}" /></td>
			</tr>
			<tr>
				<td>직급</td>
				<td><c:out value="${teacher.job.jobName}" /></td>
			</tr>
		</table>
		<br>

		<div align="center">
				<button id="updateBtn"  onclick="location.href='${ pageContext.servletContext.contextPath}/member/teacherList'">메뉴로 돌아가기</button>
				<button onclick="location.href='${ pageContext.servletContext.contextPath }/member/update'" >수정</button>
		</div>
		
		<script>
		/* $("#updateBtn").click(function(){
			alert($("#TeacherNo").val())
			const no = $("#TeacherNo").val();
			console.log(no);
			location.href="${pageContext.servletContext.contextPath}/classInfo/classUpdate/" + parseInt(no);
		})
		 */
		
	</script>


</body>
</html>