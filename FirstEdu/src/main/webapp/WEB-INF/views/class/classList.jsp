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
	<title> 수업 관리 &gt; 강의 목록 | FIRST EDU</title>
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
            <section class="common-card class-list-form-content">
              <section class="class-form-content">
                <div class="tag-lb-dark btn-check today-consult-list">총 강의 수 : 15건</div>
                <form class="class-search-form">
                  <div class="select-group">
                    <select class="form-select">
                      <option value="1">학년</option>
                      <option value="2">과목</option>
                      <option value="3">담당자</option>
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
              <a href="class-input.html" class="btn-fill-primary btn-basic consult-input-btn">강의 입력</a>
          </section>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-4">
            <section class="common-table-card class-table-card">
                <table class="common-table class-table">
                  <thead>
                    <tr>
                      <th scope="col">번호</th>
                      <th scope="col">수강코드</th>
                      <th scope="col">담당자</th>
                      <th scope="col">학년</th>
                      <th scope="col">과목</th>
                      <th scope="col">강의실</th>
                      <th scope="col">강의명</th>
                      <th scope="col">요일</th>
                      <th scope="col">강의시작시간</th>
                      <th scope="col">강의종료시간</th>
                      <th scope="col">교재</th>
                      <th scope="col">수강료</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>1</td>
                      <td>MMFE1</td>
                      <td>정유미</td>
                      <td>고1</td>
                      <td>
                        <span class="tag-violet">
                          영어
                        </span>
                      </td>
                      <td>101</td>
                      <td>1학년중고급영어</td>
                      <td>월수금</td>
                      <td>20:00</td>
                      <td>20:50</td>
                      <td>뉴런영어1</td>
                      <td>150,000</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>MMFE1</td>
                      <td>정유미</td>
                      <td>고1</td>
                      <td>
                        <span class="tag-light-blue">
                          수학
                        </span>
                      </td>
                      <td>101</td>
                      <td>1학년중고급영어</td>
                      <td>월수금</td>
                      <td>20:00</td>
                      <td>20:50</td>
                      <td>뉴런영어1</td>
                      <td>150,000</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>MMFE1</td>
                      <td>정유미</td>
                      <td>고1</td>
                      <td>
                        <span class="tag-violet">
                          영어
                        </span>
                      </td>
                      <td>101</td>
                      <td>1학년중고급영어</td>
                      <td>월수금</td>
                      <td>20:00</td>
                      <td>20:50</td>
                      <td>뉴런영어1</td>
                      <td>150,000</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>MMFE1</td>
                      <td>정유미</td>
                      <td>고1</td>
                      <td>
                        <span class="tag-light-blue">
                          수학
                        </span>
                      </td>
                      <td>101</td>
                      <td>1학년중고급영어</td>
                      <td>월수금</td>
                      <td>20:00</td>
                      <td>20:50</td>
                      <td>뉴런영어1</td>
                      <td>150,000</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>MMFE1</td>
                      <td>정유미</td>
                      <td>고1</td>
                      <td>
                        <span class="tag-violet">
                          영어
                        </span>
                      </td>
                      <td>101</td>
                      <td>1학년중고급영어</td>
                      <td>월수금</td>
                      <td>20:00</td>
                      <td>20:50</td>
                      <td>뉴런영어1</td>
                      <td>150,000</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>MMFE1</td>
                      <td>정유미</td>
                      <td>고1</td>
                      <td>
                        <span class="tag-light-blue">
                          수학
                        </span>
                      </td>
                      <td>101</td>
                      <td>1학년중고급영어</td>
                      <td>월수금</td>
                      <td>20:00</td>
                      <td>20:50</td>
                      <td>뉴런영어1</td>
                      <td>150,000</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>MMFE1</td>
                      <td>정유미</td>
                      <td>고1</td>
                      <td>
                        <span class="tag-violet">
                          영어
                        </span>
                      </td>
                      <td>101</td>
                      <td>1학년중고급영어</td>
                      <td>월수금</td>
                      <td>20:00</td>
                      <td>20:50</td>
                      <td>뉴런영어1</td>
                      <td>150,000</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>MMFE1</td>
                      <td>정유미</td>
                      <td>고1</td>
                      <td>
                        <span class="tag-light-blue">
                          수학
                        </span>
                      </td>
                      <td>101</td>
                      <td>1학년중고급영어</td>
                      <td>월수금</td>
                      <td>20:00</td>
                      <td>20:50</td>
                      <td>뉴런영어1</td>
                      <td>150,000</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>MMFE1</td>
                      <td>정유미</td>
                      <td>고1</td>
                      <td>
                        <span class="tag-violet">
                          영어
                        </span>
                      </td>
                      <td>101</td>
                      <td>1학년중고급영어</td>
                      <td>월수금</td>
                      <td>20:00</td>
                      <td>20:50</td>
                      <td>뉴런영어1</td>
                      <td>150,000</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>MMFE1</td>
                      <td>정유미</td>
                      <td>고1</td>
                      <td>
                        <span class="tag-light-blue">
                          수학
                        </span>
                      </td>
                      <td>101</td>
                      <td>1학년중고급영어</td>
                      <td>월수금</td>
                      <td>20:00</td>
                      <td>20:50</td>
                      <td>뉴런영어1</td>
                      <td>150,000</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>MMFE1</td>
                      <td>정유미</td>
                      <td>고1</td>
                      <td>
                        <span class="tag-violet">
                          영어
                        </span>
                      </td>
                      <td>101</td>
                      <td>1학년중고급영어</td>
                      <td>월수금</td>
                      <td>20:00</td>
                      <td>20:50</td>
                      <td>뉴런영어1</td>
                      <td>150,000</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>MMFE1</td>
                      <td>정유미</td>
                      <td>고1</td>
                      <td>
                        <span class="tag-light-blue">
                          수학
                        </span>
                      </td>
                      <td>101</td>
                      <td>1학년중고급영어</td>
                      <td>월수금</td>
                      <td>20:00</td>
                      <td>20:50</td>
                      <td>뉴런영어1</td>
                      <td>150,000</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>MMFE1</td>
                      <td>정유미</td>
                      <td>고1</td>
                      <td>
                        <span class="tag-violet">
                          영어
                        </span>
                      </td>
                      <td>101</td>
                      <td>1학년중고급영어</td>
                      <td>월수금</td>
                      <td>20:00</td>
                      <td>20:50</td>
                      <td>뉴런영어1</td>
                      <td>150,000</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>MMFE1</td>
                      <td>정유미</td>
                      <td>고1</td>
                      <td>
                        <span class="tag-light-blue">
                          수학
                        </span>
                      </td>
                      <td>101</td>
                      <td>1학년중고급영어</td>
                      <td>월수금</td>
                      <td>20:00</td>
                      <td>20:50</td>
                      <td>뉴런영어1</td>
                      <td>150,000</td>
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
        </div>
      </div>
    </main>

    <div class="modal complete-modal complete-input-board-modal">
    <div class="modal-content">
      <strong>게시물 등록</strong>
      <p>게시물이 등록되었습니다.</p>
      <div class="popup-1btn">
        <button type="button" class="btn-fill-primary btn-popup complete-btn">확인</button>
      </div>
    </div>
  </div>

  <div class="modal complete-modal complete-delete-board-modal">
    <div class="modal-content">
      <strong>게시물 삭제</strong>
      <p>게시물이 삭제되었습니다.</p>
      <div class="popup-1btn">
        <button type="button" class="btn-fill-primary btn-popup complete-btn">확인</button>
      </div>
    </div>
  </div>


<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>

</body>
</html>