<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/member.js" type="text/javascript"></script>
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">선생님등록</h1>

	<form action="${ pageContext.servletContext.contextPath }/member/regist" method="post" enctype="multipart/form-data">
		<div>
			<label>* 아이디</label> <input type="text" name="id" id="userId" required>
			<td><button onclick="return duplicationCheck()">중복확인</button></td>
		</div>
		<div>
			<label>* 직급코드</label> <select name="jobCode" required>
				<option value="	J1">원장</option>
				<option value="J2">부원장</option>
				<option value="J3">팀장</option>
				<option value="J4">선생님</option>
				<option value="J5">인턴</option>
			</select>

		</div>
		<div>
			<label>* 비밀번호</label> <input type="password" name="pwd" required>
		</div>
		<div>
			<label>* 비밀번호확인</label> <input type="password" name="pwd2" required>
		</div>
		<div>
			<label>* 이름</label> <input type="text" name="name" required>
		</div>
		<div>
			<label>* 이메일</label> <input type="email" name="email" required>
		</div>
		<div>
			<input type="radio" id="male" name="gender" value="M" checked>
			<label for="male">남자</label> <input type="radio" id="female"
				name="gender" value="F"> <label for="female">여자</label>
		</div>
		<div>
			<label>* 전화번호</label> <input type="tel" name="phone" required>
		</div>
		<div>
			<label>우편번호</label> <input type="text" name="zipCode" id="zipCode"
				readonly> <input type="button" value="검색" class="btn btn-yg"
				id="searchZipCode"> <label>주소</label> <input type="text"
				name="address1" id="address1" readonly> <label>상세주소</label>
			<input type="text" name="address2" id="address2">
		</div>
		<div>
			<label>* 권한</label> 
			<select name="role" required>
				<option value="ADMIN">ADMIN</option>
				<option value="USER">USER</option>
			</select>
		</div>
		<div>
			<label>입사일</label> <input type="date" name="hireDate">
		</div>

		<div align="center">
			<button type="reset">작성취소</button>
			<button type="submit">가입하기</button>
		</div>
	</form>

	<!-- 다음 우편번호 api -->
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		const $searchZipCode = document.getElementById("searchZipCode");
		const $goMain = document.getElementById("goMain");

		$searchZipCode.onclick = function() {

			new daum.Postcode({
				oncomplete : function(data) {
					document.getElementById("zipCode").value = data.zonecode;
					document.getElementById("address1").value = data.address;
					document.getElementById("address2").focus();
				}
			}).open();
		}

		$goMain.onclick = function() {
			location.href = "${ pageContext.servletContext.contextPath}";
		}
	</script>

	<!-- 회원가입 시 중복 확인-->
	<script>
		function duplicationCheck() {
			var userId = $("#userId").val();
			console.log(userId);
			$
					.ajax({
						url : "${pageContext.servletContext.contextPath}/member/idDupCheck",
						type : "post",
						data : {
							userId : userId
						},
						success : function(data) {
							console.log(data);
							if (data == "true") {
								// 중복없음
								alert("사용 가능한 아이디입니다.");
							} else {
								alert("중복된 아이디입니다.");
							}
						},
						error : function(error) {
							console.log(error);

						}
					});

			return false;
		}
	</script>


</body>
</html>