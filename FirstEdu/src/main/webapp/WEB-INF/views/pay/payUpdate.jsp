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
	<form action="${pageContext.servletContext.contextPath}/pay/update" method="post">
		<div id="payUpdateForm">
		    <input type="hidden" name="payNo" id="payNo" value="${ payUpdate.payNo}"><br>
		    <input type="hidden" name="studentNo" id="studentNo" value="${ payUpdate.student.no}"><br>
			<input type="hidden" name="classNo" id="classNo" value="${payUpdate.classInfo.no }">
			학생명 <input type="text" name="studentName" id="studentName"  value="${payUpdate.student.studentName }" readonly><br>
			강의명 <input type="text" name="classNameList" id="classNameList" value="${payUpdate.classDTO.className }" readonly><br>
			수강료 <input type="number" name="tution" id="tution" value="${payUpdate.classDTO.classPayment }" readonly><br>
			납입현황  <select name="payYn">
					 <option value="Y">납부</option>
					 <option value="N">미납</option>
				  </select><br>
			할인수단 <input type="radio" name="discountNo" id="dis1" value="1">친구
				  <input type="radio" name="discountNo" id="dis2" value="2">기간
				  <input type="radio" name="discountNo" id="dis3" value="3">없음<br>
			결제금액 <input type="number" name="payment" value=""><br>
			결제수단 <select name="payOption">
					 <option value="--" selected id="option1">--</option>
					 <option value="카드">카드</option>
					 <option value="카드">현금</option>
				  </select><br>
			납입일 <input type="date" name="payDate" value=""><br>
		</div>
		<button type="submit">수정</button>
		<button type="button" onclick="location.href='${pageContext.servletContext.contextPath}/pay/delete?no=${ payUpdate.payNo }'">삭제</button>
		<button type="button" onclick="location.href='${pageContext.servletContext.contextPath}/pay/detail?no=${ payUpdate.payNo }'">취소</button>
	</form>
	
	<script>
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