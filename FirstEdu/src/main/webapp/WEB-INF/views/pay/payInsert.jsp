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
					<th id="th5" style="display:none;"></th>
					<th>학생명</th>					
					<th>학년</th>
					<th>전화번호</th>
					<th id="th5" style="display:none;">수강과목</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="student" items="${studentList}">
					<tr>
						<td><c:out value="${ student.no }" /></td>
						<td id="th5" style="display:none;"><c:out value="${ student.classInfo.no }"/></td>
						<td><c:out value="${ student.studentName }" /></td>
						<td><c:out value="${ student.grade }" /></td>
						<td><c:out value="${ student.studentPhone }" /></td>
						<td style="display:none;"><c:out value="${ student.classDTO.className }"/></td>
						<td style="display:none;"><c:out value="${ student.classDTO.classPayment }"/></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<form action="${pageContext.servletContext.contextPath}/pay/insert" method="post">
		<div id="payInsertForm">
			학생번호 <input type="number" name="studentNo" id="studentNo" value=""><br>
			<input type="hidden" name="classNo" id="classNo" value="">
			학생명 <input type="text" name="studentName" id="studentName"  value=""><br>
			강의명 <input type="text" name="classNameList" id="classNameList" value=""><br>
			수강료 <input type="number" name="tution" id="tution" value=""><br>
			할인수단 <input type="radio" name="discountNo" id="dis1" value="1">친구
				  <input type="radio" name="discountNo" id="dis2" value="2">기간
				  <input type="radio" name="discountNo" id="dis3" value="3">없음<br>
			결제금액 <input type="number" name="payment" value=""><br>
			결제수단 <select name="payOption">
					 <option value="카드">카드</option>
					 <option value="카드">현금</option>
				  </select><br>
			납입현황  <select name="payYn">
					 <option value="Y">납부</option>
					 <option value="N">미납</option>
				  </select><br>
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
					
					var stuNo = td.eq(0).text();
					var classNo = td.eq(1).text();
					var name = td.eq(2).text();
					var className = td.eq(5).text();
					var classPayment = td.eq(6).text();
					
					 
					$('input[name=studentNo]').attr('value',stuNo);
					$('input[name=classNo]').attr('value',classNo);
					$('input[name=studentName]').attr('value',name);
					$('input[name=classNameList]').attr('value',className);
					$('input[name=tution]').attr('value',classPayment);
					
					$.ajax({
						url:"selectClass",
						type:'GET',
						data:{stuNo:stuNo},
						success:function(data){
							console.log(stuNo);
							console.log(classNameList.value);
							
						}
					}); 
					 

			});
			
			$("input:radio").click(function(){
				var tution = document.getElementById('tution').value;
				
				if($('input:radio[id=dis1]').is(':checked') == true){
					var disTution1 = tution - (tution * 0.1);
					$('input[name=payment]').attr('value',disTution1);
				}
				if($('input:radio[id=dis2]').is(':checked') == true){
					var disTution2 = tution - (tution * 0.05);
					$('input[name=payment]').attr('value',disTution2);
				}
				if($('input:radio[id=dis3]').is(':checked') == true){
					$('input[name=payment]').attr('value',tution);
				}
			})
		</script>
		
</body>
</html>