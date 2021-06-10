<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/member.js" type="text/javascript"></script>
</head>
<body>
			<div align="center">
			<h2>비밀번호 찾기</h2>
				<form action="${ pageContext.servletContext.contextPath }/member/pwdFind" method="post">
				<table align="center">
					<tr>
						<td> * 아이디 </td>
						<td><input class="w3-input" type="text" id="id" name="id" placeholder="회원가입한 아이디를 입력하세요" required></td>
						<td><button onclick="return duplicationCheck()">중복확인</button></td>
					</tr>
					<tr>
					<tr>
					<td> * 이메일 </td>
						<td><input class="w3-input" type="text" id="email" name="email" placeholder="회원가입한 이메일주소를 입력하세요" required></td>
					</tr>
				</table>
				<button type="button" id="findBtn">찾기</button>
				<button type="button" onclick="history.go(-1);">로그인으로</button>
				</form>
			</div>
</body>
</html>