<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="msapplication-TileColor" content="#da532c" />
    <meta name="theme-color" content="#ffffff" />
    <link rel="apple-touch-icon" sizes="180x180" href="./apple-touch-icon.png" />
    <link rel="shortcut icon" type="image/png" sizes="32x32" href="${pageContext.servletContext.contextPath }/favicon-32x32.png" />
    <link rel="shortcut icon" type="image/png" sizes="16x16" href="${pageContext.servletContext.contextPath }/favicon-16x16.png" />
    <link rel="mask-icon" href="./safari-pinned-tab.svg" color="#5e72e4" />
	<title> 문자 관리 &gt; 문자 상세 | FIRST EDU</title>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="../common/commonMember.jsp"/>

	<main class="common-background">
      <div class="container">
        <div class="row">
          <div class="col-sm-4 col-md-6">
            <form class="common-card consult-edit-card">
              <section class="consult-input-box">
                <article class="consult-input-form">
                  <label>번호</label>
                  <div class="input-group">
                    <input class="form-input" type="text" value="${smsDetail.smsNo }" readonly/>
                  </div>
                </article>

                <article class="consult-input-form">
                  <label>학생명</label>
                  <div class="input-group">
                    <input class="form-input" type="text" value="${ smsDetail.student.studentName}" readonly/>
                  </div>
                </article>

                <article class="consult-input-form">
                  <div class="date-align">
                    <label>상담일</label>
                    <input class="form-input" type="date" value="${ smsDetail.sendTime}" readonly>
                  </div>
                </article>
                
                <article class="consult-input-form">
                  <label>수신번호</label>
                  <div class="input-group">
                    <input class="form-input" type="text" value="${ smsDetail.student.parentsPhone}" readonly/>
                  </div>
                </article>


                <article class="consult-input-form">
                  <label>문자내용</label>
                  <textarea readonly>${ smsDetail.smsContent}</textarea>
                </article>

                <article class="consult-input-btn">
                  <button type="button" class="btn-fill-seconary btn-basic cancel-board-btn"
                  onclick="location.href='${pageContext.servletContext.contextPath}/sms/list'">목록</button>
                  
                </article>
              </section>
            </form>
          </div>
          <div class="col-sm-4 col-md-6">
            <section class="common-card consult-edit-img">
               <img src="${ pageContext.servletContext.contextPath }/resources/assets/png/message.png" alt="">
            </section>
          </div>
        </div>
      </div>
    </main>


  <script>
		

	</script>

    <script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/js/modal.js"></script>
</body>