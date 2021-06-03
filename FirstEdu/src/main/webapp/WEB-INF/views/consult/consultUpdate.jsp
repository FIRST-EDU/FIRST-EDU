<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<!-- 수납 상세 정보 Start -->
	<form action="${pageContext.servletContext.contextPath }/consult/update" method="post">
		<div id="consultUpdateForm">
			<input type="hidden" name="consultNo" id="consultNo" value="${consultUpdateView.consultNo }">
			<input type="hidden" name="studentNo" id="studentNo" value="${ consultUpdateView.student.no}"><br>
			학생명
			<input value="${ consultUpdateView.student.studentName}" readonly/><br>
		
			담당자
			<input value="${ consultUpdateView.teacher.name}" readonly/><br>
			
			상담일
			<input type="date" name="consultDate" id="consultDate" value="${ consultUpdateView.consultDate}"/><br>
		
			상담방법
			<select id="categoryNo" name="categoryNo">
					<c:if test="${ consultUpdateView.category.categoryNo == 1}">
						<option value="1">대면</option>
						<option value="2">비대면</option>
						<option value="3">학부모동참</option>
					</c:if>
					<c:if test="${ consultUpdateView.category.categoryNo == 2}">
						<option value="2">비대면</option>
						<option value="1">대면</option>
						<option value="3">학부모동참</option>
					</c:if>
					<c:if test="${ consultUpdateView.category.categoryNo == 3}">
						<option value="3">학부모동참</option>
						<option value="1">대면</option>
						<option value="2">비대면</option>
					</c:if>
			</select><br>
			상담내용
			<input id="consultContent" name="consultContent" value="${ consultUpdateView.consultContent}"/><br>
		</div>
	<button>수정</button>
	<button type="button" id="deleteBtn">삭제</button>
	<button type="button" id="detailBtn">취소</button>
	</form>
	
	<script>
		
		$("#deleteBtn").click(function(){
			const no = $("#consultNo").val();
			location.href="${pageContext.servletContext.contextPath}/consult/delete/" + no;
		})
		
		$("#detailBtn").click(function(){
			const no = $("#consultNo").val();
			location.href="${pageContext.servletContext.contextPath}/consult/detail/" + no;
		})
	</script>
</body>
</html>