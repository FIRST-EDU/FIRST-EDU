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
<input type="hidden" id="consultNo" value="${consultDetail.consultNo }">
<!-- 수납 상세 정보 Start -->
	<table border="1">
		<tr>
			<th>학생명</th>
			<td><c:out value="${ consultDetail.student.studentName}"/></td>
		</tr>
		<tr>
			<th>상담일</th>
			<td><c:out value="${ consultDetail.consultDate}"/></td>
		</tr>
		<tr>
			<th>담당자</th>
			<td><c:out value="${ consultDetail.teacher.name}"/></td>
		</tr>
		<tr>
			<th>상담방법</th>
			<td><c:out value="${ consultDetail.category.consultOption}"/></td>
		</tr>
		<tr>
			<th>상담내용</th>
			<td><c:out value="${ consultDetail.consultContent}"/></td>
		</tr>
	</table>
	<button onclick="location.href='${pageContext.servletContext.contextPath}/consult/list'">목록</button>
	<button type="button" id="updateBtn">수정</button>
	
	<script>
		$("#updateBtn").click(function(){
			const no = $("#consultNo").val();
			location.href="${pageContext.servletContext.contextPath}/consult/update/" + no;
		})
	</script>
</body>
</html>