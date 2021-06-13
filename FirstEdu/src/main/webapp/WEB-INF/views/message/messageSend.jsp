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
	<title> 문자 관리 &gt; 문자 전송 | FIRST EDU</title>
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
            <section class="common-card">
              <article class="storage-form-content">
                <form class="storage-search-form">
                  <div class="tag-lb-dark btn-check sum-student-number">총 학생 수 : 50</div>
                  <article class="form-flex-row">
                    <div class="select-group">
                      <select class="form-select">
                        <option value="1">전체</option>
                        <option value="2">학생명</option>
                        <option value="3">강의명</option>
                      </select>
                      <i class="fas fa-caret-down" aria-hidden></i>
                    </div>
                    <div class="input-group">
                      <span class="material-icons"> search </span>
                      <input
                        class="form-input"
                        type="search"
                        placeholder="검색어를 입력하세요."
                      />
                    </div>
                  </article>
                  <a href="message-list.html" class="btn-fill-primary btn-basic">전송 내역</a>
                </form>
              </article>
            </section>

            <section class="common-table-card consult-input-table">
              <table class="common-table">
                <thead>
                  <tr>
                    <th scope="col">번호</th>
                    <th scope="col">학생명</th>
                    <th scope="col">학교</th>
                    <th scope="col">보호자연락처</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                    <td>정유미</td>
                    <td>반포고등학교</td>
                    <td>010-1504-3140</td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>정유미</td>
                    <td>반포고등학교</td>
                    <td>010-1504-3140</td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>정유미</td>
                    <td>반포고등학교</td>
                    <td>010-1504-3140</td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>정유미</td>
                    <td>반포고등학교</td>
                    <td>010-1504-3140</td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>정유미</td>
                    <td>반포고등학교</td>
                    <td>010-1504-3140</td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>정유미</td>
                    <td>반포고등학교</td>
                    <td>010-1504-3140</td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>정유미</td>
                    <td>반포고등학교</td>
                    <td>010-1504-3140</td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>정유미</td>
                    <td>반포고등학교</td>
                    <td>010-1504-3140</td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>정유미</td>
                    <td>반포고등학교</td>
                    <td>010-1504-3140</td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>정유미</td>
                    <td>반포고등학교</td>
                    <td>010-1504-3140</td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>정유미</td>
                    <td>반포고등학교</td>
                    <td>010-1504-3140</td>
                  </tr>
                </tbody>
              </table>
              <div class="pagenation">
                <button class="page-control page-prev" type="button">
                  <span class="material-icons"> chevron_left </span>
                </button>
                <ol class="page-list">
                  <li class="page-item">
                    <a href="/">1</a>
                  </li>
                  <li class="page-item">
                    <a href="/">2</a>
                  </li>
                  <li class="page-item is-active">
                    <a href="/">3</a>
                  </li>
                  <li class="page-item">
                    <a href="/">4</a>
                  </li>
                  <li class="page-item">
                    <a href="/">5</a>
                  </li>
                </ol>
                <button class="page-control page-next" type="button">
                  <span class="material-icons"> chevron_right </span>
                </button>
              </div>
            </section>
          </div>

            <div class="col-sm-4 col-md-6">
              <form class="common-card message-card">
                <section class="message-img">
                  <img class="md-iphone sm-hidden" src="${ pageContext.servletContext.contextPath }/resources/assets/png/iphone.png" alt="">
                  <div class="input-group recipient">
                    <img class="sm-phone sm-only" src="${ pageContext.servletContext.contextPath }/resources/assets/png/mobile-phone.png" alt="">
                    <input class="form-input" value="010-2412-2345" readonly/>
                    <textarea class="mobile-text">안녕하세요. FIRST EDU 입니다.</textarea>
                    <div class="btn-center">
                      <button type="button" class="btn-fill-select btn-basic cancel-board-btn">취소</button>
                      <button type="button" class="btn-fill-primary btn-basic confirm-btn">전송</button>
                    </div>
                  </div>
                </section>
                <div class="modal complete-input-board-modal">
                  <div class="modal-content">
                    <strong>문자 전송하기</strong>
                    <p>문자를 전송하시겠습니까?</p>
                      <div class="popup-2btn">
                        <button type="button" class="btn-fill-seconary btn-popup back-btn">취소</button>
                        <!-- <button type="submit" class="btn-fill-primary btn-popup complete-btn">확인</button> -->
                        <button type="button" class="btn-fill-primary btn-popup complete-btn">확인</button>
                      </div>
                  </div>
                </div>
              </form>
            </div>
          </div>

          <div class="row">
            <div class="col-sm-4">
              <section class="common-card consult-img">
                <img src="${ pageContext.servletContext.contextPath }/resources/assets/png/message.png" alt="">
              </section>
            </div>
          </div>
        </div>
    </main>

    <div class="modal cancel-board-modal">
      <div class="modal-content">
        <strong>문자 전송 취소</strong>
        <p>문자 전송을 취소하시겠습니까?</p>
          <div class="popup-2btn">
            <button type="button" class="btn-fill-seconary btn-popup back-btn">취소</button>
            <a href="message-list.html" class="btn-fill-primary btn-popup complete-btn">확인</a>
          </div>
      </div>
    </div>


	<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/js/table.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/js/modal.js"></script>
</body>
</html>