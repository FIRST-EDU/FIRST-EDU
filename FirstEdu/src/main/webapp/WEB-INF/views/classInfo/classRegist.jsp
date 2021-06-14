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
<link rel="apple-touch-icon" sizes="180x180"
	href="./apple-touch-icon.png" />
<link rel="shortcut icon" type="image/png" sizes="32x32"
	href="./favicon-32x32.png" />
<link rel="shortcut icon" type="image/png" sizes="16x16"
	href="./favicon-16x16.png" />
<link rel="mask-icon" href="./safari-pinned-tab.svg" color="#5e72e4" />
<title>수업 관리 &gt; 강의 등록 | FIRST EDU</title>
<link rel="stylesheet"
	href="${ pageContext.servletContext.contextPath }/resources/css/style.css" />
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Material+Icons"
	rel="stylesheet" />
<script src="https://kit.fontawesome.com/11694e3acf.js"
	crossorigin="anonymous"></script>
<script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/member.js" type="text/javascript"></script>
</head>
<body>
	<jsp:include page="../common/commonMember.jsp" />

	<main class="common-background">
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-md-6">
					<form class="common-card class-detail-card"
						action="${ pageContext.servletContext.contextPath }/classInfo/classRegist" method="post">
						<section class="class-input-box">

							<article class="teacher-input-form">
								<label>강의코드</label>
								<div class="input-group">
									<input class="form-input" type="text" name="code" />
								</div>
							</article>
							<article class="teacher-input-form">
								<label>강의실</label>
								<div class="input-group">
									<input class="form-input" name="room" />
								</div>
							</article>
							<article class="teacher-input-form">
								<label>강의명</label>
								<div class="input-group">
									<input class="form-input" type="text" name="className" />
								</div>
							</article>

							<article class="teacher-input-form">
								<label>요일</label>
								<div class="select-group">
									<select class="form-select" name="day">
										<option value="화목">화목</option>
										<option value="월수금">수목금</option>
									</select> <i class="fas fa-caret-down" aria-hidden></i>
								</div>
							</article>

							<article class="teacher-input-form">
								<label>강의시작시간</label>
								<div class="select-group">
									<select class="form-select" name="startTime">
										<option value="2">20:00</option>
										<option value="3">21:00</option>
										<option value="4">22:00</option>
									</select> <i class="fas fa-caret-down" aria-hidden></i>
								</div>
							</article>

							<article class="teacher-input-form">
								<label>강의종료시간</label>
								<div class="select-group">
									<select class="form-select" name="endTime">
										<option value="2">20:50</option>
										<option value="3">21:50</option>
										<option value="4">22:50</option>
									</select> <i class="fas fa-caret-down" aria-hidden></i>
								</div>
							</article>
							<article class="teacher-input-form">
								<label>교재</label>
								<div class="input-group">
									<input class="form-input" type="text" name="book" />
								</div>
							</article>

							<article class="teacher-input-form">
								<label>수강료</label>
								<div class="input-group">
									<input class="form-input" type="text" name="payment" />
								</div>
							</article>

							<article class="teacher-input-form">
								<label>과목</label>
								<div class="select-group">
									<select class="form-select" name="subjectNo" id="subjectNo">
										<option value="1">영어</option>
										<option value="2">수학</option>
									</select> <i class="fas fa-caret-down" aria-hidden></i>
								</div>
							</article>

							<article class="teacher-input-form">
								<label>학년</label>
								<div class="select-group">
									<select class="form-select" name="gradeCode" id="gradeCode">
										<option value="H1">H1</option>
										<option value="H2">H2</option>
										<option value="H3">H3</option>
									</select> <i class="fas fa-caret-down" aria-hidden></i>
								</div>
							</article>

							<article class="teacher-input-form">
								<label>담당자</label>
								<div class="select-group">
									<select class="form-select" name="no" id="name">
										<option value="1">강호돈</option>
										<option value="2">이수군</option>
										<option value="3">은지은</option>
										<option value="4">안재은</option>
										<option value="5">송민훈</option>
										<option value="6">윤피오</option>
									</select> <i class="fas fa-caret-down" aria-hidden></i>
								</div>
							</article>

							<article class="teacher-input-btn">
								<button type="reset"
									class="btn-fill-seconary btn-basic cancel-board-btn">취소</button>
								<button type="submit"
									class="btn-fill-primary btn-basic confirm-btn">등록</button>
							</article>

						</section>
						<div class="modal complete-input-board-modal">
							<div class="modal-content">
								<strong>강의 등록하기</strong>
								<p>강의를 등록하시겠습니까?</p>
								<div class="popup-2btn">
									<button type="button"
										class="btn-fill-seconary btn-popup back-btn">취소</button>
									<!-- <button type="submit" class="btn-fill-primary btn-popup complete-btn">확인</button> -->
									<button type="submit"
										class="btn-fill-primary btn-popup confirm-btn">확인</button>
								</div>
							</div>
						</div>
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
	</main>

	<div class="modal cancel-board-modal">
		<div class="modal-content">
			<strong>강의 등록 취소</strong>
			<p>강의 등록을 취소하시겠습니까?</p>
			<div class="popup-2btn">
				<button type="button"
					class="btn-fill-seconary btn-popup back-btn back-btn">취소</button>
				<a href="teacher-list.html"
					class="btn-fill-primary btn-popup complete-btn">확인</a>
			</div>
		</div>
	</div>


	<script
		src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/js/modal.js"></script>


</body>
</html>