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
	<title> 조직 관리 &gt; 직원 목록 | FIRST EDU</title>
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
          <section class="common-card teacher-list-form-content">
            <section class="teacher-form-content">
              <div class="tag-lb-dark btn-check sum-teacher-number">총 직원 수 : 6</div>
              <form class="storage-search-form">
                <div class="select-group">
                  <select class="form-select">
                    <option value="1">번호</option>
                    <option value="2">직원명</option>
                    <option value="3">직책</option>
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
              </form>
            </section>
            <a href="teacher-input.html" class="btn-fill-primary btn-basic teacher-input-btn">직원 등록</a>
          </section>
        </div>
      </div>

      <div class="row">
        <div class="col-sm-4">
          <section class="common-table-card teacher-list-table-card">
            <table class="common-table">
              <thead>
                <tr>
                  <th scope="col">번호</th>
                  <th scope="col">직원명</th>
                  <th scope="col">이메일</th>
                  <th scope="col">전화번호</th>
                  <th scope="col">권한</th>
                  <th scope="col">입사일</th>
                  <th scope="col">직책</th>
                  <th scope="col">상태</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td>전인애</td>
                  <td>jeon001@fe.co.kr</td>
                  <td>01012345678</td>
                  <td>ADMIN</td>
                  <td>2021/05/29</td>
                  <td>
                    <span class="tag-p-dark">원장</span>
                  </td>
                  <td>Y</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td>전인애</td>
                  <td>jeon001@fe.co.kr</td>
                  <td>01012345678</td>
                  <td>ADMIN</td>
                  <td>2021/05/29</td>
                  <td>
                    <span class="tag-violet">부원장</span>
                  </td>
                  <td>Y</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td>전인애</td>
                  <td>jeon001@fe.co.kr</td>
                  <td>01012345678</td>
                  <td>ADMIN</td>
                  <td>2021/05/29</td>
                  <td>
                    <span class="tag-orange">팀장</span>
                  </td>
                  <td>Y</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td>전인애</td>
                  <td>jeon001@fe.co.kr</td>
                  <td>01012345678</td>
                  <td>ADMIN</td>
                  <td>2021/05/29</td>
                  <td>
                    <span class="tag-yellow">선생님</span>
                  </td>
                  <td>Y</td>
                </tr>
                <tr>
                <tr>
                  <td>1</td>
                  <td>전인애</td>
                  <td>jeon001@fe.co.kr</td>
                  <td>01012345678</td>
                  <td>ADMIN</td>
                  <td>2021/05/29</td>
                  <td>
                    <span class="tag-yellow">선생님</span>
                  </td>
                  <td>Y</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td>전인애</td>
                  <td>jeon001@fe.co.kr</td>
                  <td>01012345678</td>
                  <td>ADMIN</td>
                  <td>2021/05/29</td>
                  <td>
                    <span class="tag-green">일반</span>
                  </td>
                  <td>Y</td>
                </tr>
              </tbody>
            </table>
          </section>
        </div>
      </div>

      <div class="row">
        <div class="col-sm-4">
          <section class="common-card">
            <article class="teacher-list-img">
              <img src="${ pageContext.servletContext.contextPath }/resources/assets/png/teacher-list.png" alt="">
            </article>
          </section>
        </div>
      </div>
    </div>
  </main>

    <div class="modal complete-modal complete-input-board-modal">
    <div class="modal-content">
      <strong>직원 등록</strong>
      <p>직원이 등록되었습니다.</p>
      <div class="popup-1btn">
        <button type="button" class="btn-fill-primary btn-popup complete-btn">확인</button>
      </div>
    </div>
  </div>


<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>

</body>
</html>