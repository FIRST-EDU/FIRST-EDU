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
	<title> 상담 관리 &gt; 상담 상세 | FIRST EDU</title>
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
<body>
	<jsp:include page="../common/commonMember.jsp"/>

	<main class="common-background">
      <div class="container">
        <div class="row">
          <div class="col-sm-4 col-md-6">
            <form class="common-card consult-edit-card">
              <section class="consult-input-box">
                <article class="consult-input-form">
                  <label>학생번호</label>
                  <div class="input-group">
                    <input class="form-input" type="text" value="1" readonly/>
                  </div>
                </article>

                <article class="consult-input-form">
                  <label>학생명</label>
                  <div class="input-group">
                    <input class="form-input" type="text" value="정유미" readonly/>
                  </div>
                </article>

                <article class="consult-input-form">
                  <div class="date-align">
                    <label>상담일</label>
                    <input class="attendance-date" id="#" type="date" name="attendance-date" value="2021-06-15">
                    <label for="check-date"></label>
                  </div>
                </article>

                <article class="consult-input-form">
                  <label>상담방법</label>
                  <div class="select-group">
                    <select class="form-select">
                      <option value="1">선택</option>
                      <option value="2">대면</option>
                      <option value="3">비대면</option>
                      <option value="4">부모님동행</option>
                    </select>
                    <i class="fas fa-caret-down" aria-hidden></i>
                  </div>
                </article>

                <article class="consult-input-form">
                  <label>상담내용</label>
                  <textarea name="" id=""></textarea>
                </article>


                <article class="consult-input-btn">
                  <button type="button" class="btn-fill-seconary btn-basic cancel-board-btn">취소</button>
                  <div>
                    <button type="button" class="btn-fill-seconary btn-basic delete-b-btn">삭제</button>
                    <button type="button" class="btn-fill-primary btn-basic confirm-btn">수정</button>
                  </div>
                </article>
              </section>

              <div class="modal complete-input-board-modal">
                <div class="modal-content">
                  <strong>게시물 수정하기</strong>
                  <p>게시물을 수정하시겠습니까?</p>
                    <div class="popup-2btn">
                      <button type="button" class="btn-fill-seconary btn-popup back-btn">취소</button>
                      <!-- <button type="submit" class="btn-fill-primary btn-popup complete-btn">확인</button> -->
                      <button type="button" class="btn-fill-primary btn-popup complete-btn" onclick="location.href='consult-list.html'">확인</button>
                    </div>
                </div>
              </div>
            </form>
          </div>
          <div class="col-sm-4 col-md-6">
            <section class="common-card consult-edit-img">
              <img src="${ pageContext.servletContext.contextPath }/resources/assets/png/consult-input.png" alt="">
            </section>
          </div>
        </div>
      </div>
    </main>

    <div class="modal cancel-board-modal">
      <div class="modal-content">
        <strong>게시물 수정 취소</strong>
        <p>게시물 수정을 취소하시겠습니까?</p>
          <div class="popup-2btn">
            <button type="button" class="btn-fill-seconary btn-popup back-btn back-btn">취소</button>
            <a href="consult-list.html" class="btn-fill-primary btn-popup complete-btn">확인</a>
          </div>
      </div>
    </div>

    <div class="modal delete-board-modal second-modal">
    <div class="modal-content">
      <strong>게시물 삭제하기</strong>
      <p>게시물을 삭제하시겠습니까?</p>
        <div class="popup-2btn">
          <button type="button" class="btn-fill-seconary btn-popup delete-board-btn">삭제</button>
          <button type="button" class="btn-fill-primary btn-popup back-btn">취소</button>
        </div>
    </div>
  </div>

    <script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/js/modal.js"></script>
</body>