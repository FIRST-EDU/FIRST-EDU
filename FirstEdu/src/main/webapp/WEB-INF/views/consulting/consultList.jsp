<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
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
	<title> 상담 관리 &gt; 상담 목록 | FIRST EDU</title>
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
                <div class="tag-lb-dark btn-check today-consult-list">금일 상담 내역 : ${consultTodayTotal } 건</div>
                <form class="consult-search-form"
                action="${pageContext.servletContext.contextPath }/consult/list" method="get">
                  <div class="select-group">
                    <select class="form-select"
                    name="searchOption" id="searchOption">
                      <option value="studentName">학생명</option>
                      <option value="consultOption">상담방법</option>
                      <option value="consultContent">상담내용</option>
                    </select>
                    <i class="fas fa-caret-down" aria-hidden></i>
                    </div>
                    <div class="input-group">
                      <span class="material-icons"> search </span>
                      <input
                        class="form-input"
                        type="search"
                        placeholder="검색어를 입력하세요."
                        id="searchValue" name="searchValue" value=""
                      />
                    </div>
                </form>
            </section>
              <button type="button" class="btn-fill-primary btn-basic consult-input-btn"
              onclick="location.href='${pageContext.servletContext.contextPath}/consult/insertView'">상담 입력</button>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-4">
            <section class="common-table-card consult-table-card">
                <table class="common-table consult-table " id="consultList">
                  <thead>
                    <tr>
                      <th scope="col">번호</th>
                      <th scope="col">상담일</th>
                      <th scope="col">학생명</th>
                      <th scope="col">상담자</th>
                      <th scope="col">상담방법</th>
                      <th scope="col">상담내용</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:forEach var="consult" items="${consultList}">
					<fmt:formatDate var="consultDate" value="${consult.consultDate}" pattern="yyyy/MM/dd"/>
					<tr>
						<td><c:out value="${ consult.consultNo }" /></td>
						<td><c:out value="${ consultDate }"/></td>
						<td><c:out value="${ consult.student.studentName }" /></td>
						<td><c:out value="${ consult.teacher.name }" /></td>
						<td>
						<c:choose>
							<c:when test="${consult.category.consultOption eq '대면' }">
		                        <span class="tag-light-blue">
		                         	 대면
		                        </span>
							</c:when>
							<c:when test="${consult.category.consultOption eq '비대면' }">
							 <span class="tag-violet">
                          			비대면
                        	</span>
							</c:when>
							<c:when test="${consult.category.consultOption eq '학부모동참' }">
							<span class="tag-r-light">
                         		 학부모 동참
                        	</span>
							</c:when>
						</c:choose>
						</td>
						<td class="consult-text-overflow"><c:out value="${ consult.consultContent }" /></td>
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
  
   <div class="modal detail-board-modal" id="consultModal">
    <div class="modal-content">
      <section class="form-left">
        <article class="form-align">
        <label>학생번호</label>
        <div class="input-group">
          <input class="form-input" type="button" readonly />
        </div>
        </article>

        <article class="form-align">
          <label>상담일</label>
          <div class="input-group">
            <input class="form-input" type="button" readonly />
          </div>
        </article>

        <article class="form-align">
          <label>학생명</label>
          <div class="input-group">
            <input class="form-input" type="button" readonly />
          </div>
        </article>

        <article class="form-align">
          <label>상담자</label>
          <div class="input-group">
            <input class="form-input" type="button" readonly />
          </div>
        </article>

        <article class="form-align">
          <label>상담방법</label>
          <div class="input-group">
            <input class="form-input" type="button" readonly />
          </div>
        </article>

        <article class="form-align">
          <label>상담내용</label>
          <textarea name="" id="" readonly></textarea>
        </article>
      </section>

        <div class="popup-2btn form-btn">
        <button type="button" class="btn-fill-seconary btn-popup back-btn">목록</button>
        <a href="consult-input.html" class="btn-fill-primary btn-popup">수정</a>
      </div>
    </div>
  </div>

  <div class="modal complete-modal complete-input-board-modal">
  <div class="modal-content">
    <strong>게시물 등록</strong>
    <p>게시물이 등록되었습니다.</p>
    <div class="popup-1btn">
      <button type="button" class="btn-fill-primary btn-popup complete-btn">확인</button>
    </div>
  </div>
  </div>
    
    <script>
	/* 헤더 클릭 시 정렬되게 하는 라이브러리 */
		$(document).ready(function() {
			$('#consultList').tablesorter();
		});
	/* 페이징 처리 start */
		const link = "${ pageContext.servletContext.contextPath }/consult/list";
		const searchLink = "${ pageContext.servletContext.contextPath }/consult/list";
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
		
		/* td태그에 마우스 호버시 pointer 스타일로 변경  */
		 if(document.getElementsByTagName("td")) {
			const $tds = document.getElementsByTagName("td");
			 for(var i = 0 ; i < $tds.length ; i++) {
				/*$tds[i].onmouseenter = function() {
				this.parentNode.style.cursor = "pointer";
			}  */
		/* td태그 클릭 시 테이블의 첫 번째 인덱스에 위치한 No를 가지고 detail로 이동 */
			  $tds[i].onclick = function() {
				const no = this.parentNode.children[0].innerText;
				 /* location.href = "${pageContext.servletContext.contextPath}/consult/detail/" + no; */
				console.log(no);
				$("#consultModal").show();
				} 
			}
		} 

	</script>

<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
<%-- <script src="${ pageContext.servletContext.contextPath }/resources/js/modal.js"></script> --%>
</body>
</html>