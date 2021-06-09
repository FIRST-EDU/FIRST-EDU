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

<!-- 학생 목록 Start -->
<form action="${pageContext.servletContext.contextPath }/pay/insertView" method="get">
	<select id="searchOption" name="searchOption">
		<option value="studentName">학생명</option>
		<option value="className">강의명</option>
	</select>
	<input type="search" id="searchValue" name="searchValue">
</form>
<input type="text" value="${studentTotal }명">
<div style="height:400px; overflow:auto; float:left; margin:23px;">
	<table id="studentList" class="studentList" border="1">
		<thead>
			<tr>
				<th>No</th>
				<th>학생명</th>
				<th>학년</th>
				<th>전화번호</th>
				<th style="display: none;"></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="student" items="${studentList}">
				<tr>
					<td><c:out value="${ student.no }" /></td>
					<td><c:out value="${ student.studentName }" /></td>
					<td><c:out value="${ student.grade.gradeName }" /></td>
					<td><c:out value="${ student.studentPhone }" /></td>
					<td style="display: none;"><c:out
							value="${ student.classDTO.classPayment }" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<!-- 학생목록 End --> 

<!-- 수납입력 form Start -->
<div id="payInsertForm">
	<form action="${pageContext.servletContext.contextPath}/pay/insert"
		method="post">
			<input type="hidden" name="studentNo" id="studentNo" value=""><br>
			학생명 <input type="text" name="studentName" id="studentName" value=""><br>
			강의명 <select name="classNo" id="classNo"></select><br>
			수강료 <input type="number" name="tution" id="tution" value=""><br> 
			납입현황 <select name="payYn">
					<option value="납부">납부</option>
					<option value="미납">미납</option>
				  </select><br> 
			할인수단 <input type="radio" name="discountNo" id="dis1" value="1">친구 
			 	  <input type="radio" name="discountNo" id="dis2" value="2">기간 
			 	  <input type="radio" name="discountNo" id="dis3" value="3">없음<br> 
			 결제금액 <input type="text" name="payment"><br> 
			 결제수단 <select name="payOption">
					<option value="--" selected id="option1">--</option>
					<option value="카드">카드</option>
					<option value="현금">현금</option>
				  </select><br> 
			 납입일 <input type="date" name="payDate"><br>
		<button onclick="location.href='${pageContext.servletContext.contextPath}/pay/list'">목록</button>
		<button>등록</button>
	</form>
</div>
<!-- 수납입력 form End -->

	<script>
		/* 테이블 클릭 시 값이 자동으로 input태그에 입력되게 하는 JS Start */
		$("#studentList tr").click(
				function() {
					var tdArr = new Array();

					var tr = $(this);
					var td = tr.children();

					td.each(function(i) {
						tdArr.push(td.eq(i).text());
					});

					var stuNo = td.eq(0).text();
					var name = td.eq(1).text();
					var classPayment = td.eq(4).text();

					$.ajax({
						url : "classList",
						type : 'GET',
						data : {
							stuNo : stuNo
						},
						success : function(data) {

							for (i = 0; i < data.length; i++) {
								$("#classNo").append(
										'<option value="' + data[i].classInfo.no + '">'
												+ data[i].classDTO.className
												+ '</option>');

							}

						}
					});

					$('input[name=studentNo]').attr('value', stuNo);
					$('input[name=studentName]').attr('value', name);
					$('input[name=tution]').attr('value', classPayment);

				});

		/* 할인 수단 radio버튼 클릭 시 각각의 할인율을 적용하여 결제금액 input태그에 값 입력 Start */
		$("input:radio").click(function() {
			var tution = document.getElementById('tution').value;

			if ($('input:radio[id=dis1]').is(':checked') == true) {
				var disTution1 = tution - (tution * 0.1);
				$('input[name=payment]').attr('value', disTution1);
			}
			if ($('input:radio[id=dis2]').is(':checked') == true) {
				var disTution2 = tution - (tution * 0.05);
				$('input[name=payment]').attr('value', disTution2);
			}
			if ($('input:radio[id=dis3]').is(':checked') == true) {
				$('input[name=payment]').attr('value', tution);
			}
		})

		/* 미납옵션 선택 시 하위의 옵션들을 선택할 수 없게 막아놓는 JS Start */
		$(function() {
			$(document).on("change", "select[name=payYn]", function() {
				var value = $(this).find("option:selected").val();
				var discountText = $("input[name=discountNo]");
				var paymentText = $("input[name=payment]");
				var payOptionText = $("select[name=payOption]");
				var payDateText = $("input[name=payDate]");
				var flag = false;
				if (value == '미납') {
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
		$("form").submit(function() {
			$("input[name=payment]").removeAttr('disabled');
			$("input[name=payDate]").removeAttr('disabled');
			$("select[name=payOption]").removeAttr('disabled');

		})

		/* td태그에 마우스 호버 시 pointer 스타일로 변경 Start */
		if (document.getElementsByTagName("td")) {
			const $tds = document.getElementsByTagName("td");
			for (var i = 0; i < $tds.length; i++) {

				$tds[i].onmouseenter = function() {
					this.parentNode.style.cursor = "pointer";
				}

			}
		}
	</script>
</body>
</html>