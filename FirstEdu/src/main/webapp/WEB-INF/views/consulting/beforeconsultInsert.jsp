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
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.9.1/jquery.tablesorter.min.js"></script>
</head>
<body>
<div style="height:400px; overflow:auto; float:left; margin:23px;">
	<table id="studentList" class="studentList" border="1">
		<thead>
			<tr>
				<th>No</th>
				<th>학생명</th>
				<th>학년</th>
				<th>학교</th>
				<th>전화번호</th>
				
			</tr>
		</thead>
		<tbody>
			<c:forEach var="student" items="${studentList}">
				<tr>
					<td><c:out value="${ student.no }" /></td>
					<td><c:out value="${ student.studentName }" /></td>
					<td><c:out value="${ student.grade.gradeName }" /></td>
					<td><c:out value="${ student.school }" /></td>
					<td><c:out value="${ student.studentPhone }" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<div id="consultInsertForm">
	<form action="${pageContext.servletContext.contextPath}/consult/insert"
		method="post">
			<input type="hidden" name="studentNo" id="studentNo"><br>
			학생명 <input type="text" name="studentName" id="studentName"><br>
			상담일 <input type="date" name="consultDate" value=""><br>
			상담방법 <select name="categoryNo" id="categoryNo">
					<option value="1">대면</option>
					<option value="2">비대면</option>
					<option value="3">학부모동참</option>
				  </select><br>   
			상담내용 <input type="text" name="consultContent" id="consultContent"/><br>
		<button type="button" onclick="location.href='${pageContext.servletContext.contextPath}/consult/list'">목록</button>
		<button>등록</button>
	</form>
</div>
<script>
/* 테이블 클릭 시 값이 자동으로 input태그에 입력되게 하는 JS Start */
			$("#studentList tr").click(function(){
					var tdArr = new Array();
					
					var tr = $(this);
					var td = tr.children();
					
					td.each(function(i){
						tdArr.push(td.eq(i).text());
					});
					
					var stuNo = td.eq(0).text();
					var name = td.eq(1).text();
					
					$('input[name=studentNo]').attr('value',stuNo);
					$('input[name=studentName]').attr('value',name);
	 
			});
			
			if(document.getElementsByTagName("td")) {
				const $tds = document.getElementsByTagName("td");
				for(var i = 0 ; i < $tds.length ; i++) {
					$tds[i].onmouseenter = function() {
					this.parentNode.style.cursor = "pointer";
					}
				}
			}
</script>
</body>
</html>