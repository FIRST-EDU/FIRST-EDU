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
	<title> 원생 관리 &gt; 원생 수정 | FIRST EDU</title>
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
      <div class="col-sm-4">
        <article class="student-btn-align">
          <a href="student-list.html" class="btn-fill-select btn-basic">목록</a>
          <div class="edit-delete-align">
            <button type="button" class="btn-fill-select btn-basic delete-b-btn">삭제</button>
            <a href="student-edit.html" class="btn-fill-strong btn-basic">수정</a>
          </div>
        </article>
        <section class="common-table-card">
          <table class="common-table student-detail-table">
            <tbody>
              <tr>
                <th scope="row">번호</th>
                    <td>1</td>
                    <th scope="row">보호자성함</th>
                    <td>홍시궁</td>
                  </tr>
                  <tr>
                    <th scope="row">학생명</th>
                    <td>유고딩</td>
                    <th scope="row">보호자연락처</th>
                    <td>010-1234-5678</td>
                  </tr>
                  <tr>
                    <th scope="row">학교</th>
                      <td>양재고등학교</td>
                    <th scope="row">생년월일</th>
                    <td>1995-12-24</td>
                  </tr>
                  <tr>
                    <th scope="row">연락처</th>
                    <td>010-4320-5394</td>
                    <th scope="row">주소</th>
                    <td>서울시 서초구</td>
                  </tr>
                  <tr>
                    <th scope="row">수강과목</th>
                    <td>수학</td>
                    <th scope="row">등록일</th>
                    <td>21-06-13</td>
                  </tr>
                </tbody>
              </table>
            </section>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-4">
            <section class="common-card student-img">
              <img src="${ pageContext.servletContext.contextPath }/resources/assets/png/student.png" alt="">
            </section>
          </div>
        </div>
      </div>
</main>

   <div class="modal delete-board-modal">
    <div class="modal-content">
      <strong>원생 삭제하기</strong>
      <p>원생을 삭제하시겠습니까?</p>
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
</html>