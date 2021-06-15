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
			
			<c:choose>
				<c:when test="${payDetail.payYn eq 'Y'}">
				<td><c:out value="납부"/></td>
				</c:when>
				<c:when test="${payDetail.payYn eq 'N'}">
				<td><c:out value="미납"/></td>
				</c:when>
			</c:choose>
		
		</tr>
		<tr>
			<th>결제수단</th>
			<c:choose>
				<c:when test="${payDetail.payOption eq '--'}">
					<td></td>
				</c:when>
				<c:when test="${payDetail.payOption ne '--'}">
					<td><c:out value="${payDetail.payOption }"/></td>
				</c:when>
			</c:choose>
		</tr>
		<tr>
			<th>결제일</th>
			<c:choose>
				<c:when test="${payDetail.payDate eq '0001/01/01'}">
					<td></td>
				</c:when>
				<c:when test="${payDetail.payOption ne '0001/01/01'}">
					<td><c:out value="${payDetail.payDate }"/></td>
				</c:when>
			</c:choose>
		</tr>
		<tr>
			<th>할인</th>
			<td><c:out value="${ payDetail.discount.discountReason}"/></td>
		</tr>
		<tr>
			<th>결제금액</th>
			<c:choose>
				<c:when test="${payDetail.payment eq 0}">
					<td></td>
				</c:when>
				<c:when test="${payDetail.payment ne 0}">
					<td><c:out value="${payDetail.payment }"/></td>
				</c:when>
			</c:choose>
		</tr>
	</table>
<!-- 수납 상세 정보 End -->
	
	<button type="button" onclick="location.href='${pageContext.servletContext.contextPath}/pay/update?no=${ payDetail.payNo }'">수정</button>
	<button type="button" onclick="location.href='${pageContext.servletContext.contextPath}/pay/list'">목록</button>
</body>
</html>