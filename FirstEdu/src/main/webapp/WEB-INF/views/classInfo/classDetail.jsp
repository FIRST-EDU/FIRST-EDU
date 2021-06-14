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
<title>수업 관리 &gt; 강의 상세 | FIRST EDU</title>
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/style.css" />
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Material+Icons" rel="stylesheet" />
<script src="https://kit.fontawesome.com/11694e3acf.js" crossorigin="anonymous"></script>
<script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body>

	<jsp:include page="../common/commonMember.jsp" />

	<main class="common-background">
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-md-6">
					<form class="common-card class-detail-card">
						<section class="class-input-box">
							<input type="hidden" id="classNum" value="${classDetail.classNum}">
							<%-- <article class="teacher-input-form">
								<label>강의번호</label>
								<div class="input-group">
									<input type="hidden" class="form-input" value="${classDetail.classNum}" />
								</div>
							</article> --%>
							<article class="teacher-input-form">
								<label>강의코드</label>
								<div class="input-group">
									<input class="form-input" value="${classDetail.code}" />
								</div>
							</article>
							<article class="teacher-input-form">
								<label>담당선생님</label>
								<div class="input-group">
									<input class="form-input" value="${classDetail.teacherInfo.teacherName}" />
								</div>
							</article>
							<article class="teacher-input-form">
								<label>학년</label>
								<div class="input-group">
									<input class="form-input"
										value="${classDetail.grade.gradeName}" />
								</div>
							</article>
							<article class="teacher-input-form">
								<label>과목</label>
								<div class="input-group">
									<input class="form-input"
										value="${classDetail.subjectCategory.subjectName}" />
								</div>
							</article>
							<article class="teacher-input-form">
								<label>강의실</label>
								<div class="input-group">
									<input class="form-input" value="${classDetail.room}" />
								</div>
							</article>
							<article class="teacher-input-form">
								<label>강의명</label>
								<div class="input-group">
									<input class="form-input" value="${classDetail.className}" />
								</div>
							</article>
							<article class="teacher-input-form">
								<label>요일</label>
								<div class="input-group">
									<input class="form-input" value="${classDetail.day}" />
								</div>
							</article>
							<article class="teacher-input-form">
								<label>강의시작시간</label>
								<div class="input-group">
									<input class="form-input" value="${classDetail.startTime}" />
								</div>
							</article>
							<article class="teacher-input-form">
								<label>강의종료시간</label>
								<div class="input-group">
									<input class="form-input" value="${classDetail.endTime}" />
								</div>
							</article>
							<article class="teacher-input-form">
								<label>교재</label>
								<div class="input-group">
									<input class="form-input" value="${classDetail.book}" />
								</div>
							</article>
							<article class="teacher-input-form">
								<label>수강료</label>
								<div class="input-group">
									<input class="form-input" value="${classDetail.payment}" />
								</div>
							</article>
							<article class="teacher-input-btn">
								<div>
									<a class="btn-fill-seconary btn-basic" onclick="location.href='${ pageContext.servletContext.contextPath}/classInfo/classList'">목록</a>
									<a id="updateBtn" class="btn-fill-primary btn-basic confirm-btn" onclick="location.href='${ pageContext.servletContext.contextPath}/calssInfo/update'">수정하러가기</a>
								</div>
							</article>
						</section>
					</form>
				</div>	
					<div class="col-sm-4 col-md-6">
						<section class="common-card class-edit-img">
							<img
								src="${ pageContext.servletContext.contextPath }/resources/assets/png/class-input.png"
								alt="">
						</section>
					</div>
				</div>
			</div>
		<!-- container -->
   </main>

	<div class="modal delete-board-modal">
		<div class="modal-content">
			<strong>강의 삭제하기</strong>
			<p>강의를 삭제하시겠습니까?</p>
			<div class="popup-2btn">
				<button type="button"
					class="btn-fill-seconary btn-popup delete-board-btn">목록</button>
				<button id="updateBtn" type="button"
					class="btn-fill-primary btn-popup back-btn">수정하러가기</button>
			</div>
		</div>
	</div>
		<!-- 모달 -->

	<script>
		$("#updateBtn").click(
			function() {
			alert($("#classNum").val())
			const no = $("#classNum").val();
			console.log(no);
			location.href = "${pageContext.servletContext.contextPath}/classInfo/classUpdate/" + parseInt(no);
		})

		$("#deleteBtn").click(
			function() {
			alert($("#classNum").val())
			const no = $("#classNum").val();
			console.log(no);
			location.href = "${pageContext.servletContext.contextPath}/classInfo/delete/" + parseInt(no);
		})
		
	</script>

	<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/js/modal.js"></script>
</body>
</html>