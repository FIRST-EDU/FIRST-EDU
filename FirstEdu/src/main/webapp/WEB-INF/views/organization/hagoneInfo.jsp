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
	<title> 조직 관리 &gt; 회사 정보 | FIRST EDU</title>
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
          <section class="common-table-card">
              <table class="common-table hagone-table">
                <tbody>
                  <tr>
                    <th scope="row">사이트명</th>
                    <td colspan="3">FIRST EDU</td>
                  </tr>
                  <tr>
                    <th scope="row">회사명</th>
                    <td>에듀 아카데미</td>
                    <th scope="row">대표자명</th>
                    <td>전인애</td>
                  </tr>
                  <tr>
                    <th scope="row">사업자 등록번호</th>
                    <td>924-82-28429</td>
                    <th scope="row">통신 판매 신고번호</th>
                    <td>284-49-82942</td>
                  </tr>
                  <tr>
                    <th scope="row">업체</th>
                    <td>학원</td>
                    <th scope="row">종목</th>
                    <td>영/수 학원</td>
                  </tr>
                  <tr>
                    <th scope="row">주소</th>
                    <td>서울시 서초구</td>
                    <th scope="row">전화번호</th>
                    <td>02-839-2754</td>
                  </tr>
                  <tr>
                    <th scope="row">관리자 로그인 페이지</th>
                    <td>02-825-8282</td>
                    <th scope="row">관리자 이메일</th>
                    <td>manager@firstedu.com</td>
                  </tr>
                  <tr>
                    <th scope="row">회사 이메일</th>
                    <td>edu@edu.com</td>
                    <th scope="row">회사 로고</th>
                    <td class="table-company-logo">
                      <img src="./assets/png/Basic Logo.png" alt="">
                    </td>
                  </tr>
                </tbody>
              </table>
          </section>
        </div>
      </div>

      <div class="row">
        <div class="col-sm-4">
          <section class="common-card hagone-img-card">
            <img src="${ pageContext.servletContext.contextPath }/resources/assets/png/hagone-info.png" alt="team-photo">
          </section>
        </div>
      </div>
    </div>
  </main>


<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>

</body>
</html>