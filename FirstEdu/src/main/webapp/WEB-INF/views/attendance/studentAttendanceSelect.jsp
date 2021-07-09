<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script>
function submitForm() {
    document.getElementById("envselection").submit();
}
</script>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="msapplication-TileColor" content="#da532c" />
    <meta name="theme-color" content="#ffffff" />
    <link rel="apple-touch-icon" sizes="180x180" href="./apple-touch-icon.png" />
    <link rel="shortcut icon" type="image/png" sizes="32x32" href="./favicon-32x32.png" />
    <link rel="shortcut icon" type="image/png" sizes="16x16" href="./favicon-16x16.png" />
    <link rel="mask-icon" href="./safari-pinned-tab.svg" color="#5e72e4" />
	<title> 출결 관리 &gt; 출결 입력 | FIRST EDU</title>
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

	<main class="common-background attendance">

    <form class="attendance-form" id="envselection" action="${pageContext.request.contextPath}/attendance/studentAttendanceSelect" method="get">
      
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <section class="common-card attendance-class-card">
              <h1 class="visually-hidden">날짜 및 강의 선택</h1>
              <article class="date-align">
                <input class="attendance-date" id="check-date" type="date" name="attendanceTime" value="2021-06-22">
                <label for="check-date"></label>
              </article>
              <article class="class-btn">
				<input type="radio" name="className" id="classBtn" value="1학년초급영어" onclick="submitForm()" >
                <label for="classBtn" class="btn-fill-active btn-check btn-setting" onclick="setButton(this)">1학년 초급 수학</label>
				<input type="radio" name="className" id="classBtn" value="2학년초급영어" onclick="submitForm()" >
                <label for="classBtn" class="btn-fill-active btn-check btn-setting" onclick="setButton(this)">2학년 초급 수학</label>
				<input type="radio" name="className" id="classBtn" value="3학년초급영어" onclick="submitForm()" >
                <label for="classBtn" class="btn-fill-active btn-check btn-setting" onclick="setButton(this)">3학년 초급 수학</label>
				<input type="radio" name="className" id="classBtn" value="1학년중고급영어" onclick="submitForm()" >
                <label for="classBtn" class="btn-fill-active btn-check btn-setting" onclick="setButton(this)">1학년 중고급 영어</label>
				<input type="radio" name="className" id="classBtn" value="2학년중고급영어" onclick="submitForm()" >
                <label for="classBtn" class="btn-fill-active btn-check btn-setting" onclick="setButton(this)">2학년 중고급 영어</label>
				<input type="radio" name="className" id="classBtn" value="3학년중고급영어" onclick="submitForm()" >
                <label for="classBtn" class="btn-fill-active btn-check btn-setting" onclick="setButton(this)">3학년 중고급 영어</label>
				<input type="radio" name="className" id="classBtn" value="수학 상,하" onclick="submitForm()" >
                <label for="classBtn" class="btn-fill-active btn-check btn-setting" onclick="setButton(this)">수학 상,하</label>
				<input type="radio" name="className" id="classBtn" value="수학1" onclick="submitForm()" >
                <label for="classBtn" class="btn-fill-active btn-check btn-setting" onclick="setButton(this)">수학1</label>
				<input type="radio" name="className" id="classBtn" value="수학2" onclick="submitForm()" >
                <label for="classBtn" class="btn-fill-active btn-check btn-setting" onclick="setButton(this)">수학2</label>
				<input type="radio" name="className" id="classBtn" value="미적분" onclick="submitForm()" >
                <label for="classBtn" class="btn-fill-active btn-check btn-setting" onclick="setButton(this)">미적분</label>
				<input type="radio" name="className" id="classBtn" value="기하" onclick="submitForm()" >
                <label for="classBtn" class="btn-fill-active btn-check btn-setting" onclick="setButton(this)">기하</label>
				<input type="radio" name="className" id="classBtn" value="학률과통계" onclick="submitForm()" >
                <label for="classBtn" class="btn-fill-active btn-check btn-setting" onclick="setButton(this)">학률과통계</label>
              </article>
            </section>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-4 col-md-9">
            <section class="common-card attendance-number-card">
              <article class="attendance-number-content">
                <h1 class="visually-hidden">출결 인원</h1>
               <c:forEach var="cateogry" items="${cateogryList}">
                <div class="attendance-number-type">
                  <p>출석</p>
                <c:out value="${ cateogry.chulsuck }"></c:out>
                </div>
                <hr class="borderline">
                <div class="attendance-number-type">
                  <p>조퇴</p>
                <c:out value="${ cateogry.jotae }"></c:out>
                </div>
                <hr class="borderline">
                <div class="attendance-number-type">
                  <p>결석</p>
				<c:out value="${ cateogry.kyulsuck }"></c:out>
                </div>
                <hr class="borderline">
                <div class="attendance-number-type">
                  <p>지각</p>
                <c:out value="${ cateogry.jigack }"></c:out>
                </div>
              </c:forEach>
              
              </article>
            </section>
          </div>

          <div class="col-sm-4 col-md-3">
            <article class="common-card attendance-check-card">
              <input type="button" onclick="location.href='${ pageContext.servletContext.contextPath }/attendance/insertStudnet'" class="btn-fill-light-blue btn-long btn-margin" value="수정">
            </article>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-4">
            <article class="common-table-card student-attendance-input-table-card">
                <table class="common-table">
                  <thead>
                    <tr>
                      <th scope="col">NO</th>
                      <th scope="col">학생명</th>
                      <th scope="col">출결사항</th>
                      <th scope="col">비고</th>
                    </tr>
                  </thead>
                  <tbody>
                  	<c:forEach var="student" items="${studentList}">
                    <tr>
                      <td><c:out value="${ student.no }"></c:out></td>
                    
                      <td><c:out value="${ student.studentName }"></c:out></td>
                      
                      <td>
						<c:if test="${ student.attendanceList[0].category.categoryNo eq '1'}">
						<input type="checkbox" name="categoryNo" id="dis" value="1" checked>                        
                        <label class="btn-fill-blue btn-check btn-size">출석</label>
						</c:if>
						  
                        <c:if test="${ student.attendanceList[0].category.categoryNo eq '2'}">
						<input type="checkbox" name="categoryNo" id="dis" value="2" checked>
                        <label class="btn-fill-red btn-check btn-size">결석</label>
						</c:if>                        
                      

						<c:if test="${ student.attendanceList[1].category.categoryNo eq '3'}">
                        <input type="checkbox" name="categoryNo" id="dis" value="3" checked>
                        <label class="btn-fill-orange btn-check btn-size">지각</label>
                        </c:if>
                        

                        <c:if test="${ student.attendanceList[1].category.categoryNo eq '4'}">
						<input type="checkbox" name="categoryNo" id="dis" value="4" checked>
						<label class="btn-fill-viole btn-check btn-size">조퇴</label>
						</c:if>
					
                      </td>
                      <td>
                          <input type="text" name="memo" id="memo" value="${ student.attendanceList[1].memo }" readonly>
                      </td>
                    </tr>
                    </c:forEach>
                  </tbody>
                </table>
              </article>
            </div>
        </div>
      </div>
    </form>
  </main>

  <script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
  <script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
  <script src="${ pageContext.servletContext.contextPath }/resources/js/front-studentAttendanceInput.js"></script>
  </body>
</html>

