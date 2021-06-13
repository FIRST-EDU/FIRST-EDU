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
    <link rel="shortcut icon" type="image/png" sizes="32x32" href="${pageContext.servletContext.contextPath}/favicon-32x32.png" />
    <link rel="shortcut icon" type="image/png" sizes="16x16" href="${pageContext.servletContext.contextPath}/favicon-16x16.png" />
    <link rel="mask-icon" href="./safari-pinned-tab.svg" color="#5e72e4" />
	<title> 문자 관리 &gt; 문자 목록 | FIRST EDU</title>
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
	 <script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.9.1/jquery.tablesorter.min.js"></script>
</head>
<body>
	<jsp:include page="../common/commonMember.jsp"/>

	<main class="common-background">
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <section class="common-card consult-list-form-content">
              <section class="consult-form-content">
                <div class="tag-lb-dark btn-check today-consult-list">총 문자 건 수 : ${ smsTotal}건</div>
                <form class="consult-search-form"
                 action="${pageContext.servletContext.contextPath }/sms/list" method="get">
                  <div class="select-group">
                    <select class="form-select"
                    name="searchOption" id="searchOption">
                      <option value="studentName">학생명</option>
                      <option value="smsContent">내용</option>
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
                </form>
              </section>
              <a class="btn-fill-primary btn-basic consult-input-btn"
               onclick="location.href='${pageContext.servletContext.contextPath}/sms/insertView'">문자 전송</a>
          </section>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-4">
            <section class="common-table-card message-table-card">
                <table class="common-table message-table " id="smsList">
                  <thead>
                    <tr>
                      <th scope="col">번호</th>
                      <th scope="col">학생명</th>
                      <th scope="col">수신번호</th>
                      <th scope="col">발신일</th>
                      <th scope="col">발신내용</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:forEach var="sms" items="${smsList}">
					<tr>
						<td><c:out value="${ sms.smsNo }" /></td>
						<td><c:out value="${ sms.student.studentName }"/></td>
						<td><c:out value="${ sms.student.parentsPhone }" /></td>
						<td><c:out value="${ sms.sendTime }" /></td>
						<td class="message-text-overflow"><c:out value="${ sms.smsContent }" /></td>
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
        </div>
      </div>
    </main>

    <div class="modal complete-modal complete-input-board-modal">
    <div class="modal-content">
      <strong>게시물 등록</strong>
      <p>게시물이 등록되었습니다.</p>
      <div class="popup-1btn">
        <button type="button" class="btn-fill-primary btn-popup complete-btn">확인</button>
      </div>
    </div>
  </div>

  <div class="modal delete-board-modal second-modal">
    <div class="modal-content">
      <strong>게시물 삭제하기</strong>
      <p>게시물을 삭제하시겠습니까?</p>
        <div class="popup-2btn">
          <button type="button" class="btn-fill-seconary btn-popup delete-board-btn">삭제</button>
          <button type="button" class="btn-fill-primary btn-popup back-btn">취소</button>
        </div>
    </div>
  </div>

  <div class="modal complete-modal complete-delete-board-modal">
    <div class="modal-content">
      <strong>게시물 삭제</strong>
      <p>게시물이 삭제되었습니다.</p>
      <div class="popup-1btn">
        <button type="button" class="btn-fill-primary btn-popup complete-btn">확인</button>
      </div>
    </div>
  </div>

<script>
	/* 헤더 클릭 시 정렬되게 하는 라이브러리 */
		$(document).ready(function() {
			$('#smsList').tablesorter();
		});

	/* 페이징 처리 start */
		const link = "${ pageContext.servletContext.contextPath }/sms/list";
		const searchLink = "${ pageContext.servletContext.contextPath }/sms/list";

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
</script>

	<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/js/modal.js"></script>
</body>
</html>