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
 <input class="attendance-date" id="#" type="date" name="attendanceTime" value="attendanceTime">
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
            <input type="button" onclick="location.href='${ pageContext.servletContext.contextPath }/attendance/insertStudnet'" class="btn-fill-light-blue btn-long btn-margin" value="수정">
		
		

	<input type="radio" name="className" id="radioSelection" value="1학년초급영어" onclick="submitForm()" >1학년초급영어
	<input type="radio" name="className" id="radioSelection" value="2학년초급영어" onclick="submitForm()" >2학년초급영어
	<input type="radio" name="className" id="radioSelection" value="3학년초급영어" onclick="submitForm()" >3학년초급영어
	<input type="radio" name="className" id="radioSelection" value="1학년중고급영어" onclick="submitForm()" >1학년중고급영어
	<input type="radio" name="className" id="radioSelection" value="2학년중고급영어" onclick="submitForm()" >2학년중고급영어
	<input type="radio" name="className" id="radioSelection" value="3학년중고급영어" onclick="submitForm()" >3학년중고급영어
	<input type="radio" name="className" id="radioSelection" value="수학 상,하" onclick="submitForm()" >수학 상,하
	<input type="radio" name="className" id="radioSelection" value="수학1" onclick="submitForm()" >수학1
	<input type="radio" name="className" id="radioSelection" value="수학2" onclick="submitForm()" >수학2
	<input type="radio" name="className" id="radioSelection" value="미적분" onclick="submitForm()" >미적분
	<input type="radio" name="className" id="radioSelection" value="기하" onclick="submitForm()" >기하
	<input type="radio" name="className" id="radioSelection" value="학률과통계" onclick="submitForm()" >학률과통계
 	
	
	
	                <table>
                  <thead>
                    <tr>
                      <th >NO</th>
                      <th>학생명</th>
                      <th >출결사항</th>
                      <th >비고</th>
                    </tr>
                  </thead>
                  <tbody>
	
	<c:forEach var="student" items="${studentList}">
		<tr>
		<td><c:out value="${ student.no }"></c:out></td>
		
		<td><c:out value="${ student.studentName }"></c:out></td>
		<td> 
		<c:if test="${ student.attendanceList[0].category.categoryNo eq '1'}">
		<input type="checkbox" name="categoryNo" id="dis" value="1" checked>출석
		</c:if>
		
		<c:if test="${ student.attendanceList[0].category.categoryNo eq '2'}">
		<input type="checkbox" name="categoryNo" id="dis" value="2" checked>결석
		</c:if>
	
		
		<c:if test="${ student.attendanceList[1].category.categoryNo eq '3'}">
		<input type="checkbox" name="categoryNo" id="dis" value="3" checked>지각
		</c:if>
		
		
		<c:if test="${ student.attendanceList[1].category.categoryNo eq '4'}">
		<input type="checkbox" name="categoryNo" id="dis" value="4" checked>조퇴
		</c:if>
		</td>

		<td><input type="text" name="memo" id="memo" value="${ student.attendanceList[1].memo }" readonly></td>
				
 	</tr>
	</c:forEach>
	</tbody>
	</table>
	
	
</form>

</body>
</html>