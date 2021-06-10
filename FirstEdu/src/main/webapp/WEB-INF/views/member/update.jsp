<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">직원정보 수정하기</h1>
	
	<form id="form" action="${ pageContext.servletContext.contextPath }/member/update" method="post">  <!-- enctype="multipart/form-data" -->
	
		<table align="center" id="classListArea">
			<input type="hidden" name = "no" value="${sessionScope.loginMember.no }">
			<tr>
				<td> * 아이디 </td>
				<td><input type="text" name="id" id="id" readonly value="${sessionScope.loginMember.id }"></td>
				<td><button onclick="return duplicationCheck()">중복확인</button></td>
			</tr>
 			<tr>
				<td> * 직급코드 </td>
				<td><input type="text" name="jobCode" id="jobCode" readonly value="${sessionScope.loginMember.jobCode }"></td>
			</tr>
			<tr>
				<td> * 비밀번호 </td>
				<td><input type="password" name="pwd" required></td>
			</tr>
			<tr>
				<td> * 비밀번호확인 </td>
				<td><input type="password" name="pwd2" id="checkPwd"></td>
			</tr>
			<tr>
				<td> * 이름 </td>
				<td><input type="text" name="name" readonly value="${sessionScope.loginMember.name }"></td>
			</tr>
			<tr>
				<td> * 이메일 </td>
				<td><input type="email" name="email" readonly value="${sessionScope.loginMember.email }"></td>
			</tr>
			<tr>
				<td> * 전화번호 </td>
				<td><input type="tel" name="phone" value="${sessionScope.loginMember.phone }"></td>
			</tr>
			<tr>
					<td>우편번호</td>
					<td><input type="text" name="zipCode" id="zipCode" readonly></td>
					<td><input type="button" value="검색" class="btn btn-yg" id="searchZipCode"></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="address1" id="address1" readonly></td>
					<td></td>
				</tr>	
				<tr>
					<td>상세주소</td>
					<td><input type="text" name="address2" id="address2"></td>
					<td></td>
				</tr>
				<tr>
				<td>권한</td>
					<td>
					<input type="radio" id="rolladmin" name="role" value="ADMIN" checked>
			        <label for="rolladmin">ADMIN</label>
			        <input type="radio" id="rolluser" name="role" value="USER">
			        <label for="rolluser">USER</label>
					</td>
				</tr>
			<tr>
				<td>프로필사진</td>
				<td>
					<input type="file" name="photo">
				</td>
			</tr>
		</table>
		<br>
		<div class="btns" align="center">
				<input type="reset" value="메인으로" class="btn btn-yg" id="goMain" onclick="location.href='${ pageContext.servletContext.contextPath }'">
				<input type="submit" value="수정하기">
				<button type="button" onclick="location.href='${ pageContext.servletContext.contextPath }/member/delete'" >탈퇴</button>
			</div>
	</form>
	
	<!-- 다음 우편번호 api -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
		
		function postRequest(intent){
			var $form = document.getElementById("form");
			var passwordValue = document.getElementsByName("pwd")[0].value;
			
			// "", null, undefined, 0, NaN에 해당되면 false
			if(!passwordValue || passwordValue === "") {	// 사용자가 비번을 입력하지 않았을 때
				alert("비밀번호는 반드시 입력해야 합니다.");
				document.getElemetsByName("pwd")[0].focus();
				
				return false;
			}else if(document.getElementById("password").value != document.getElementById("checkPassword").value){
				
				alert("비밀번호 재확인이 일치하지 않습니다.");
				document.getElementById("password").focus();
			 
				return false;

			}
			
			requestPath = "<%=request.getContextPath()%>";
			
			switch(intent){
				case "updateMember" : requestPath += "/member/update"; break;
				case "deleteMember" : requestPath += "/member/delete"; break;
			}
			
			$form.action = requestPath;
			$form.submit();
		}
		
		
		$goMain.onclick=function(){
			location.href = "${ pageContext.servletContext.contextPath}";
		}
	</script>
	
	
	
</body>
</html>