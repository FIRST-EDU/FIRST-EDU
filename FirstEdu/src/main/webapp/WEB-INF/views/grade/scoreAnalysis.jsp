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
	<title> 성적 관리 &gt; 시험 관리 | FIRST EDU</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/style.css" />
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/fullCalendar.css" />
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
<body>
	<jsp:include page="../common/commonMember.jsp"/>

	<main class="common-background">
    <div class="container">
      <div class="row">
        <div class="col-sm-4">
          <section class="common-card score-analysis-card">
            <section class="form-wrap">
              <form class="checkbox-wrap">
                <input
                type="checkbox"
                id="checkHagwonExam"
                />
                <label for="checkHagwonExam" class="check-hagwon-exam">
                  <i class="fas fa-check"></i>
                </label>
                <label for="checkHagwonExam" class="hagwon-exam">학원 시험</label>

                <input
                  type="checkbox"
                  id="checkSchoolExam"
                />
                <label for="checkSchoolExam" class="check-school-exam">
                  <i class="fas fa-check"></i>
                </label>
                <label for="checkSchoolExam" class="school-exam">학교 내신</label>

                <input
                  type="checkbox"
                  id="checkMockExam"
                />
                <label for="checkMockExam" class="check-mock-exam">
                  <i class="fas fa-check"></i>
                </label>
                <label for="checkMockExam" class="mock-exam">모의고사</label>
              </form>

              <hr>

              <article class="select-exam-wrap">
                <span class="exam-type">시험 종류</span>
                <form class="select-group">
                  <select class="form-select">
                    <option value="1">월말 평가</option>
                    <option value="2">주간 평가</option>
                  </select>
                  <i class="fas fa-caret-down" aria-hidden></i>
                </form>
                <button type="button" class="btn-fill-primary btn-basic select-btn">관리</button>
              </article>

              <article class="select-class-wrap">
                <span class="class-name">강의명</span>
                <form class="select-group">
                  <select class="form-select">
                    <option value="1">수학</option>
                    <option value="2">영어</option>
                  </select>
                  <i class="fas fa-caret-down" aria-hidden></i>
                </form>
              </article>

              <article class="search-exam-wrap">
                <span class="exam-name">시험명</span>
                <form class="input-group">
                  <span class="material-icons"> search </span>
                  <input
                    class="form-input"
                    type="search"
                    placeholder="검색어를 입력하세요."
                  />
                </form>
              </article>

              <button type="button" class="btn-fill-primary btn-basic exam-registration">
                시험 등록
              </button>

              <article class="calendar-list-select-btn">
                <button type="button" class="btn-fill-seconary btn-basic calendar-btn is-active">
                  달력
                </button>
                <button type="button" class="btn-fill-seconary btn-basic list-btn">
                  목록
                </button>
              </article>

            </section>
          </section>
        </div>
      </div>

      <div class="row">
        <div class="col-sm-4">
          <!-- calendar -->
          <section class="common-card calendar-card">
            <div id='calendar' class="calendar-table"></div>
          </section>
          <!-- table -->
          <section class="common-table-card score-table-card">
            <table class="common-table storage-table ">
              <thead>
                <tr>
                  <th scope="col">번호</th>
                  <th scope="col">시험 종류</th>
                  <th scope="col">시험명</th>
                  <th scope="col">시험 대상</th>
                  <th scope="col">시작 일시</th>
                  <th scope="col">종료 일시</th>
                  <th scope="col">비고</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td class="custom-tag">
                      <i class="fas fa-circle" aria-hidden></i>
                      모의고사
                  </td>
                  <td>고1 3월 모의고사</td>
                  <td>고1</td>
                  <td>2021/05/09</td>
                  <td>2021/05/10</td>
                  <td>경기도 교육청</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td class="custom-tag">
                      <i class="fas fa-circle" aria-hidden></i>
                      모의고사
                  </td>
                  <td>고1 3월 모의고사</td>
                  <td>고1</td>
                  <td>2021/05/09</td>
                  <td>2021/05/10</td>
                  <td>경기도 교육청</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td class="custom-tag">
                      <i class="fas fa-circle" aria-hidden></i>
                      모의고사
                  </td>
                  <td>고1 3월 모의고사</td>
                  <td>고1</td>
                  <td>2021/05/09</td>
                  <td>2021/05/10</td>
                  <td>경기도 교육청</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td class="custom-tag">
                      <i class="fas fa-circle" aria-hidden></i>
                      모의고사
                  </td>
                  <td>고1 3월 모의고사</td>
                  <td>고1</td>
                  <td>2021/05/09</td>
                  <td>2021/05/10</td>
                  <td>경기도 교육청</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td class="custom-tag">
                      <i class="fas fa-circle" aria-hidden></i>
                      모의고사
                  </td>
                  <td>고1 3월 모의고사</td>
                  <td>고1</td>
                  <td>2021/05/09</td>
                  <td>2021/05/10</td>
                  <td>경기도 교육청</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td class="custom-tag">
                      <i class="fas fa-circle" aria-hidden></i>
                      모의고사
                  </td>
                  <td>고1 3월 모의고사</td>
                  <td>고1</td>
                  <td>2021/05/09</td>
                  <td>2021/05/10</td>
                  <td>경기도 교육청</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td class="custom-tag">
                      <i class="fas fa-circle" aria-hidden></i>
                      모의고사
                  </td>
                  <td>고1 3월 모의고사</td>
                  <td>고1</td>
                  <td>2021/05/09</td>
                  <td>2021/05/10</td>
                  <td>경기도 교육청</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td class="custom-tag">
                      <i class="fas fa-circle" aria-hidden></i>
                      모의고사
                  </td>
                  <td>고1 3월 모의고사</td>
                  <td>고1</td>
                  <td>2021/05/09</td>
                  <td>2021/05/10</td>
                  <td>경기도 교육청</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td class="custom-tag">
                      <i class="fas fa-circle" aria-hidden></i>
                      모의고사
                  </td>
                  <td>고1 3월 모의고사</td>
                  <td>고1</td>
                  <td>2021/05/09</td>
                  <td>2021/05/10</td>
                  <td>경기도 교육청</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td class="custom-tag">
                      <i class="fas fa-circle" aria-hidden></i>
                      모의고사
                  </td>
                  <td>고1 3월 모의고사</td>
                  <td>고1</td>
                  <td>2021/05/09</td>
                  <td>2021/05/10</td>
                  <td>경기도 교육청</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td class="custom-tag">
                      <i class="fas fa-circle" aria-hidden></i>
                      모의고사
                  </td>
                  <td>고1 3월 모의고사</td>
                  <td>고1</td>
                  <td>2021/05/09</td>
                  <td>2021/05/10</td>
                  <td>경기도 교육청</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td class="custom-tag">
                      <i class="fas fa-circle" aria-hidden></i>
                      모의고사
                  </td>
                  <td>고1 3월 모의고사</td>
                  <td>고1</td>
                  <td>2021/05/09</td>
                  <td>2021/05/10</td>
                  <td>경기도 교육청</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td class="custom-tag">
                      <i class="fas fa-circle" aria-hidden></i>
                      모의고사
                  </td>
                  <td>고1 3월 모의고사</td>
                  <td>고1</td>
                  <td>2021/05/09</td>
                  <td>2021/05/10</td>
                  <td>경기도 교육청</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td class="custom-tag">
                      <i class="fas fa-circle" aria-hidden></i>
                      모의고사
                  </td>
                  <td>고1 3월 모의고사</td>
                  <td>고1</td>
                  <td>2021/05/09</td>
                  <td>2021/05/10</td>
                  <td>경기도 교육청</td>
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


<div class="overlay" aria-hidden="true"></div>

<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/fullCalendar.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/fullCalendar-scoreAnalysis.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/scoreAnalysis.js"></script>


</body>
</html>