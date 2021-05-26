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
	<table class="studentList">
			<thead>
				<tr>
					<th>No</th>
					<th>학생명</th>
					<th>학년</th>
					<th>전화번호</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="student" items="${ requestScope.studentList }">
					<tr>
						<td><c:out value="${ student.no }" /></td>
						<td><c:out value="${ student.studentName }" /></td>
						<td><c:out value="${ student.grade }" /></td>
						<td><c:out value="${ student.studentPhone }" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
			학생번호 <input type="number" name="studentNo" id="studentNo" value="">
			학생명 <input type="text" name="studentName" id="studentName" value="">
			수강일 <input type="date" name="beginDate" id="beginDate">
			강의명
			<c:if test="${!empty classList}">
				 <select name="subjectName" id="subjectName">
				 <c:forEach var="classList" items="${requestScope.classList}" varStatus="i">
				 <option value="${classList.className}">${classList.className}</option>
				 </c:forEach> 
				</select>
			</c:if>
			<!-- 수강료 <input type="number" name="tution"> -->
			할인수단
			결제금액 <input type="number" name="payment">
			결제수단 <input type="text" name="payOption">
			납입형황 <input type="text" name="payYn">
			납부일 <input type="text" name="payDate">
		</div>
		
		<script>
			$("td").click(function(){
				var no = ${requestScope.studentList.no};
				var name = ${requestScope.studentName};
				$.ajax({
					url:"selectStudent",
					type:"POST",
					data:no,
					success:function(data){
						$('input[name=studentNo]').attr('value',no);
						$('input[name=studentName]').attr('value',name);
					}
				});
			});
		</script>
</body>
</html>