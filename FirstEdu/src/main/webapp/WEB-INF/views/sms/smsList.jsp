<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<button type="button" onclick="location.href='${pageContext.servletContext.contextPath}/sms/insertView'">문자전송</button>
<table class="smsList" border="1">
		<thead>
			<tr>
				<th>No</th>
				<th>학생명</th>
				<th>수신인</th>
				<th>발신시간</th>
				<th>발신내용</th>

			</tr>
		</thead>
		<tbody>
				<c:forEach var="sms" items="${smsList}">
					<tr>
						<td><c:out value="${ sms.smsNo }" /></td>
						<td><c:out value="${ sms.student.studentName }" /></td>
						<td><c:out value="${ sms.student.parentsPhone }" /></td>
						<td><c:out value="${ sms.sendTime }" /></td>
						<td><c:out value="${ sms.smsContent }" /></td>
					</tr>
				</c:forEach>
			</tbody>
	</table>
</body>
</html>