<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="msapplication-TileColor" content="#da532c" />
    <meta name="theme-color" content="#ffffff" />
    <link rel="apple-touch-icon" sizes="180x180" href="./apple-touch-icon.png" />
    <link rel="shortcut icon" type="image/png" sizes="32x32" href="./favicon-32x32.png" />
    <link rel="shortcut icon" type="image/png" sizes="16x16" href="./favicon-16x16.png" />
    <link rel="mask-icon" href="./safari-pinned-tab.svg" color="#5e72e4" />
	<title> 조직 관리 &gt; 직원 수정 | FIRST EDU</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/style.css" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Material+Icons"
      rel="stylesheet"
    />
    <script
      src="https://kit.fontawesome.com/11694e3acf.js"
      crossorigin="anonymous"
    ></script>
    <script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<h1 align="center">직원정보 수정하기</h1>

	<%-- 	<input type="hidden" name = "no" value="${updateMember.no}"> --%>
	<form id="form"
		action="${ pageContext.servletContext.contextPath }/member/update"
		method="post">

		<table align="center" id="classListArea">
			<tr>
				<td><input type="hidden" name="no" id="no"
					value="${updateMember.no}"></td>
				<!-- <td><button onclick="return duplicationCheck()">중복확인</button></td> -->
			</tr>
			<tr>
				<td>직급코드</td>
				<td><select name="jobCode" id="jobCode">
						<option value="J1">원장</option>
						<option value="J2">부원장</option>
						<option value="J3">팀장</option>
						<option value="J4">선생님</option>
						<option value="J5">인턴</option>
				</select></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" id="id"
					value="${updateMember.id}"></td>
				<!-- <td><button onclick="return duplicationCheck()">중복확인</button></td> -->
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"
					value="${updateMember.name}"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="email" name="email"
					value="${updateMember.email}"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="phone" value="${updateMember.phone}"></td>
			</tr>
			<tr>
					<td>우편번호</td>
					<td><input type="text" name="zipCode" id="zipCode" readonly></td>
					<td><input type="button" value="검색" class="btn btn-yg" id="searchZipCode" readonly></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="address1" id="address1"></td>
					<td></td>
				</tr>	
				<tr>
					<td>상세주소</td>
					<td><input type="text" name="address2" id="address2"></td>
					<td></td>
				</tr>
			<tr>
				<td>권한</td>
				<td><select name="role">
						<option value="ADMIN">ADMIN</option>
						<option value="USER">USER</option>
				</select></td>
			</tr>
		</table>
		<br>
		<div class="btns" align="center">
			<input type="reset" value="메인으로" class="btn btn-yg" id="goMain"
				onclick="location.href='${ pageContext.servletContext.contextPath }'">
			<input type="submit" value="수정하기">
			<button type="button"
				onclick="location.href='${ pageContext.servletContext.contextPath }/member/delete'">탈퇴</button>
		</div>
	</form>

	<!-- 다음 우편번호 api -->
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		const $searchZipCode = document.getElementById("searchZipCode");
		const $goMain = document.getElementById("goMain");
		
		$searchZipCode.onclick = function(){
			
			new daum.Postcode({
				oncomplete : function(data){
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
	
<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/teacherInput.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/modal.js"></script>


</body>
</html>