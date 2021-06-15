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
	<title> 상담 관리 &gt; 상담 입력 | FIRST EDU</title>
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
                action="${pageContext.servletContext.contextPath }/consult/insertView" method="get">
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
                </form>
              </article>
            </section>
            <section class="common-table-card consult-input-table">
              <table class="common-table" id="studentList">
                <thead>
                  <tr>
                    <th scope="col">번호</th>
                    <th scope="col">학생명</th>
                    <th scope="col">학년</th>
                    <th scope="col">학교</th>
                    <th scope="col">전화번호</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="student" items="${studentList}">
				<tr>
					<td><c:out value="${ student.no }" /></td>
					<td><c:out value="${ student.studentName }" /></td>
					<td><c:out value="${ student.grade.gradeName }" /></td>
					<td><c:out value="${ student.school }" /></td>
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
		                  <li class="page-item is-active">
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
		                  <li class="page-item is-active">
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
              <form class="common-card consult-input-card"
              action="${pageContext.servletContext.contextPath}/consult/insert"
			  method="post">
                <section class="consult-input-box">
                  <article class="consult-input-form">
                    <label>학생번호</label>
                    <div class="input-group">
                      <input class="form-input" type="text" name="studentNo" id="studentNo" readonly/>
                    </div>
                  </article>

                  <article class="consult-input-form">
                    <label>학생명</label>
                    <div class="input-group">
                      <input class="form-input" type="text" name="studentName" id="studentName" readonly/>
                    </div>
                  </article>

                  <article class="consult-input-form">
                    <div class="date-align">
                      <label>상담일</label>
                      <input class="attendance-date" id="#" type="date" name="consultDate" value="">
                      <label for="check-date"></label>
                    </div>
                  </article>

                  <article class="consult-input-form">
                    <label>상담방법</label>
                    <div class="select-group">
                      <select class="form-select"
                      name="categoryNo" id="categoryNo">
                        <option value="1">대면</option>
                        <option value="2">비대면</option>
                        <option value="3">보호자동참</option>
                      </select>
                      <i class="fas fa-caret-down" aria-hidden></i>
                    </div>
                  </article>

                  <article class="consult-input-form">
                    <label>상담내용</label>
                    <textarea name="consultContent" id="consultContent"></textarea>
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
                        <button type="submit" class="btn-fill-primary btn-popup complete-btn"
                        onclick="location.href='${pageContext.servletContext.contextPath}/consult/list'">확인</button>
                      </div>
                  </div>
                </div>
              </form>
            </div>
          </div>

          <div class="row">
            <div class="col-sm-4">
              <section class="common-card consult-img">
                <img src="${ pageContext.servletContext.contextPath }/resources/assets/png/consult-input.png" alt="">
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
            <a href="consult-list.html" class="btn-fill-primary btn-popup complete-btn">확인</a>
          </div>
      </div>
    </div>
    
    <script>
    const link = "${ pageContext.servletContext.contextPath }/consult/insertView";
	const searchLink = "${ pageContext.servletContext.contextPath }/consult/insertView";
	
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
/* 테이블 클릭 시 값이 자동으로 input태그에 입력되게 하는 JS Start */
			$("#studentList tr").click(function(){
					var tdArr = new Array();
					
					var tr = $(this);
					var td = tr.children();
					
					td.each(function(i){
						tdArr.push(td.eq(i).text());
					});
					
					var stuNo = td.eq(0).text();
					var name = td.eq(1).text();
					
					$('input[name=studentNo]').attr('value',stuNo);
					$('input[name=studentName]').attr('value',name);
	 
			});
			
			if(document.getElementsByTagName("td")) {
				const $tds = document.getElementsByTagName("td");
				for(var i = 0 ; i < $tds.length ; i++) {
					$tds[i].onmouseenter = function() {
					this.parentNode.style.cursor = "pointer";
					}
				}
			}
			/* breadcrumb 변경 */
			$(function(){
				$('#parentMenu').text('상담 관리');
				$('#parentMenu').attr('href', '/firstedu/consult/list');
				$('#nowMenu').text('상담 입력');
			})
</script>


<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/table.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/modal.js"></script>
</body>
</html>