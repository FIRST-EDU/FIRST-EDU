<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                checked
                />
                <label for="checkHagwonExam" class="check-hagwon-exam">
                  <i class="fas fa-check"></i>
                </label>
                <label for="checkHagwonExam" class="hagwon-exam">학원 시험</label>

                <input
                  type="checkbox"
                  id="checkSchoolExam"
                  checked
                />
                <label for="checkSchoolExam" class="check-school-exam">
                  <i class="fas fa-check"></i>
                </label>
                <label for="checkSchoolExam" class="school-exam">학교 내신</label>

                <input
                  type="checkbox"
                  id="checkMockExam"
                  checked
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
                  <select id="category" name="category" class="form-select">
                  	<option value="0">전체</option>
                  	<c:forEach var="category" items="${ requestScope.examCategoryList }">
                  		<c:if test="${ category.refCategory ne null }">
	                    	<option value="${ category.no }">${ category.name }</option>
	                    </c:if>
                    </c:forEach>
                  </select>
                  <i class="fas fa-caret-down" aria-hidden></i>
                </form>
                <button id="categoryManagementBtn" type="button" class="btn-fill-primary btn-basic select-btn">관리</button>
              </article>

              <article class="select-class-wrap">
                <span class="class-name">강의명</span>
                <form class="select-group">
                  <select id="class" name="class" class="form-select">
                    <option value="null">전체</option>
                  	<c:forEach var="classOption" items="${ requestScope.classList }">
	                    <option value="${ classOption.classCode }">${ classOption.className }</option>
                    </c:forEach>
                  </select>
                  <i class="fas fa-caret-down" aria-hidden></i>
                </form>
              </article>

              <article class="search-exam-wrap">
                <span class="exam-name">시험명</span>
                <div class="input-group">
                  <span class="material-icons"> search </span>
                  <input
                  	id="examName"
                    class="form-input"
                    type="text"
                    placeholder="검색어를 입력하세요."
                  />
                </div>
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
	      <c:forEach var="exam" items="${ requestScope.examList }" varStatus="status">
	        <input type="hidden" name="no-list" value="${ exam.examNo }"/>
	        <input type="hidden" name="title-list" value="${ exam.examName }"/>
		    <input type="hidden" name="start-list" value="${ exam.startDate }"/>
	  	    <input type="hidden" name="end-list" value="${ exam.endDate }"/>
			<input type="hidden" name="color-list" value="${ exam.color.codeHex }"/>
		  </c:forEach>
          <!-- calendar -->
          <section class="common-card calendar-card">
            <div id='calendar' class="calendar-table"></div>
          </section>
          <!-- table -->
          <section class="common-table-card score-table-card">
            <table id="examTable" class="common-table storage-table ">
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
              
              </tbody>
            </table>
            
            <!-- 페이징 처리 -->
            <div class="pagenation">

            </div>
          </section>
        </div>
      </div>
    </div>
  </main>


<div class="overlay" aria-hidden="true"></div>

<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/common/fullCalendar/fullCalendar.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/grade/examCalendar.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/grade/examList.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/grade/examManagement.js"></script>


</body>
</html>