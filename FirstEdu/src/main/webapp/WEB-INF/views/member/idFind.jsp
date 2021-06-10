<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- id/pwd 찾기 -->

			<div class="login-box" align="center">
			<h2>아이디 찾기</h2>
				<form action="${ pageContext.servletContext.contextPath }/member/idFind" method="post" enctype="multipart/form-data">
					<div class="form-group">
						<label for="exampleInputName1">이름</label>
						<input type="text" class="form-control" name="name" id="exampleInputName1" placeholder="이름을 입력하세요">
					</div>
					<!-- /.form-group -->
					<div class="form-group">
						<label for="exampleInputEmail1">이메일</label>
						<input type="email" class="form-control" name="email" id="exampleInputEmail1" placeholder="가입시등록하신 이메일을 입력하세요">
					</div>
					<!-- /.form-group -->
					<input type="submit" class="gp-btn btn-primary larg br-null b-null" value="확인">
				</form>
			</div>

		<!-- id/pwd 찾기 -->
</body>
</html>