<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.9.1/jquery.tablesorter.min.js"></script>
</head>
<body>
<button type="button" onclick="location.href='${pageContext.servletContext.contextPath}/consult/insertView'">상담입력</button>
	<form action="${pageContext.servletContext.contextPath }/consult/search" method="get">
		<select name="searchOption" id="searchOption">
			<option value="studentName">학생이름</option>
			<option value="consultOption">상담방법</option>
			<option value="consultContent">상담내용</option>
		</select>
		<input type="search" id="searchValue" name="searchValue" value="">
		<button id="searchList">검색</button>
	</form>
<div style="height:400px; overflow:auto;">
	<table class="consultList" border="1">
		<thead>
			<tr>
				<th>No</th>
				<th>상담일</th>
				<th>학생명</th>
				<th>담당자</th>
				<th>상담방법</th>
				<th>상담내용</th>
			</tr>
		</thead>
		<tbody>
				<c:forEach var="consult" items="${consultList}">
				<fmt:formatDate var="consultDate" value="${consult.consultDate}" pattern="yyyy/MM/dd"/>
					<tr>
						<td><c:out value="${ consult.consultNo }" /></td>
						<td><c:out value="${ consultDate }"/></td>
						<td><c:out value="${ consult.student.studentName }" /></td>
						<td><c:out value="${ consult.teacher.name }" /></td>
						<td><c:out value="${ consult.category.consultOption }" /></td>
						<td><c:out value="${ consult.consultContent }" /></td>
					</tr>
				</c:forEach>
			</tbody>
	</table>
	</div>
	<script>
		$(document).ready(function () {
			$('.consultList').tablesorter();
		});
		
		/* td태그에 마우스 호버시 pointer 스타일로 변경  */
		if(document.getElementsByTagName("td")) {
			const $tds = document.getElementsByTagName("td");
			for(var i = 0 ; i < $tds.length ; i++) {
				$tds[i].onmouseenter = function() {
				this.parentNode.style.cursor = "pointer";
			} 
		/* td태그 클릭 시 테이블의 첫 번째 인덱스에 위치한 No를 가지고 detail로 이동 */
			$tds[i].onclick = function() {
				const no = this.parentNode.children[0].innerText;
				location.href = "${pageContext.servletContext.contextPath}/consult/detail/" + no;
				}
			}
		}

	</script>
</body>
</html>