<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
				<th>�⼮</th>
				<th>�Ἦ</th>
				<th>����</th>
				<th>����</th>
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
		<button type="button" onclick="location.href='${ pageContext.servletContext.contextPath }/attendance/insertStudnet'">����</button>
		
		

	<input type="radio" name="className" id="radioSelection" value="1�г��߰�޿���" onclick="submitForm()" checked="checked">1�г� �ʱ� ����
	<table>
	
	<c:forEach var="student" items="${studentList}">
		��¥:<input type="date" name="attendanceTime" id="attendanceTime" >
		
		<td><input type="hidden" name="no" id="no" value="1"></td>
		<td><input type="hidden" name="studentNo" id="studentNo" value="1"></td>
		<td><input type="hidden" name="classNo" id="classNo" value="1"></td>
		
		<td><input type="checkbox" name="categoryNo1" id="dis" value="1">�⼮</td>
		<td><input type="checkbox" name="categoryNo1" id="dis" value="2">�Ἦ</td>
		<td><input type="checkbox" name="categoryNo1" id="dis" value="3" >����</td>
		<td><input type="checkbox" name="categoryNo1" id="dis" value="4">����</td>
		<td><input type="text" name="memo" id="memo" value="${student.attendanceList.memo}" readonly></td>
		<td><input type="button" value="�޸�">

	</c:forEach>
	</table>
</form>

</body>
</html>