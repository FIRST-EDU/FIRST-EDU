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
<button type="button" onclick="location.href='${pageContext.servletContext.contextPath}/pay/insertView'">수납입력</button>
	<table class="payList" border="1">
			<thead>
				<tr>
					<th>No</th>
					<th>수강일</th>
					<th>학생명</th>
					<th>강의명</th>
					<th>현황</th>
					<th>결제수단</th>
					<th>결제일</th>
					<th>수강료</th>
					<th>할인</th>
					<th>결제금액</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="pay" items="${payList}">
					<tr>
						<td><c:out value="${ pay.payNo }" /></td>
						<td><c:out value="${ pay.classInfo.beginDate }" /></td>
						<td><c:out value="${ pay.student.studentName }" /></td>
						<td><c:out value="${ pay.classDTO.className }" /></td>
						<c:choose>
							<c:when test="${pay.payYn eq 'Y'}">
							<td><c:out value="납부"/></td>
							</c:when>
							<c:when test="${pay.payYn eq 'N'}">
							<td><c:out value="미납"/></td>
							</c:when>
						</c:choose>
						<td><c:out value="${ pay.payOption }" /></td>
						<td><c:out value="${ pay.payDate }" /></td>
						<td><c:out value="${ pay.classDTO.classPayment }" /></td>
						<td><c:out value="${ pay.discount.discountReason }" /></td>
						<td><c:out value="${ pay.payment }" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
</body>
</html>