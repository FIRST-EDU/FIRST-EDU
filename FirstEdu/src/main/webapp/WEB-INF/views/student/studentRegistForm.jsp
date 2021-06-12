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
    <link rel="shortcut icon" type="image/png" sizes="32x32" href="${ pageContext.servletContext.contextPath }/favicon-32x32.png" />
    <link rel="shortcut icon" type="image/png" sizes="16x16" href="${ pageContext.servletContext.contextPath }/favicon-16x16.png" />
    <link rel="mask-icon" href="./safari-pinned-tab.svg" color="#5e72e4" />
	<title> 원생 관리 &gt; 원생 등록 | FIRST EDU</title>
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
            <form action="${ pageContext.servletContext.contextPath }/student/regist" method="post" class="common-card teacher-input-card">
              <section class="teacher-input-box">
                <article class="teacher-input-form">
                  <label class="essential">* 학생명</label>
                  <div class="input-group">
                    <input id="studentName" name="studentName" class="form-input" type="text" required/>
                  </div>
                </article>
                
                <article class="teacher-input-form">
                  <label class="essential">* 학교</label>
                  <div class="input-group">
                    <input id="school" name="school" class="form-input" type="text" required/>
                  </div>
                </article>

                <article class="teacher-input-form">
                  <label class="essential">* 학년</label>
                  <div class="select-group">
                  <select id="gradeCode" name="gradeCode" class="form-select" required>
                    <option>선택</option>
                    <option value="H1">고1</option>
                    <option value="H2">고2</option>
                    <option value="H3">고3</option>
                  </select>
                  <i class="fas fa-caret-down" aria-hidden></i>
                  </div>
                </article>

                <article class="teacher-input-form">
                  <label class="essential">* 연락처</label>
                  <div class="input-group">
                    <input id="studentPhone" name="studentPhone" class="form-input" type="text" required/>
                  </div>
                </article>

                <article class="teacher-input-form">
                  <label class="essential">* 보호자 성함</label>
                  <div class="input-group">
                    <input id="parentsName" name="parentsName" class="form-input" type="text" required/>
                  </div>
                </article>

                <article class="teacher-input-form">
                  <label class="essential">* 보호자 연락처</label>
                  <div class="input-group">
                    <input id="parentsPhone" name="parentsPhone" class="form-input" type="text" required/>
                  </div>
                </article>

                <article class="teacher-input-form">
                  <label>성별</label>
                  <div class="checkbox-wrap">
                      <input
                      type="radio"
                      id="female"
                      name="gender"
                      value="1"
                      />
                      <label for="female" class="check-discount check-female">
                        <i class="fas fa-check"></i>
                      </label>
                      <label for="female" class="discount check-female">여자</label>

                      <input
                        type="radio"
                        id="male"
                        name="gender"
                        value="2"
                      />
                      <label for="male" class="check-discount check-male">
                        <i class="fas fa-check"></i>
                      </label>
                      <label for="male" class="discount chack-male">남자</label>
                    </div>
                </article>

                <article class="teacher-input-form">
                  <div class="date-align">
                    <label>생년월일</label>
                    <input class="attendance-date" id="birth" type="date" name="birth">
                    <label for="check-date"></label>
                  </div>
                </article>

                <article class="teacher-input-form">
                  <label>주소</label>
                  
                  <div class="input-group">
                    <input id="basicAddress" name="basicAddress" class="form-input" type="text" readonly/>
                  </div>
                  <button type="button" class="btn-outlined-primary btn-basic" onclick="searchAddress();">검색</button>
                </article>

                <article class="teacher-input-form">
                  <label>상세주소</label>
                  <div class="input-group">
                    <input id="detailAddress" name="detailAddress" class="form-input" type="text"/>
                  </div>
                </article>

                <article class="teacher-input-form">
                  <div class="date-align">
                    <label>등록일</label>
                    <input class="attendance-date" id="registrationDate" type="date" name="registrationDate">
                    <label for="check-date"></label>
                  </div>
                </article>

                <article class="teacher-input-btn">
                  <button type="button" class="btn-fill-seconary btn-basic cancel-board-btn">취소</button>
                  <button type="button" class="btn-fill-primary btn-basic confirm-btn">등록</button>
                </article>
              </section>

              <div class="modal complete-input-board-modal">
                <div class="modal-content">
                  <strong>원생 등록하기</strong>
                  <p>원생을 등록하시겠습니까?</p>
                    <div class="popup-2btn">
                      <button type="button" class="btn-fill-seconary btn-popup back-btn">취소</button>
                      <button type="submit" class="btn-fill-primary btn-popup complete-btn">확인</button>
                    </div>
                </div>
              </div>
            </form>
          </div>
          <div class="col-sm-4 col-md-6">
            <section class="common-card teacher-edit-img">
              <img src="${ pageContext.servletContext.contextPath }/resources/assets/png/teacher-list.png" alt="">
            </section>
          </div>
        </div>
      </div>
    </main>

    <div class="modal cancel-board-modal">
      <div class="modal-content">
        <strong>원생 등록 취소</strong>
        <p>원생 등록을 취소하시겠습니까?</p>
          <div class="popup-2btn">
            <button type="button" class="btn-fill-seconary btn-popup back-btn back-btn">취소</button>
            <a href="${ pageContext.servletContext.contextPath }/student/regist/list" class="btn-fill-primary btn-popup complete-btn">확인</a>
          </div>
      </div>
    </div>

<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/teacherInput.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/student/studentRegistForm.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/modal.js"></script>

</body>
</html>