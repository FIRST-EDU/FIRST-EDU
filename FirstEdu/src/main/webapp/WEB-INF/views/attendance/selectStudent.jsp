<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>
<form>

	<table class="selectLsit" border="1">
	 	<thead>
	 		<tr>
	 			<th>학생<th>
	 		</tr>
	 	</thead>
	 	<tbody>
		<c:forEach var="student" items="${studentList}">
	 		<tr>
	 			<td><c:out value="${ student.studentDTO.studentName }"></c:out></td>
	 		</tr>
	 		</c:forEach>
	 	</tbody>
	</table>
	
	<table class="cateogryList" border="1">
		<thead>
			<tr>

				<th>출석</th>
				<th>결석</th>
				<th>지각</th>
				<th>조퇴</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="cateogry" items="${cateogryList}">
			<tr>
				<td><c:out value="${ cateogry.chulsuck }"></c:out></td>
				<td><c:out value="${ cateogry.jigack }"></c:out></td>
				<td><c:out value="${ cateogry.kyulsuck }"></c:out></td>
				<td><c:out value="${ cateogry.jotae }"></c:out></td>
			</tr>
			</c:forEach>
		</tbody>
	</table>

<script>


</script>

</form>
	

</body>
</html>