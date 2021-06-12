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
    <link rel="shortcut icon" type="image/png" sizes="32x32" href="./favicon-32x32.png" />
    <link rel="shortcut icon" type="image/png" sizes="16x16" href="./favicon-16x16.png" />
    <link rel="mask-icon" href="./safari-pinned-tab.svg" color="#5e72e4" />
	<title> 수납 관리 &gt; 수납 입력 | FIRST EDU</title>
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
    <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="../common/commonMember.jsp"/>


     <main class="common-background">
      <div class="container">
        <div class="row">
          <div class="col-sm-4 col-md-6">
            <section class="common-card">
              <article class="storage-form-content">
                <form class="storage-search-form" 
                action="${pageContext.servletContext.contextPath }/pay/insertView" method="get">
                  <div class="tag-lb-dark btn-check sum-student-number">총 학생 수 : ${studentTotal }명</div>
                  <article class="form-flex-row">
                  <c:choose>
					<c:when test="${ !empty requestScope.searchValue }">
					<div class="select-group">
	                      <select class="form-select" id="searchOption" name="searchOption">
	                        <option value="studentName" <c:if test="${requestScope.searchCondition eq 'studentName' }">selected</c:if>>학생명</option>
							<option value="className" <c:if test="${requestScope.searchCondition eq 'className' }">selected</c:if>>강의명</option>
	                      </select>
	                      <i class="fas fa-caret-down" aria-hidden></i>
	                    </div>
	                    <div class="input-group">
	                      <span class="material-icons"> search </span>
	                      <input
	                        class="form-input"
	                        type="search"
	                        placeholder="검색어를 입력하세요."
	                        id="searchValue" name="searchValue"
	                      />
	                      </div>
                  </c:when>
              <c:otherwise> 
                    <div class="select-group">
                      <select class="form-select" id="searchOption" name="searchOption">
                        <option value="studentName">학생명</option>
						<option value="className">강의명</option>
                      </select>
                      <i class="fas fa-caret-down" aria-hidden></i>
                    </div>
                    <div class="input-group">
                      <span class="material-icons"> search </span>
                      <input
                        class="form-input"
                        type="search"
                        placeholder="검색어를 입력하세요."
                        id="searchValue" name="searchValue"
                      />
                    </div>
                    </c:otherwise>
              		</c:choose>
                  </article>
                </form>
              </article>
            </section>

            <section class="common-table-card consult-input-table">
              <table class="common-table" id="studentList">
                <thead>
                  <tr>
                    <th scope="col">번호</th>
                    <th scope="col">학생명</th>
                    <th scope="col">학교</th>
                    <th scope="col">학년</th>
                    <th scope="col">전화번호</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="student" items="${studentList}">
				<tr>
					<td><c:out value="${ student.no }" /></td>
					<td><c:out value="${ student.studentName }" /></td>
					<td><c:out value="${ student.school }" /></td>
					<td><c:out value="${ student.grade.gradeName }" /></td>
					<td><c:out value="${ student.studentPhone }" /></td>

				</tr>
			</c:forEach>
                </tbody>
              </table>
              
              <div class="pagenation">
              <c:choose>
				<c:when test="${ !empty requestScope.searchValue }">
                
                <c:if test="${ requestScope.pageInfo.pageNo == 1 }">
					<button class="page-control page-prev" type="button" disabled>
	                  <span class="material-icons"> chevron_left </span>
	                </button>
				</c:if>
				<c:if test="${ requestScope.pageInfo.pageNo > 1 }">
					<button class="page-control page-prev" id="searchPrevPage" type="button">
	                  <span class="material-icons"> chevron_left </span>
	                </button>
				</c:if>
				<c:forEach var="p" begin="${ requestScope.pageInfo.startPage }" end="${ requestScope.pageInfo.endPage }" step="1">
					<c:if test="${ requestScope.pageInfo.pageNo eq p }">
		                <ol class="page-list">
		                  <li class="page-item">
		                    <a><c:out value="${ p }" /></a>
		                  </li>
		                </ol>
	                </c:if>
	                <c:if test="${ requestScope.pageInfo.pageNo ne p }">
		                <ol class="page-list">
		                  <li class="page-item">
		                    <a onclick="searchPageButtonAction(this.innerText);"><c:out value="${ p }" /></a>
		                  </li>
		                </ol>
	                </c:if>
                </c:forEach>
                <c:if test="${ requestScope.pageInfo.pageNo == requestScope.pageInfo.maxPage }">
	                <button class="page-control page-next" type="button" disabled>
	                  <span class="material-icons"> chevron_right </span>
	                </button>
                </c:if>
	                <c:if test="${ requestScope.pageInfo.pageNo < requestScope.pageInfo.maxPage }">
	                <button class="page-control page-next" type="button" id="searchNextPage">
	                  <span class="material-icons"> chevron_right </span>
	                </button>
                </c:if>
               </c:when>
              <c:otherwise>
              <c:if test="${ requestScope.pageInfo.pageNo == 1 }">
					<button class="page-control page-prev" type="button" disabled>
	                  <span class="material-icons"> chevron_left </span>
	                </button>
				</c:if>
				<c:if test="${ requestScope.pageInfo.pageNo > 1 }">
					<button class="page-control page-prev" id="prevPage" type="button">
	                  <span class="material-icons"> chevron_left </span>
	                </button>
				</c:if>
				<c:forEach var="p" begin="${ requestScope.pageInfo.startPage }" end="${ requestScope.pageInfo.endPage }" step="1">
					<c:if test="${ requestScope.pageInfo.pageNo eq p }">
		                <ol class="page-list">
		                  <li class="page-item">
		                    <a><c:out value="${ p }" /></a>
		                  </li>
		                </ol>
	                </c:if>
	                <c:if test="${ requestScope.pageInfo.pageNo ne p }">
		                <ol class="page-list">
		                  <li class="page-item">
		                    <a onclick="pageButtonAction(this.innerText);"><c:out value="${ p }" /></a>
		                  </li>
		                </ol>
	                </c:if>
                </c:forEach>
                <c:if test="${ requestScope.pageInfo.pageNo == requestScope.pageInfo.maxPage }">
	                <button class="page-control page-next" type="button" disabled>
	                  <span class="material-icons"> chevron_right </span>
	                </button>
                </c:if>
	                <c:if test="${ requestScope.pageInfo.pageNo < requestScope.pageInfo.maxPage }">
	                <button class="page-control page-next" type="button" id="nextPage">
	                  <span class="material-icons"> chevron_right </span>
	                </button>
                </c:if>
              </c:otherwise>
              </c:choose>
              </div>
            </section>
          </div>

            <div class="col-sm-4 col-md-6">
              <form class="common-card consult-input-card storage-input-card"
              action="${pageContext.servletContext.contextPath}/pay/insert" method="post">
                <section class="consult-input-box">
                  <article class="consult-input-form">
                    <label>학생번호</label>
                    <div class="input-group">

                      <input class="form-input" type="text" readonly 
                      name="studentNo" id="studentNo" value=""/>

                    </div>
                  </article>

                  <article class="consult-input-form">
                    <label>강의명</label>
                    <div class="select-group">
                      <select class="form-select"
                      name="classNo" id="classNo">
                      </select>
                      <i class="fas fa-caret-down" aria-hidden></i>
                    </div>
                  </article>

                  <article class="consult-input-form">
                    <label>학생명</label>
                    <div class="input-group">

                      <input class="form-input" type="text" readonly 
                      name="studentName" id="studentName" value=""/>

                    </div>
                  </article>

                  <article class="consult-input-form">
                    <label>수강료</label>
                      <div class="input-group">
                        <input class="form-input" type="text"
                        name="tution" id="tution" value="" />

                      </div>
                  </article>

                  <article class="consult-input-form">
                    <label>납입현황</label>
                    <div class="select-group">
                      <select class="form-select"
                      name="payYn">
                        <option value="납부">납부</option>
						<option value="미납">미납</option>
                      </select>
                      <i class="fas fa-caret-down" aria-hidden></i>
                    </div>
                  </article>

                  <article class="consult-input-form">
                    <label>할인수단</label>
                    <div class="checkbox-wrap">
                      <input
                      type="radio"
                      id="checkFriend"
                      name="discountNo"
                      value="1"
                      />
                      <label for="checkFriend" class="check-discount check-friend">
                        <i class="fas fa-check"></i>
                      </label>
                      <label for="checkFriend" class="discount">친구</label>

                      <input
                        type="radio"
                        id="checkMonth"
                        name="discountNo"
                        value="2"
                      />
                      <label for="checkMonth" class="check-discount check-month">
                        <i class="fas fa-check"></i>
                      </label>
                      <label for="checkMonth" class="discount">기간</label>

                      <input
                       type="radio"
                        id="checkNull"
                        name="discountNo"
                        value="3"
                      />
                      <label for="checkNull" class="check-discount check-null">
                        <i class="fas fa-check"></i>
                      </label>
                      <label for="checkNull" class="discount">없음</label>
                    </div>
                  </article>

                  <article class="consult-input-form">
                    <label>결제금액</label>
                    <div class="input-group">

                      <input class="form-input" type="text"
                      name="payment"/>

                    </div>
                  </article>

                  <article class="consult-input-form">
                    <label>결제수단</label>
                    <div class="select-group">
                      <select class="form-select"
                      name="payOption">
                        <option value="--">선택</option>
                        <option value="카드">카드</option>
                        <option value="현금">현금</option>
                      </select>
                      <i class="fas fa-caret-down" aria-hidden></i>
                    </div>
                  </article>

                  <article class="consult-input-form">
                    <div class="date-align">
                      <label>납입일</label>
                      <input class="attendance-date" id="#" type="date" name="payDate">
                      <label for="check-date"></label>
                    </div>
                  </article>

                  <article class="consult-input-btn">
                    <button type="button" class="btn-fill-seconary btn-basic cancel-board-btn">취소</button>
                    <button type="button" class="btn-fill-primary btn-basic confirm-btn">확인</button>
                  </article>
                </section>

                <div class="modal complete-input-board-modal">
                  <div class="modal-content">
                    <strong>게시물 등록하기</strong>
                    <p>게시물을 등록하시겠습니까?</p>
                      <div class="popup-2btn">
                        <button type="button" class="btn-fill-seconary btn-popup back-btn">취소</button>
                        <!-- <button type="submit" class="btn-fill-primary btn-popup complete-btn">확인</button> -->
                        <button type="button" class="btn-fill-primary btn-popup complete-btn" onclick="location.href='storage-list.html'">확인</button>
                      </div>
                  </div>
                </div>
              </form>
            </div>
          </div>

          <div class="row">
            <div class="col-sm-4">
              <section class="common-card consult-img">
                <img src="${ pageContext.servletContext.contextPath }/resources/assets/png/storage-input.png" alt="">
              </section>
            </div>
          </div>
        </div>
    </main>

	<div class="modal cancel-board-modal">
      <div class="modal-content">
        <strong>게시물 등록 취소</strong>
        <p>게시물 등록을 취소하시겠습니까?</p>
          <div class="popup-2btn">
            <button type="button" class="btn-fill-seconary btn-popup back-btn back-btn">취소</button>
            <a href="storage-list.html" class="btn-fill-primary btn-popup complete-btn">확인</a>
          </div>
      </div>
    </div>



<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/storageInput.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/table.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/modal.js"></script>
</body>
</html>