<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function submitForm() {
    document.getElementById("envselection").submit();
}
</script>

</head>
<body>
<form id="envselection" action="${pageContext.request.contextPath}/attendance/selectStudent" method="get">
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
		<button type="button" onclick="location.href='${ pageContext.servletContext.contextPath }/attendance/insertStudnet'">수정</button>
		
		

	<input type="radio" name="className" id="radioSelection" value="1학년중고급영어" onclick="submitForm()">1학년 초급 수학
	<table>
	
	<c:forEach var="student" items="${studentList}">
		날짜:<input type="date" name="attendanceTime" id="attendanceTime" >
		
		<td><input type="hidden" name="no" id="no" value="1"></td>
		<td><input type="hidden" name="studentNo" id="studentNo" value="1"></td>
		<td><input type="hidden" name="classNo" id="classNo" value="1"></td>
		
		<td><c:out value="${ student.studentName }"></c:out></td>
		
		<td><input type="checkbox" name="categoryNo1" id="dis" value="1">출석</td>
		<td><input type="checkbox" name="categoryNo1" id="dis" value="2">결석</td>
		<td><input type="checkbox" name="categoryNo1" id="dis" value="3" >지각</td>
		<td><input type="checkbox" name="categoryNo1" id="dis" value="4">조퇴</td>
		<td><input type="text" name="memo" id="memo" value="memo" readonly></td>

	</c:forEach>
	</table>
</form>

</body>
</html>