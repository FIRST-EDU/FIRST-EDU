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
<!-- 수납 정보 수정 form Start -->
	<form action="${pageContext.servletContext.contextPath}/pay/update" method="post">
		<div id="payUpdateForm">
		    <input type="hidden" name="payNo" id="payNo" value="${ payUpdate.payNo}"><br>
		    <input type="hidden" name="studentNo" id="studentNo" value="${ payUpdate.student.no}"><br>
			<input type="hidden" name="classNo" id="classNo" value="${payUpdate.classInfo.no }">
			학생명 <input type="text" name="studentName" id="studentName"  value="${payUpdate.student.studentName }" readonly><br>
			강의명 <input type="text" name="classNameList" id="classNameList" value="${payUpdate.classDTO.className }" readonly><br>
			수강료 <input type="number" name="tution" id="tution" value="${payUpdate.classDTO.classPayment }" readonly><br>
			납입현황  <select name="payYn">
					 <option value="납부">납부</option>
					 <option value="미납">미납</option>
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
<!-- 수납 정보 수정 form End -->

	<script>
/* 어떤 라디오 버튼을 클릭하느냐에 따라 할인율이 다르게 적용되어 결제금액 input태그에 입력됨 */
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
	
	$(function(){	
				$(document).on("change", "select[name=payYn]", function(){
				var value = $(this).find("option:selected").val();
				var discountText = $("input[name=discountNo]");
				var paymentText = $("input[name=payment]");
				var payOptionText = $("select[name=payOption]");
				var payDateText = $("input[name=payDate]");
				var flag = false;
					if (value == 'N') {
						flag = true;
						$(paymentText).val('0');
						$(payDateText).val('0001-01-01');
					} 
				/* $("#option1").prop("selected",true); */
				$("#dis3").prop("checked", true);
				$(paymentText).attr("disabled", flag);
				$(payDateText).attr("disabled", flag);
				$(payOptionText).attr("disabled", flag);
				});

			});
			
/* form 태그 내부에 disabled 속성으로 된 태그의 데이터는 넘기지 못하기 때문에 submit버튼 클릭 시 disabled 속성을 지워줘야 한다. */
			 $("form").submit(function(){
				 $("input[name=payment]").removeAttr('disabled'); 
				 $("input[name=payDate]").removeAttr('disabled'); 
				 $("select[name=payOption]").removeAttr('disabled'); 
				 
			 })
	</script>
</body>
</html>