<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form >
<table>
<h1>근태 조회</h1>
	<c:forEach items="${teacherList}" var="teacher">
	<td><input type="button" value="${teacher.attendanceTime }" pattern="yyyy-MM-ddHH:mm:ss"/></td>
	</c:forEach>
	
		<%-- <fmt:formatDate var="attendanceTime" value="${teacher.attendanceTime }" pattern="YYYY/MM/DD HH24:MI:SS"/> --%>
		<%-- <fmt:formatDate var="attendanceTime" value="${teacher.attendanceTime }" pattern="yyyy-MM-ddHH:mm:ss"/>  --%>
</table>
</form>
</body>
</html>