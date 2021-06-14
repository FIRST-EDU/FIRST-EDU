<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${ pageContext.servletContext.contextPath }/classInfo/delete" method="post">
		<div>
			<label>* 아이디</label> <input type="text" name="id" value="${updateMember.id}" required>
		</div>
		<div>
			<label>* 비밀번호</label> <input type="password" name="pwd" value="${updateMember.pwd}" required>
		</div>
		<div>
			<label>* 비밀번호확인</label> <input type="password" name="pwd2" value="${updateMember.pwd}" required>
		</div>
	<div align="center">
				<button onclick="location.href='${ pageContext.servletContext.contextPath}/member/teacherList'">취소</button>
				<button type="submit" value="탈퇴하기">탈퇴</button>
		</div>
	</form>
		

</body>
</html>