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
	<title> 조직 관리 &gt; 직원 목록 | FIRST EDU</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/style.css" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Material+Icons" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/11694e3acf.js" crossorigin="anonymous" ></script>
    <script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body>
	<jsp:include page="../common/commonMember.jsp" />
	
	<main class="common-background">
	<div class="container">
	<div class="row">
        <div class="col-sm-4">
          <section class="common-card teacher-list-form-content">
            <section class="teacher-form-content">
              <div class="tag-lb-dark btn-check sum-teacher-number">총 직원 수 : 6</div>
            </section>
            <button type="button" class="btn-fill-primary btn-basic teacher-input-btn" onclick="location.href='${ pageContext.servletContext.contextPath }/classInfo/classUpdate'">과목 등록</button>
          </section>
        </div>
     </div>

	<!-- 검색 폼 -->
	<form class="storage-search-form" action="${pageContext.servletContext.contextPath }/classInfo/searchList" method="get">
		<div class="search-area" align="center">
			<c:choose>
				<c:when test="${ !empty requestScope.searchValue }">
					<select id="searchCondition" name="searchCondition">
						<option value="gradeName"
							<c:if test="${requestScope.searchCondition eq 'gradeName' }">selected</c:if>>학년</option>
						<option value="gradeName"
							<c:if test="${requestScope.searchCondition eq 'subjectName' }">selected</c:if>>과목</option>
						<option value="teacherName"
							<c:if test="${requestScope.searchCondition eq 'teacherName' }">selected</c:if>>선생님</option>
						<option value="day"
							<c:if test="${requestScope.searchCondition eq 'day' }">selected</c:if>>요일</option>
					</select>
					<input type="search" id="searchValue" name="searchValue"
						value="${requestScope.searchValue}"}>
				</c:when>
				<c:otherwise>
					<select id="searchCondition" name="searchCondition">
						<option value="gradeName">학년</option>
						<option value="subjectName">과목</option>
						<option value="teacherName">선생님</option>
						<option value="day">요일</option>
					</select>
					<input type="search" id="searchValue" name="searchValue">
				</c:otherwise>
			</c:choose>
			<button type="submit">검색하기</button>
		</div>
	</form>

	<div class="row">
		<div class="col-sm-4">
		<form class="common-table-card teacher-list-table-card">
			<table class="common-table" id="listArea">
				<thead>
					<tr>
						<th scope="col">수강번호</th>
						<th scope="col">수강코드</th>
						<th scope="col">담당선생님</th>
						<th scope="col">학년</th>
						<th scope="col">과목</th>
						<th scope="col">강의실</th>
						<th scope="col">강의명</th>
						<th scope="col">요일</th>
						<th scope="col">강의시작시간</th>
						<th scope="col">강의종료시간</th>
						<th scope="col">교재</th>
						<th scope="col">수강료</th>
						<th scope="col">기타</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="list" items="${ classGroup }" varStatus="status">
						<tr>
							<td><c:out value="${list.classNum}" /></td>
							<td><c:out value="${list.code}" /></td>
							<td><c:out value="${list.teacherInfo.teacherName}" /></td>
							<td><c:out value="${list.grade.gradeName}" /></td>
							<td><c:out value="${list.subjectCategory.subjectName}" /></td>
							<td><c:out value="${list.room}" /></td>
							<td><c:out value="${list.className}" /></td>
							<td><c:out value="${list.day}" /></td>
							<td><c:out value="${list.startTime}" /></td>
							<td><c:out value="${list.endTime}" /></td>
							<td><c:out value="${list.book}" /></td>
							<td><c:out value="${list.payment}" /></td>
							<td class="edit-remove-btn">
							<button type="button" id="updateBtn" class="edit-btn" aria-label="수정 버튼 " onclick="location.href='${ pageContext.servletContext.contextPath }/classInfo/classUpdate/'">상세보기</button>
							<button id="btn" class="delete-btn" aria-label="삭제 버튼" onclick="location.href='${ pageContext.servletContext.contextPath }/classInfo/delete/'">삭제</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>
		</div>
	</div>
	
	<%-- 페이지 처리 --%>
	<div class="pagingArea" align="center">
		<c:choose>
			<c:when test="${ !empty requestScope.searchValue }">
				<button id="searchStartPage"><<</button>

				<c:if test="${ requestScope.pageInfo.pageNo == 1 }">
					<button disabled><</button>
				</c:if>
				<c:if test="${ requestScope.pageInfo.pageNo > 1 }">
					<button id="searchPrevPage"><</button>
				</c:if>

				<c:forEach var="p" begin="${ requestScope.pageInfo.startPage }"
					end="${ requestScope.pageInfo.endPage }" step="1">
					<c:if test="${ requestScope.pageInfo.pageNo eq p }">
						<button disabled>
							<c:out value="${ p }" />
						</button>
					</c:if>
					<c:if test="${ requestScope.pageInfo.pageNo ne p }">
						<button onclick="searchPageButtonAction(this.innerText);">
							<c:out value="${ p }" />
						</button>
					</c:if>
				</c:forEach>

				<c:if
					test="${ requestScope.pageInfo.pageNo == requestScope.pageInfo.maxPage }">
					<button disabled>></button>
				</c:if>
				<c:if
					test="${ requestScope.pageInfo.pageNo < requestScope.pageInfo.maxPage }">
					<button id="searchNextPage">></button>
				</c:if>

				<button id="searchMaxPage">>></button>
			</c:when>
			<c:otherwise>
				<button id="startPage"><<</button>

				<c:if test="${ requestScope.pageInfo.pageNo == 1 }">
					<button disabled><</button>
				</c:if>
				<c:if test="${ requestScope.pageInfo.pageNo > 1 }">
					<button id="prevPage"><</button>
				</c:if>

				<c:forEach var="p" begin="${ requestScope.pageInfo.startPage }"
					end="${ requestScope.pageInfo.endPage }" step="1">
					<c:if test="${ requestScope.pageInfo.pageNo eq p }">
						<button disabled>
							<c:out value="${ p }" />
						</button>
					</c:if>
					<c:if test="${ requestScope.pageInfo.pageNo ne p }">
						<button onclick="pageButtonAction(this.innerText);">
							<c:out value="${ p }" />
						</button>
					</c:if>
				</c:forEach>

				<c:if
					test="${ requestScope.pageInfo.pageNo == requestScope.pageInfo.maxPage }">
					<button disabled>></button>
				</c:if>
				<c:if
					test="${ requestScope.pageInfo.pageNo < requestScope.pageInfo.maxPage }">
					<button id="nextPage">></button>
				</c:if>

				<button id="maxPage">>></button>
			</c:otherwise>
		</c:choose>
	</div>
	<!-- pagingArea end -->
	</div>
	<!--container -->
	</main>
	<script>

	$("#updateBtn").click(function(){
		alert($("#classNum").val())
		const no = $("#classNum").val();
		console.log(no);
		location.href="${pageContext.servletContext.contextPath}/classInfo/classUpdate/" + parseInt(no);
	})
	
	$(function(){
			$("#listArea tbody>tr>td:not(:last-child)").click(function(){
				const no = $(this).parent().children(":eq(0)").text();
				console.log(no);
				location.href = "${ pageContext.servletContext.contextPath }/classInfo/detail/" + parseInt(no);
			})
		})	
	
	
	</script>

	<script>
		const link = "${ pageContext.servletContext.contextPath }/classInfo/list";
		const searchLink = "${ pageContext.servletContext.contextPath }/classInfo/classList";

		/* 원하는 페이지 클릭시 실행되는 콜백 함수 */
		function pageButtonAction(text) {
			location.href = link + "?currentPage=" + text;
		}

		function searchPageButtonAction(text) {
			location.href = searchLink
					+ "?currentPage="
					+ text
					+ "&searchCondition=${requestScope.searchCondition}&searchValue=${requestScope.searchValue}";
		}

		if (document.getElementById("searchStartPage")) {
			const $searchStartPage = document.getElementById("searchStartPage");
			$searchStartPage.onclick = function() {
				location.href = searchLink
						+ "?currentPage=1&searchCondition=${requestScope.searchCondition}&searchValue=${requestScope.searchValue}";
			}
		}

		if (document.getElementById("searchMaxPage")) {
			const $searchMaxPage = document.getElementById("searchMaxPage");
			$searchMaxPage.onclick = function() {
				location.href = searchLink
						+ "?currentPage=${ requestScope.pageInfo.maxPage }&searchCondition=${requestScope.searchCondition}&searchValue=${requestScope.searchValue}";
			}
		}

		if (document.getElementById("searchPrevPage")) {
			const $searchPrevPage = document.getElementById("searchPrevPage");
			$searchPrevPage.onclick = function() {
				location.href = searchLink
						+ "?currentPage=${ requestScope.pageInfo.pageNo - 1 }&searchCondition=${requestScope.searchCondition}&searchValue=${requestScope.searchValue}";
			}
		}

		if (document.getElementById("searchNextPage")) {
			const $searchNextPage = document.getElementById("searchNextPage");
			$searchNextPage.onclick = function() {
				location.href = searchLink
						+ "?currentPage=${ requestScope.pageInfo.pageNo + 1 }&searchCondition=${requestScope.searchCondition}&searchValue=${requestScope.searchValue}";
			}
		}

		if (document.getElementById("startPage")) {
			const $startPage = document.getElementById("startPage");
			$searchStartPage.onclick = function() {
				location.href = link + "?currentPage=1";
			}
		}

		if (document.getElementById("maxPage")) {
			const $maxPage = document.getElementById("maxPage");
			$searchMaxPage.onclick = function() {
				location.href = link
						+ "?currentPage=${ requestScope.pageInfo.maxPage }";
			}
		}

		if (document.getElementById("prevPage")) {
			const $prevPage = document.getElementById("prevPage");
			$searchPrevPage.onclick = function() {
				location.href = link
						+ "?currentPage=${ requestScope.pageInfo.pageNo - 1 }";
			}
		}

		if (document.getElementById("nextPage")) {
			const $nextPage = document.getElementById("nextPage");
			$searchNextPage.onclick = function() {
				location.href = link
						+ "?currentPage=${ requestScope.pageInfo.pageNo + 1 }";
			}
		}

	</script>
</body>
</html>