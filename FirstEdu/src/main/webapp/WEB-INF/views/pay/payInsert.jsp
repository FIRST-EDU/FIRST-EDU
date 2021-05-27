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
	<table id="studentList" class="studentList" border="1">
			<thead>
				<tr>
					<th>No</th>
					<th>ClassNo</th>
					<th>학생명</th>					
					<th>학년</th>
					<th>전화번호</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="student" items="${studentList}">
					<tr>
						<td><c:out value="${ student.no }" /></td>
						<td><c:out value="${ student.classInfo.no }"/></td>
						<td><c:out value="${ student.studentName }" /></td>
						<td><c:out value="${ student.grade }" /></td>
						<td><c:out value="${ student.studentPhone }" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<form action="${pageContext.servletContext.contextPath}/pay/insert" method="post">
		<div id="payInsertForm">
			학생번호 <input type="number" name="studentNo" id="studentNo" value=""><br>
			<input type="hidden" name="classNo" id="classNo" value="">
			학생명 <input type="text" name="studentName" id="studentName"  value=""><br>
			강의명 <select name="subjectName" id="subjectName">
				 <c:forEach var="className" items="${classNameList}" varStatus="i">
				 	<option id="calssNameList" value="">${className.classDTO.className}</option>
				 </c:forEach> 
				</select><br>
			<!-- 수강료 <input type="number" name="tution"> -->
			할인수단 <input type="radio" name="discountNo" value="1">친구
				  <input type="radio" name="discountNo" value="2">기간
				  <input type="radio" name="discountNo" value="3">없음<br>
			결제금액 <input type="number" name="payment"><br>
			결제수단 <input type="text" name="payOption"><br>
			납입형황 <input type="text" name="payYn"><br>
			납입일 <input type="date" name="payDate"><br>
		</div>
		<button>등록</button>
		</form>
		<script>
			$("#studentList tr").click(function(){
					var tdArr = new Array();
					
					var tr = $(this);
					var td = tr.children();
					
					td.each(function(i){
						tdArr.push(td.eq(i).text());
					});
					
					var no = td.eq(0).text();
					var classNo = td.eq(1).text();
					var name = td.eq(2).text();
				
					$('input[name=studentNo]').attr('value',no);
					$('input[name=classNo]').attr('value',classNo);
					$('input[name=studentName]').attr('value',name);
					
					var stuNo = $('input#studentNo').val();
					$.ajax({
						url:"selectClass",
						type:"GET",
						data:{stuNo:stuNo},
						success:function(data){
							console.log(data);
							$('option[id=classNameList]').attr('value',);
						}
					});

			});
		</script>
		
</body>
</html>