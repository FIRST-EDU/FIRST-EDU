<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="msapplication-TileColor" content="#da532c" />
    <meta name="theme-color" content="#ffffff" />
    <link rel="apple-touch-icon" sizes="180x180" href="${ pageContext.servletContext.contextPath }/apple-touch-icon.png" />
    <link rel="shortcut icon" type="image/png" sizes="32x32" href="${ pageContext.servletContext.contextPath }/favicon-32x32.png" />
    <link rel="shortcut icon" type="image/png" sizes="16x16" href="${ pageContext.servletContext.contextPath }/favicon-16x16.png" />
    <link rel="mask-icon" href="./safari-pinned-tab.svg" color="#5e72e4" />
	<title>로그인 | FIRST EDU</title>
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
</head>
<body class="non-member-page-background">
	<jsp:include page="../common/commonNonMember.jsp"/>

	<main class="non-member-box">
		<div class="row">
			<div class="col-sm-4">
				<article class="non-member-content">
					<div class="project-text">
					<c:if test="${ !empty sessionScope.loginMember }">
						<h2 class="welcome"><c:out value="${ sessionScope.loginMember.name }님 환영합니다."/></h2>
						<p class="introduce-project">학원 관리 프로그램 FIRST EDU 입니다.</p>
						<button onclick="location.href='${ pageContext.servletContext.contextPath }/member/update'">정보수정</button>
						<button onclick="location.href='${ pageContext.servletContext.contextPath }/member/logout'">로그아웃</button>
						<button onclick="location.href='${ pageContext.servletContext.contextPath }/member/delete'">탈퇴</button>
					</c:if>
					</div>
				</article>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4">
				<article class="non-member-card loginArea">
					<c:if test="${ empty sessionScope.loginMember }">
						<form
							action="${ pageContext.servletContext.contextPath }/member/login"
							method="post">
							<div class="non-member-input-group">
								<i class="fas fa-user-circle"></i> <input
									class="form-input-non-member" type="text" placeholder="아이디"
									name="id" autocomplete="new-password" />
							</div>
							<div class="non-member-input-group">
								<i class="fas fa-unlock-alt"></i> <input
									class="form-input-non-member" type="password" name="pwd"
									placeholder="비밀번호" autocomplete="new-password" />
							</div>
							<div class="check-wrap">
								<input type="checkbox" class="save-id-input" id="checkSaveId" />
								<label for="checkSaveId" class="check-save-id"> </label> <label
									for="checkSaveId" class="save-id">아이디 저장</label>
							</div>
							<div class="btn-center">
								<button class="btn-fill-primary btn-long">로그인</button>
							</div>
						</form>
					</c:if>
					<!-- 로그인이 되어 있는 경우 -->
				</article>
			</div>
		</div>
		<div class="row" style="display:none;">
			<div class="col-sm-4">
				<article class="forgot-page">
					<a href="/" class="forgot-id"> <span>아이디를 잊으셨나요?</span></a>
					<a href="/" class="forgot-pwd"> <span>비밀번호를 잊으셨나요?</span></a>
				</article>
			</div>
		</div>
	</main>
</body>
</html>

