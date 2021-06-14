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
	<title> 근태 관리 &gt; 근태 입력 | FIRST EDU</title>
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

  <main class="common-background attendance attendance-list">
    <div class="container">
      <div class="row">
        <div class="col-sm-4 col-md-6">
          <section class="common-card attendance-class-card attendance-montly-card">
            <h1 class="visually-hidden">날짜 선택 및 월별 출근 시간</h1>
            <form class="date-align" action="#" method="POST">
              <label for="check-date"></label>
              <input class="attendanceTime" id="#" type="date" name="attendance-date" value="2021-06-15">
            </form>
            <article class="attendance-monthly-date-time">
              <div class="tag-lb-dark btn-check monthly-sum-tag">
                월 총 합계 &ratio; 240시간
              </div>
            </article>
          </section>
        </div>

    <div class="col-sm-4 col-md-6">
          <section class="common-card attendance-number-card teacher-attendance-number-card">
            <article class="attendance-number-content">
              <h1 class="visually-hidden">나의 출근 현황</h1>
              <div class="attendance-number-type">
                <p>출근</p>
                <strong>0</strong>
              </div>
              <hr class="borderline">
              <div class="attendance-number-type">
                <p>조퇴</p>
                <strong>0</strong>
              </div>
              <hr class="borderline">
              <div class="attendance-number-type">
                <p>결근</p>
                <strong>0</strong>
              </div>
              <hr class="borderline">
              <div class="attendance-number-type">
                <p>지각</p>
                <strong>0</strong>
              </div>
            </article>
          </section>
        </div>
      </div> 

      <div class="row">
        <div class="col-sm-4">
          <form class="common-card teacher-attendance-check-card" name="myForm">
            <h1 class="teacher-attendance-title">근태 입력</h1>
            <article class="teacher-attendance-check-btn">
              <input type="radio" id="workStart" name="attendance" value="attendanceTime" onclick='get1(event)'></input>
              <label for="workStart" class="btn-circle btn-fill-seconary btn-circle-size">출근</label>
              <div class="teacher-attendance-time-info">
                <p>오늘 출근한 시간</p>
                <div id='result1'></div>
              </div>
            </article>
            <hr class="borderline">
            <article class="teacher-attendance-check-btn">
              <input type="button" id="workEnd" name="attendance" value="checkOutTime" onclick='get2()'></input>
              <input type="hidden" id="workEnd2" name="attendance" value="checkOutTime" ></input>
              <label for="workEnd" class="btn-circle btn-fill-seconary btn-circle-size">퇴근</label>
              <div class="teacher-attendance-time-info">
                <p>오늘 퇴근한 시간</p>
                <div id='result2'></div>
              </div>
            </article>
          </form>
        </div>
      </div>

      <div class="row">
        <div class="col-sm-4">
          <section class="common-card calendar-card">
            <div id='calendar' class="calendar-table"></div>
          </section>
        </div>
      </div>
    </div>
  </main>


<script>
$('#btn1').click (function(){
	
	$.ajax({
		url: "/firstedu/attendance/teacherAttendance/",
		method: 'POST',
		dataType: 'html',
		success: function(data){
			$("#result1").html(data);
		},
		error: function(error){
			console.log(error);
		}
	});
});




/* function get1(event) {
	  document.getElementById('result1').value = 
	    event.target.value;
	}
	
var temp;	
function get2() {
	var workEnd = document.getElementById("workEnd").value;
	temp = workEnd;
	
	document.getElementById("workEnd2").value = temp;
	    
	} */
</script>


  <script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
  <script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
  <script src="${ pageContext.servletContext.contextPath }/resources/js/fullCalendar.js"></script>
  <script src="${ pageContext.servletContext.contextPath }/resources/js/fullCalendar-teacherAttendance.js"></script>
</body>
</html>