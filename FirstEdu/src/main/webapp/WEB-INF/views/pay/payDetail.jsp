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
<body  style="background:gray;">

	<table border="1">
		<tr>
			<th>학생명</th>
			<td><c:out value="${ payDetail.student.studentName}"/></td>
		</tr>
		<tr>
			<th>강의명</th>
			<td><c:out value="${ payDetail.classDTO.className}"/></td>
		</tr>
		<tr>
			<th>수강료</th>
			<td><c:out value="${ payDetail.classDTO.classPayment}"/></td>
		</tr>
		<tr>
			<th>현황</th>
			<td><c:out value="${ payDetail.payYn}"/></td>
		</tr>
		<tr>
			<th>결제수단</th>
			<td><c:out value="${ payDetail.payOption}"/></td>
		</tr>
		<tr>
			<th>결제일</th>
			<td> <c:out value="${ payDetail.payDate}"/></td>
		</tr>
		<tr>
			<th>할인</th>
			<td><c:out value="${ payDetail.discount.discountReason}"/></td>
		</tr>
		<tr>
			<th>결제금액</th>
			<td> <c:out value="${ payDetail.payment}"/></td>
		</tr>
	</table>
	<button type="button" onclick="location.href='${pageContext.servletContext.contextPath}/pay/update?no=${ payDetail.payNo }'">수정</button>
	<button type="button" onclick="location.href='${pageContext.servletContext.contextPath}/pay/list'">목록</button>
</body>
</html>