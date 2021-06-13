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

              <button type="button" id="examRegistBtn" class="btn-fill-primary btn-basic exam-registration">
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
		    <c:forEach var="exam" items="${ requestScope.examList }" varStatus="status">
		      <input type="hidden" name="no-list" value="${ exam.examNo }"/>
		      <input type="hidden" name="title-list" value="${ exam.examName }"/>
	    	  <input type="hidden" name="start-list" value="${ exam.startDate }"/>
		  	  <input type="hidden" name="end-list" value="${ exam.endDate }"/>
			  <input type="hidden" name="color-list" value="${ exam.color.codeHex }"/>
			</c:forEach>
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
  
 <div id="examCategoryManagementModal" class="modal detail-board-modal">
    <div class="modal-content">
      <section>
      	<article class="common-table">
      	  <c:forEach var="color" items="${ requestScope.colorList }">
      		<input type="hidden" name="color-no" value="${ color.no }"/>
      		<input type="hidden" name="color-name" value="${ color.name }"/>
      	  </c:forEach>
             <table class="common-table storage-table ">
                <thead>
                  <tr>
                    <th scope="col">카테고리</th>
                    <th scope="col">시험 종류</th>
                    <th scope="col">색상</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="category" items="${ requestScope.examCategoryList }" end="1">
                	<tr>
	                    <td><input type="hidden" name="categoryNo" value="${ category.no }"/>${ category.name }</td>
	                    <td></td>
	                    <td>
	                    	<span class="${ category.color.tagClassName }">${ category.color.name }</span>
	                    </td>
	                    <td class="edit-remove-btn">
	                        <button class="edit-btn" aria-label="수정 버튼" onclick="modifyCategory(this)">
	                          <i class="fas fa-pen"></i>
	                        </button>
                        </td>
	                 </tr>
	              </c:forEach>

                  <c:forEach var="category" items="${ requestScope.examCategoryList }" begin="3" varStatus="status">
	                  <tr>
	                    <c:if test="${ status.index eq 3 }">
	                    	<td rowspan="5">학원 시험</td>
	                    </c:if>
	                    <td><input type="hidden" name="categoryNo" value="${ category.no }"/>${ category.name }</td>
	                    <td>
	                    	<span class="${ category.color.tagClassName }">${ category.color.name }</span>
	                    </td>
						<td class="edit-remove-btn">
	                        <button class="edit-btn" aria-label="수정 버튼" onclick="modifyCategory(this)">
	                          <i class="fas fa-pen"></i>
	                        </button>
                        </td>
	                  </tr>
                  </c:forEach>
                 </tbody>
               </table>
             </article>
      </section>

        <div class="popup-1btn form-btn">
          <button type="button" class="btn-fill-primary btn-basic back-btn">목록</button>
        </div>
    </div>
  </div>
  
 <div id="examRegistModal" class="modal detail-board-modal">
    <div class="modal-content">
      <section class="form-left">
      
        <article class="teacher-input-form">
          <label>카테고리</label>
          <div class="checkbox-wrap">
              <input
              type="radio"
              id="hagwon"
              name="gender"
              value="1"
              />
              <label for="hagwon" class="check-discount check-female">
                <i class="fas fa-check"></i>
              </label>
              <label for="hagwon" class="discount check-female">학원 시험</label>

              <input
                type="radio"
                id="school"
                name="gender"
                value="2"
              />
              <label for="school" class="check-discount check-male">
                <i class="fas fa-check"></i>
              </label>
              <label for="school" class="discount chack-male">학교 내신</label>

              <input
                type="radio"
                id="mock"
                name="gender"
                value="2"
              />
              <label for="mock" class="check-discount check-male">
                <i class="fas fa-check"></i>
              </label>
              <label for="mock" class="discount chack-male">모의고사</label>
              
            </div>
        </article>
        
        <article id="classInfoForm" class="teacher-input-form">
          <label>시험 종류</label>
          <div class="select-group">
          <select id="classCode" class="form-select" required>
            <option value="none">선택</option>
            <c:forEach var="classOption" items="${ requestScope.classList }">
             <option value="${ classOption.code }">${ classOption.name }</option>
            </c:forEach>
          </select>
          <i class="fas fa-caret-down" aria-hidden></i>
          </div>
        </article>


        <article class="form-align">
          <label>학생명</label>
          <div class="input-group">
            <input class="form-input" type="text" value="김고딩" readonly />
          </div>
        </article>

        <article class="form-align">
          <label>상담자</label>
          <div class="input-group">
            <input class="form-input" type="text" value="강용승" readonly />
          </div>
        </article>

        <article class="form-align">
          <label>상담방법</label>
          <div class="input-group">
            <input class="form-input" type="text" value="대면" readonly />
          </div>
        </article>

        <article class="form-align">
          <label>상담내용</label>
          <textarea name="" id="" readonly>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure, natus omnis corporis fuga officia totam excepturi assumenda repellendus magni, inventore hic laudantium. Nemo repudiandae nesciunt, illum minima vel pariatur quibusdam.</textarea>
        </article>
      </section>

        <div class="popup-3btn form-btn">
        <button type="button" class="btn-fill-seconary btn-basic back-btn">목록</button>
        <button type="button" class="btn-fill-seconary btn-basic delete-b-btn">삭제</button>
        <button type="button" class="btn-fill-primary btn-basic">수정</button>
      </div>
    </div>
  </div>

<div class="overlay" aria-hidden="true"></div>

<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/common/fullCalendar/fullCalendar.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/grade/examCalendar.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/grade/examList.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/grade/examManagement.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/modal.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/grade/examModal.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/grade/examCategory.js"></script>


</body>
</html>