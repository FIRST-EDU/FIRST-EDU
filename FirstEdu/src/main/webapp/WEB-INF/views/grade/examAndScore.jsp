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
	<title> 시험 관리 &gt; 시험 상세 | FIRST EDU</title>
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
          <section class="common-card storage-list-form-content">
            <article class="storage-form-content">
              <div class="tag-lb-dark btn-check sum-storage-price">총 성적 수 : ${ fn:length( requestScope.scoreList ) }</div>
            </article>

            <article class="exam-lock">
              <button type="button" class="lock-event">
                <i class="fas fa-lock"></i>
                <i class="fas fa-unlock"></i>
              </button>
            </article>
          </section>
        </div>
      </div>
      
        <div class="row">
          <div class="col-sm-4">
            <section class="common-table-card">
                <table class="common-table exam-detail-table">
                  <tbody>
                    <tr>
                      <th scope="row">등록번호</th>
                      <td>${ exam.examNo }</td>
                      <th scope="row">시작일</th>
                      <td>
                        <div class="date-align">
                          <input class="attendance-date" id="#" type="date" name="start_date" value="${ exam.startDate }" onchange="modifyExam(this, ${ exam.examNo })" readonly>
                          <label for="check-date"></label>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">시험종류</th>
                      <td>${ exam.examCategoryName }</td>
                      <th scope="row">종료일</th>
                      <td>
                        <div class="date-align">
                          <input class="attendance-date" id="#" type="date" name="end_date" value="${ exam.endDate }" onchange="modifyExam(this, ${ exam.examNo })" readonly>
                          <label for="check-date"></label>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">시험명</th>
                      <td>
                        <div class="input-group">
                          <input class="form-input" type="text" name="exam_name" value="${ exam.examName }" onchange="modifyExam(this, ${ exam.examNo })" readonly/>
                        </div>
                      </td>
                      <th scope="row" rowspan="2">비고</th>
                      <td rowspan="2">
                      	<textarea name="description" onchange="modifyExam(this, ${ exam.examNo })" readonly>${ exam.description }</textarea>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">시험대상</th>
                      <c:if test="${ exam.examCategoryNo eq '1' }">
	                      <td>${ exam.school }</td>
                      </c:if>
                      <c:if test="${ exam.examCategoryNo eq '2' }">
	                      <td>${ exam.mockExamGrade.name }</td>
                      </c:if>
                      <c:if test="${ exam.refCategoryNo eq '3' }">
	                      <td>${ exam.classExamInfo.className }</td>
                      </c:if>
                    </tr>
                  </tbody>
                </table>
            </section>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-4">
            <section class="common-table-card">
              <table class="common-table exam-edit-table">
                <thead>
                  <tr>
                    <th scope="col">학생명</th>
                    <th scope="col">과목
                    <th scope="col">목표점수</th>
                    <th scope="col">점수</th>
                    <th scope="col">석차</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="score" items="${ requestScope.scoreList }">
	                  <tr>
	                    <td>
	                      <div class="input-group">
	                        <input class="form-input" name="student_name" type="text" value="${ score.studentName }" onchange="modifyScore(this, ${ score.scoreNo })" readonly/>
	                      </div>
	                    </td>
	                    <td>
	                      <div class="input-group">
	                        <input class="form-input" name="subject" type="text" value="${ score.subject }" onchange="modifyScore(this, ${ score.scoreNo })" readonly/>
	                      </div>
	                    </td>
	                    <td>
	                      <div class="input-group">
	                        <input class="form-input" name="target_score" type="text" value="${ score.targetScore }" onchange="modifyScore(this, ${ score.scoreNo })" readonly/>
	                      </div>
	                    </td>
	                    <td>
	                      <div class="input-group">
	                        <input class="form-input" name="score" type="text" value="${ score.score }" onchange="modifyScore(this, ${ score.scoreNo })" readonly/>
	                      </div>
	                    </td>
	                    <td>
	                      <div class="input-group">
	                        <input class="form-input" name="rank" type="text" value="${ score.rank }" onchange="modifyScore(this, ${ score.scoreNo })" readonly/>
	                      </div>
	                    </td>
	                  </tr>
                  </c:forEach>
				  <tr>
                    <td colspan="5">
                      <button type="button" onclick="addScore()">
                        <i class="fas fa-plus-circle"></i>
                      </button>
                    </td>
				  </tr>
                </tbody>
              </table>
            </section>
          </div>
        </div>
      </div>
    </main>


<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/grade/examDetail.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/grade/examAndScoreModify.js"></script>
</body>
</html>