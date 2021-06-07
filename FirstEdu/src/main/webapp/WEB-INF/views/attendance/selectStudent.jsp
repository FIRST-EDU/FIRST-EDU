<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form>
	<input type="button" onclick="">
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
		
		</thead>
		<tbody>
	 		<c:forEach var="cateogry" items="${categoryList}">
			<tr>
				<th><c:out value="${ category.chulsuck }" ></c:out></th>
				<th><c:out value="${ category.jigack}" ></c:out></th>
				<th><c:out value="${ category.kyulsuck}" ></c:out></th>
				<th><c:out value="${ category.jotae}" ></c:out></th>
			</tr>
		</c:forEach>
		</tbody>
	
	</table>



</form>
	

</body>
</html>