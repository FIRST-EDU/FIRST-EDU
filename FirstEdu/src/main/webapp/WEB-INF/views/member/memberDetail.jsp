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

	<input type="hidden" id="no" value="${memberDetail.no}">
	<jsp:include page="../common/commonMember.jsp" />

	<main class="common-background">
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-md-6">
					<form class="common-card teacher-detail-card">
						<section class="common-table-card consult-table-card">
							<article class="teacher-input-form">
								<label>아이디</label>
								<div class="input-group">
									<input class="form-input" value="${memberDetail.no}" readonly />
								</div>
							</article>
							<article class="teacher-input-form" id="classListArea">
								<label>아이디</label>
								<div class="input-group">
									<input class="form-input" value="${memberDetail.id}" readonly />
								</div>
							</article>
							<article class="teacher-input-form">
								<label>직급코드</label>
								<div class="input-group">
									<input class="form-input" value="${memberDetail.jobCode}" readonly />
								</div>
							</article>

							<article class="teacher-input-form">
								<label>이름</label>
								<div class="input-group">
									<input class="form-input" value="${memberDetail.name}" readonly/>
								</div>
							</article>

							<article class="teacher-input-form">
								<label>이메일</label>
								<div class="input-group">
									<input class="form-input" type="email" value="${memberDetail.email}" readonly/>
								</div>
							</article>

							<article class="teacher-input-form">
								<label>휴대전화</label>
								<div class="input-group">
									<input class="form-input" value="${memberDetail.phone}" readonly/>
								</div>
							</article>

							<article class="teacher-input-form">
								<label>주소</label>
								<div class="input-group">
									<input class="form-input" type="text"
										value="${memberDetail.address}" />
								</div>
							</article>

							<article class="teacher-input-form">
								<div class="date-align">
									<label>입사일</label>
									<div class="input-group">
										<input class="form-input" value="${memberDetail.hireDate}" />
									</div>
								</div>
							</article>

							<article class="teacher-input-form">
								<div class="date-align">
									<label>근무여부</label>
									<div class="input-group">
										<input class="form-input" value="${memberDetail.status}" />
									</div>
								</div>
							</article>
							<article class="teacher-input-btn">
								<a href="teacher-list.html" class="btn-fill-seconary btn-basic">목록</a>
								<div>
									<button type="button" class="btn-fill-seconary btn-basic delete-b-btn">삭제</button>
									<a id="updateBtn" class="btn-fill-primary btn-basic confirm-btn" onclick="location.href='${ pageContext.servletContext.contextPath}/member/update'">수정</a>
								</div>
							</article>
						</section>
					</form>
				</div>
				<div class="col-sm-4 col-md-6">
					<section class="common-card teacher-edit-img">
						<img
							src="${ pageContext.servletContext.contextPath }/resources/assets/png/teacher-list.png"
							alt="">
					</section>
				</div>
			</div>
		</div>
		<!-- container -->
	</main>

	<div class="modal delete-board-modal">
		<div class="modal-content">
			<strong>직원 삭제하기</strong>
			<p>직원을 삭제하시겠습니까?</p>
			<div class="popup-2btn">
				<button type="button"
					class="btn-fill-seconary btn-popup delete-board-btn">삭제</button>
				<button type="button" class="btn-fill-primary btn-popup back-btn">취소</button>
			</div>
		</div>
	</div>

	<script>
		$("#updateBtn").click(function() {
			alert($("#no").val())
			const no = $("#no").val();
			console.log(no);
			location.href = "${pageContext.servletContext.contextPath}/member/update/"+ parseInt(no);
		})
	</script>

	<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/js/teacherInput.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/js/modal.js"></script>
</body>
</html>