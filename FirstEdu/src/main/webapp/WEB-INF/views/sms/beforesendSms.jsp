<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<div style="height:400px; overflow:auto; float:left; margin:23px;">
	<table id="studentList" class="studentList" border="1">
		<thead>
			<tr>
				<th>학생번호</th>
				<th>학생명</th>
				<th>학교</th>
				<th>학부모연락처</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="student" items="${studentList}">
				<tr>
					<td><c:out value="${ student.no }" /></td>
					<td><c:out value="${ student.studentName }" /></td>
					<td><c:out value="${ student.school }" /></td>
					<td><c:out value="${ student.parentsPhone }" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<div id="contents"> 
<form action="${pageContext.servletContext.contextPath }/sms/insert" method="post">
	<input type="hidden" name="studentNo" id="studentNo">
       받는사람 : <input type="text" id="parentsPhone" name="parentsPhone"/>
      보낼내용 :  <input type="text" id="smsContent" name="smsContent">
  <button>전송</button>   <!-- 인증번호와 내가 입력창에 입력한 인증번호 비교하는 창 -->
</form>  
</div>
<script>
	$("#studentList tr").click(
			function() {
				var tdArr = new Array();
	
				var tr = $(this);
				var td = tr.children();
	
				td.each(function(i) {
					tdArr.push(td.eq(i).text());
				});
	
				var stuNo = td.eq(0).text();
				var parentsPhone = td.eq(3).text();
	
				$('input[name=studentNo]').attr('value', stuNo);
				$('input[name=parentsPhone]').attr('value', parentsPhone);
	
			});
</script>
</body>
</html>