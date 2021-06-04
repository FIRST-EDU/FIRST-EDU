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
	<title> 출결 관리 &gt; 출결 현황 | FIRST EDU</title>
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
</head>
<body>
	<jsp:include page="../common/commonMember.jsp"/>
	
	<main class="common-background">
    <div class="container">
      <div class="row">
        <div class="col-sm-4">
          <section class="common-card calendar-card">
            <div id='calendar' class="calendar-table"></div>
          </section>
        </div>
      </div>

      <div class="row">
        <div class="col-sm-4">
          <section class="common-table-card student-attendance-table-card">
              <table class="common-table">
                <thead>
                  <tr>
                    <th scope="col">번호</th>
                    <th scope="col">강의명</th>
                    <th scope="col">학생명</th>
                    <th scope="col">출석</th>
                    <th scope="col">조퇴</th>
                    <th scope="col">결석</th>
                    <th scope="col">지각</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                    <td>1학년 초급 영어</td>
                    <td>정유미</td>
                    <td>123435</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>1학년 초급 영어</td>
                    <td>정유미</td>
                    <td>123435</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>1학년 초급 영어</td>
                    <td>정유미</td>
                    <td>123435</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>1학년 초급 영어</td>
                    <td>정유미</td>
                    <td>123435</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>1학년 초급 영어</td>
                    <td>정유미</td>
                    <td>123435</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
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
	
	<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/js/fullCalendar-attendance-list.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/js/fullCalendar.js"></script>
</body>
</html>