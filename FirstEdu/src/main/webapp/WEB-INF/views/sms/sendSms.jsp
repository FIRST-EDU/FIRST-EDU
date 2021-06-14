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
	<title> 문자 관리 &gt; 문자 전송 | FIRST EDU</title>
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
                action="${pageContext.servletContext.contextPath }/sms/insertView" method="get">
                  <div class="tag-lb-dark btn-check sum-student-number">총 학생 수 : ${studentTotal }명</div>
                  <article class="form-flex-row">
                    <c:choose>
					<c:when test="${ !empty requestScope.searchValue }">
					<div class="select-group">
	                      <select class="form-select" id="searchOption" name="searchOption">
	                        <option value="studentName" <c:if test="${requestScope.searchCondition eq 'studentName' }">selected</c:if>>학생명</option>
							<option value="school" <c:if test="${requestScope.searchCondition eq 'school' }">selected</c:if>>학교</option>
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
						<option value="school">학교</option>
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
                  <a class="btn-fill-primary btn-basic"
                  onclick="location.href='${pageContext.servletContext.contextPath}/sms/list'">전송 내역</a>
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
                    <th scope="col">연락처</th>
                    <th scope="col">보호자연락처</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="student" items="${studentList}">
				<tr>
					<td><c:out value="${ student.student.no }" /></td>
					<td><c:out value="${ student.student.studentName }" /></td>
					<td><c:out value="${ student.student.school }" /></td>
					<td><c:out value="${ student.student.studentPhone }" /></td>
					<td><c:out value="${ student.student.parentsPhone }" /></td>
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
              <form class="common-card message-card"
              action="${pageContext.servletContext.contextPath }/sms/insert" method="post">
                <section class="message-img">
                  <img class="md-iphone sm-hidden" src="${ pageContext.servletContext.contextPath }/resources/assets/png/iphone.png" alt="">
                  <div class="input-group recipient">
                    <img class="sm-phone sm-only" src="${ pageContext.servletContext.contextPath }/resources/assets/png/mobile-phone.png" alt="">
                    <input type="hidden" name="studentNo" id="studentNo">
                    <input class="form-input" id="parentsPhone" name="parentsPhone"/>
                    <textarea class="mobile-text" id="smsContent" name="smsContent"></textarea>
                    <div class="btn-center">
                      <button type="button" class="btn-fill-select btn-basic cancel-board-btn" id="cancleBtn">취소</button>
                      <button type="button" class="btn-fill-primary btn-basic confirm-btn">전송</button>
                    </div>
                  </div>
                </section>
                <div class="modal complete-input-board-modal">
                  <div class="modal-content">
                    <strong>문자 전송하기</strong>
                    <p>문자를 전송하시겠습니까?</p>
                      <div class="popup-2btn">
                        <button type="button" class="btn-fill-seconary btn-popup back-btn">취소</button>
                        <!-- <button type="submit" class="btn-fill-primary btn-popup complete-btn">확인</button> -->
                        <button type="submit" class="btn-fill-primary btn-popup complete-btn">확인</button>
                      </div>
                  </div>
                </div>
              </form>
            </div>
          </div>

          <div class="row">
            <div class="col-sm-4">
              <section class="common-card consult-img">
                <img src="${ pageContext.servletContext.contextPath }/resources/assets/png/message.png" alt="">
              </section>
            </div>
          </div>
        </div>
    </main>

    <div class="modal cancel-board-modal">
      <div class="modal-content">
        <strong>문자 전송 취소</strong>
        <p>문자 전송을 취소하시겠습니까?</p>
          <div class="popup-2btn">
            <button type="button" class="btn-fill-seconary btn-popup back-btn">취소</button>
            <a class="btn-fill-primary btn-popup complete-btn"
            onclick="location.href='${pageContext.servletContext.contextPath}/sms/list'">확인</a>
          </div>
      </div>
    </div>

<script>
		const link = "${ pageContext.servletContext.contextPath }/sms/insertView";
		const searchLink = "${ pageContext.servletContext.contextPath }/sms/insertView";
		
		function pageButtonAction(text) {
			location.href = link + "?currentPage=" + text;
		}

		function searchPageButtonAction(text) {
			location.href = searchLink
					+ "?currentPage="
					+ text
					+ "&searchOption=${requestScope.searchOption}&searchValue=${requestScope.searchValue}";
		}

		if (document.getElementById("searchPrevPage")) {
			const $searchPrevPage = document.getElementById("searchPrevPage");
			$searchPrevPage.onclick = function() {
				location.href = searchLink
						+ "?currentPage=${ requestScope.pageInfo.pageNo - 1 }&searchOption=${requestScope.searchOption}&searchValue=${requestScope.searchValue}";
			}
		}

		if (document.getElementById("searchNextPage")) {
			const $searchNextPage = document.getElementById("searchNextPage");
			$searchNextPage.onclick = function() {
				location.href = searchLink
						+ "?currentPage=${ requestScope.pageInfo.pageNo + 1 }&searchOption=${requestScope.searchOption}&searchValue=${requestScope.searchValue}";
			}
		}

		if (document.getElementById("prevPage")) {
			const $prevPage = document.getElementById("prevPage");
			$prevPage.onclick = function() {
				location.href = link
						+ "?currentPage=${ requestScope.pageInfo.pageNo - 1 }";
			}
		}

		if (document.getElementById("nextPage")) {
			const $nextPage = document.getElementById("nextPage");
			$nextPage.onclick = function() {
				location.href = link
						+ "?currentPage=${ requestScope.pageInfo.pageNo + 1 }";
			}
		}
		
		$("#studentList tr").click(
				function() {
					var tdArr = new Array();

					var tr = $(this);
					var td = tr.children();

					td.each(function(i) {
						tdArr.push(td.eq(i).text());
					});
						
					var stuNo = td.eq(0).text();
					var parentsPhone = td.eq(4).text();

					$('input[name=studentNo]').attr('value', stuNo);
					$('input[name=parentsPhone]').attr('value', parentsPhone);
		});
		
		/* breadcrumb 변경 */
		$(function(){
			$('#parentMenu').text('문자 관리');
			$('#parentMenu').attr('href', '/firstedu/sms/list');
			$('#nowMenu').text('문자 전송');
		})
</script>


	<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/js/table.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/js/modal.js"></script>
</body>
</html>