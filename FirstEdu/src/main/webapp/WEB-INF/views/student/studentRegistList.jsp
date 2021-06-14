<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
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
	<title> 원생 관리 &gt; 재원생 목록 | FIRST EDU</title>
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
<body>
	<jsp:include page="../common/commonMember.jsp"/>

	<main class="common-background">
    <div class="container">
      <div class="row">
        <div class="col-sm-4">
          <section>
            <span class="btn-fill-strong btn-long">재원생</span>
            <button type="button" class="btn-fill-seconary btn-long" onclick="location.href='${ pageContext.servletContext.contextPath }/student/quit/list'">퇴원생</button>
          </section>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-4">
          <section class="common-card score-analysis-card">
            <section class="form-wrap">
              
	          <div class="tag-lb-dark btn-check sum-storage-price">총 인원 : ${ requestScope.pageInfo.totalCount }명</div>
              <article class="storage-form-content">
	              <div class="storage-search-form">
	                <div class="select-group">
	                  <select id="searchOption" class="form-select">
	                    <option value="parentsPhone">보호자 연락처</option>
	                    <option value="studentName">학생명</option>
	                    <option value="studentPhone">학생 연락처</option>
	                  </select>
	                  <i class="fas fa-caret-down" aria-hidden></i>
	                  </div>
	                  <div class="input-group">
	                    <span class="material-icons"> search </span>
	                    <input
	                      id="searchValue"
	                      class="form-input"
	                      type="text"
	                      placeholder="검색어를 입력하세요."
	                      autocomplete="new-password"
	                    />
	                  </div>
	              </div>
          	  </article>
          
              <article class="select-exam-wrap">
                <span class="exam-type">학교</span>
                <form class="select-group">
                  <select id="school" class="form-select">
                    <option value="all">전체</option>
                  	<c:forEach var="school" items="${ requestScope.schoolList }">
	                    <option value="${ school.school }">${ school.school }</option>
                    </c:forEach>
                  </select>
                  <i class="fas fa-caret-down" aria-hidden></i>
                </form>
              </article>

              <article class="select-class-wrap">
                <span class="class-name">학년</span>
                <form class="select-group">
                  <select id="gradeCode" class="form-select">
                    <option value="all">전체</option>
               		<c:forEach var="grade" items="${ requestScope.gradeList }">
	                    <option value="${ grade.code }">${ grade.name }</option>
                    </c:forEach>
                  </select>
                  <i class="fas fa-caret-down" aria-hidden></i>
                </form>
              </article>

              <article class="select-class-wrap">
                <span class="class-name">강의명</span>
                <form class="select-group">
                  <select id="classCode" class="form-select">
                    <option value="all">전체</option>
                  	<c:forEach var="classOption" items="${ requestScope.classList }">
	                    <option value="${ classOption.code }">${ classOption.name }</option>
                    </c:forEach>
                  </select>
                  <i class="fas fa-caret-down" aria-hidden></i>
                </form>
              </article>
              
              <button type="button" class="btn-fill-primary btn-basic exam-registration" onclick="location.href='${ pageContext.servletContext.contextPath }/student/regist'">
                원생 등록
              </button>

            </section>
          </section>
        </div>
      </div>

      <div class="row">
        <div class="col-sm-4">
          <!-- table -->
          <section class="common-table-card">
            <table id="studentTable" class="common-table storage-table ">
              <thead>
                <tr>
                  <th scope="col">번호</th>
                  <th scope="col">학생명</th>
                  <th scope="col">학교</th>
                  <th scope="col">학년</th>
                  <th scope="col">수강 정보</th>
                  <th scope="col">연락처</th>
                  <th scope="col">보호자 연락처</th>
                  <th scope="col">등록일</th>
                </tr>
              </thead>
              <tbody>
              	<c:forEach var="student" items="${ requestScope.studentList }">
	                <tr>
	                  <td>${ student.no }</td>
	                  <td>${ student.name }</td>
	                  <td>${ student.school }</td>
	                  <td>${ student.grade }</td>
	                  <td>
		                  <c:forEach var="classInfo" items="${ student.classList }">
		                  	<c:if test="${ classInfo.subjectNo eq '1' }">
		                  		<span class="tag-light-blue">${ classInfo.name }</span>
		                  	</c:if>
		                  	<c:if test="${ classInfo.subjectNo eq '2' }">
		                  		<span class="tag-violet">${ classInfo.name }</span>
		                  	</c:if>
		                  </c:forEach>
	                  </td>
	                  <td>${ student.studentPhone }</td>
	                  <td>${ student.parentsPhone }</td>
	                  <td>${ fn:substring(student.registrationDate, 0, 10) }</td>
	 
	                </tr>
                </c:forEach>
              </tbody>
            </table>
            
            <!-- 페이징 처리 -->
            <div class="pagenation">
              <!-- 왼쪽 버튼 -->
              <c:if test="${ requestScope.pageInfo.pageNo == 1 }">
	              <button class="page-control page-prev" type="button" disabled>
	                <span class="material-icons"> chevron_left </span>
	              </button>
              </c:if>
              <c:if test="${ requestScope.pageInfo.pageNo > 1 }">
	              <button class="page-control page-prev" type="button" onclick="searchStudent(${ requestScope.pageInfo.pageNo - 1 })">
	                <span class="material-icons"> chevron_left </span>
	              </button>
              </c:if>
              
              <!-- 페이지 숫자 -->
              <ol class="page-list">
              	<c:forEach var="p" begin="${ requestScope.pageInfo.startPage }" end="${ requestScope.pageInfo.endPage }" step="1">
              		<c:if test="${ requestScope.pageInfo.pageNo eq p }">
		                <li class="page-item is-active">
		                  <button type="button" disabled><c:out value="${ p }"/></button>
		                </li>
              		</c:if>
              		<c:if test="${ requestScope.pageInfo.pageNo ne p }">
		                <li class="page-item">
		                  <button type="button" onclick="searchStudent(this.innerText)"><c:out value="${ p }"/></button>
		                </li>
              		</c:if>
              	</c:forEach>
              </ol>
              
              <!-- 오른쪽 버튼 -->
              <c:if test="${ requestScope.pageInfo.pageNo == requestScope.pageInfo.maxPage }">
	              <button class="page-control page-next" type="button" disabled>
	                <span class="material-icons"> chevron_right </span>
	              </button>
              </c:if>
              <c:if test="${ requestScope.pageInfo.pageNo < requestScope.pageInfo.maxPage }">
	              <button class="page-control page-next" type="button" onclick="searchStudent(${ requestScope.pageInfo.pageNo + 1 })">
	                <span class="material-icons"> chevron_right </span>
	              </button>
              </c:if>
            </div>
            
          </section>
        </div>
      </div>
    </div>
  </main>
  
  <c:if test="${ not empty requestScope.messageTitle }">
	  <div class="modal complete-modal complete-input-board-modal">
	    <div class="modal-content">
	      <strong>${ requestScope.messageTitle }</strong>
	      <p>${ requestScope.messageBody }</p>
	      <div class="popup-1btn">
	        <button type="button" class="btn-fill-primary btn-popup complete-btn">확인</button>
	      </div>
	    </div>
	  </div>
  </c:if>


<div class="overlay" aria-hidden="true"></div>

<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/student/studentRegistList.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/modal.js"></script>

</body>
</html>