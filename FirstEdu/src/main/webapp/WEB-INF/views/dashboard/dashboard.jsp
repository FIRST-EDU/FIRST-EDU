<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">

  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title> 메인 > 대시보드 | FIRST EDU</title>
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
    <link rel="apple-touch-icon" sizes="180x180" href="${ pageContext.servletContext.contextPath }/apple-touch-icon.png" />
    <link rel="icon" type="image/png" sizes="32x32" href="${ pageContext.servletContext.contextPath }/favicon-32x32.png" />
    <link rel="icon" type="image/png" sizes="16x16" href="${ pageContext.servletContext.contextPath }/favicon-16x16.png" />
    <link rel="manifest" href="/site.webmanifest" />
    <link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5e72e4" />
    <meta name="msapplication-TileColor" content="#da532c" />
    <meta name="theme-color" content="#ffffff" />
    <script
      src="https://kit.fontawesome.com/11694e3acf.js"
      crossorigin="anonymous"
    ></script>
  </head>

  <body>
  
  	<jsp:include page="../common/commonMember.jsp"/>
  
	<input type="hidden" id="femaleCount" value="${ requestScope.student.femaleCount }"/>
	<input type="hidden" id="maleCount" value="${ requestScope.student.maleCount }"/>
	<c:forEach var="grade" items="${ requestScope.studentGrade }">
	  <input type="hidden" name="gradeName" value="${ grade.gradeName }"/>
	  <input type="hidden" name="gradeCount" value="${ grade.count }"/>
	</c:forEach>
	<c:forEach var="course" items="${ requestScope.studentClass }">
	  <input type="hidden" name="className" value="${ course.className }"/>
	  <input type="hidden" name="classCount" value="${ course.count }"/>
	</c:forEach>
	<c:forEach var="school" items="${ requestScope.studentSchool }">
	  <input type="hidden" name="school" value="${ school.school }"/>
	  <input type="hidden" name="schoolCount" value="${ school.count }"/>
	</c:forEach>
	<c:forEach var="sales" items="${ requestScope.sales }">
	  <input type="hidden" name="sales-month" value="${ sales.month }"/>
	  <input type="hidden" name="sales" value="${ sales.sales }"/>
	</c:forEach>
	<c:forEach var="salary" items="${ requestScope.salary }">
	  <input type="hidden" name="salary-month" value="${ salary.month }"/>
	  <input type="hidden" name="salary" value="${ salary.salary }"/>
	</c:forEach>

    <main class="common-background">
      <div class="container">
        <div class="row">
          <div class="col-sm-4 col-md-3">
            <section class="common-card dashboard-s-card">
              <article class="dasoboard-s-content">
                <h1>총 원생 수</h1>
                <strong>${ requestScope.student.totalCount }</strong>
                <div class="dasoboard-s-item">
                  <p>이번 달 현황</p>
                  <span class="material-icons" aria-hidden="true">north</span>
                  <p>${ requestScope.student.newCount }</p>
                  <span class="material-icons">south</span>
                  <p>${ requestScope.student.quitCount }</p>
                </div>
              </article>
              
              <article class="icon-right">
                <i class="fas fa-user-graduate"></i>
              </article>
              
            </section>
          </div>
          
          <div class="col-sm-4 col-md-3">
            <section class="common-card dashboard-s-card">
              <article class="dasoboard-s-content">
                <h1>총 직원 수</h1>
                <strong>${ requestScope.teacher.totalCount }</strong>
                <div class="dasoboard-s-item">
                  <p>이번 달 급여</p>
                  <p></p>
                  <p>&#8361; <fmt:formatNumber value="${ requestScope.teacher.totalSalary }" pattern="#,###"/></p>
                </div>
              </article>
              
              <article class="icon-right">
                <i class="fas fa-chalkboard-teacher"></i>
              </article>
              
            </section>
          </div>  
          
          <div class="col-sm-4 col-md-3">
            <section class="common-card dashboard-s-card">
              <article class="dasoboard-s-content">
                <h1>총 매출</h1>
                <strong><fmt:formatNumber value="${ requestScope.totalSales }" pattern="#,###"/></strong>
                <div class="dasoboard-s-item">
                  <p>이번 달 매출</p>
                  <p></p>
                  <p>&#8361; <fmt:formatNumber value="${ requestScope.sales[0].sales }" pattern="#,###"/></p>
                </div>
              </article>
              
              <article class="icon-right">
                <i class="fas fa-won-sign"></i>
              </article>

            </section>
        </div>

          <div class="col-sm-4 col-md-3">
            <section class="common-card dashboard-s-card">
              <article class="dasoboard-s-content">
                <h1>2022 수능</h1>
                <strong>D - ${ requestScope.dDay }</strong>
                <div class="dasoboard-s-item">
                  <p>2021/11/18</p>
                </div>
              </article>
              <article class="icon-right">
                <i class="fas fa-calendar"></i>
              </article>
            </section>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-4 col-md-8">
            <section class="common-card dashboard-m-card">
              <h3>월별 매출 현황</h3>
              <article class="line-chart">
                <div id="sales"></div>
              </article>
            </section>
          </div>
        
          <div class="col-sm-4 col-md-4">
            <section class="common-card dashboard-m-card">
              <h3>매출 대비 인건비</h3>
              <article class="line-chart">
                <div id="salaryRatio"></div>
              </article>
            </section>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-4 col-md-4">
            <section class="common-card dashboard-m-card graph">
              <h3>강의별 원생 수</h3>
              <article class="graph-chart">
                <div id="studentClass"></div>
              </article>
            </section>
          </div>
        
          <div class="col-sm-4 col-md-8">
            <section class="common-card dashboard-m-card">
              <h3>원생 통계</h3>
              <section class="donuts">
                <article class="donut-charts">
                  <strong>학년별 분포</strong>
                  <div id="studentGrade"></div>
                </article>
  
                <article class="donut-charts">
                  <strong>성별 분포</strong>
                  <div id="studentGender"></div>
                </article>
  
                <article class="donut-charts">
                  <strong>학교별 분포</strong>
                  <div id="studentSchool"></div>
                </article>
              </section>
            </section>
          </div>
        </div>
      </div>
    </main>


    <div class="overlay" aria-hidden="true"></div>
    

<script src="${ pageContext.servletContext.contextPath }/resources/js/myMenu.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/searchHistory.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/dashboard/chart.js"></script>
</body>
</html>
