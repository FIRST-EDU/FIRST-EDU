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
    <link rel="shortcut icon" type="image/png" sizes="32x32" href="${pageContext.servletContext.contextPath}/favicon-32x32.png" />
    <link rel="shortcut icon" type="image/png" sizes="16x16" href="${pageContext.servletContext.contextPath}/favicon-16x16.png" />
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
              <a class="btn-fill-primary btn-basic consult-input-btn"
              onclick="location.href='${pageContext.servletContext.contextPath}/consult/insertView'">상담 입력</a>
              
          </section>
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
                         		 보호자 동참
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

 <div class="modal detail-board-modal" id="consultMadal">
    <div class="modal-content">
      <section class="form-left">
        <article class="form-align">
        <label>상담번호</label>
        <div class="input-group">
          <input class="form-input" type="text" id="consultNo" name="consultNo" value="" readonly />
        </div>
        </article>

        <article class="form-align">
          <label>상담일</label>
          <div class="input-group">
            <input class="form-input" type="text" id="consultDate" name="consultDate" value="" readonly/>
          </div>
        </article>

        <article class="form-align">
          <label>학생명</label>
          <div class="input-group">
            <input class="form-input" type="text" id="studentName" name="studentName" value="" readonly />
          </div>
        </article>

        <article class="form-align">
          <label>상담자</label>
          <div class="input-group">
            <input class="form-input" type="text" id="teacherName" name="teacherName" value="" readonly />
          </div>
        </article>

        <article class="form-align">
          <label>상담방법</label>
          <div class="input-group">
            <input class="form-input" type="text" id="consultOption" name="consultOption" value="" readonly />
          </div>
        </article>

        <article class="form-align">
          <label>상담내용</label>
          <textarea name="consultContent" id="consultContent" readonly></textarea>
        </article>
      </section>

        <div class="popup-3btn form-btn">
        <button type="button" class="btn-fill-seconary btn-basic back-btn">목록</button>
        <button type="button" class="btn-fill-primary btn-basic" id="consultUpdateBtn">수정</button>
      </div>
    </div>
  </div>
  
  

  <c:if test="${!empty requestScope.msgTitle }">
  <div class="modal complete-modal complete-input-board-modal">
    <div class="modal-content">
      <strong>${requestScope.msgTitle }</strong>
      <p>${requestScope.msgContent }</p>
      <div class="popup-1btn">
        <button type="button" class="btn-fill-primary btn-popup complete-btn">확인</button>
      </div>
    </div>
  </div>
  </c:if>

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
		
		$("#consultList td").click(function(){
			
			const no = this.parentNode.children[0].innerText;
			$.ajax({
				url:"detail",
				type:"GET",
				data:{no:no},
				success:function(data){
					
					$("#consultNo").val(data.consultNo);
					$("#consultDate").val(data.consultDate);
					$("#studentName").val(data.student.studentName);
					$("#teacherName").val(data.teacher.name);
					$("#consultOption").val(data.category.consultOption);
					$("#consultContent").val(data.consultContent);
					overlay.classList.add('is-active')
				    body.classList.add('modal-open')
				    detailBoardModal.classList.add('is-active')
					
				}
			})
		})
		
		 $("#consultUpdateBtn").click(function(){
			const no = $("#consultNo").val();
			location.href = "${pageContext.servletContext.contextPath}/consult/update/" + no; 
		}) 

		/* breadcrumb 변경 */
	$(function(){
		$('#parentMenu').text('상담 관리');
		$('#parentMenu').attr('href', '/firstedu/consult/list');
		$('#nowMenu').text('상담 목록');
	})
	</script>

<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/modal.js"></script>

</body>
</html>