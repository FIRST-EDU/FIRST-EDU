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
	<!-- 검색 폼 -->
	<main class="common-background">
	<div class="container">
	<div class="row">
        <div class="col-sm-4">
          <section class="common-card teacher-list-form-content">
            <section class="teacher-form-content">
              <div class="tag-lb-dark btn-check sum-teacher-number">총 직원 수 : 6</div>
              <article class="storage-search-form">
              <form class="storage-search-form" action="${pageContext.servletContext.contextPath }/member/search" method="get">
                <c:choose>
				<c:when test="${ !empty requestScope.searchValue }">
                <div class="select-group">
                  <select class="form-select" id="searchCondition" name="searchCondition">
					<option value="id" <c:if test="${requestScope.searchCondition eq 'id' }">selected</c:if>>아이디</option>
					<option value="name" <c:if test="${requestScope.searchCondition eq 'name' }">selected</c:if>>선생님</option>
					<option value="jobName" <c:if test="${requestScope.searchCondition eq 'jobName' }">selected</c:if>>직급</option>
					<option value="role" <c:if test="${requestScope.searchCondition eq 'role' }">selected</c:if>>권한</option>
				  </select>
                  <i class="fas fa-caret-down" aria-hidden></i>
                  </div>
                  <div class="input-group">
                  <span class="material-icons"> search </span>
                  <input
                    class="form-input"
                    type="search"
                    placeholder="검색어를 입력하세요."
                    id="searchValue" name="searchValue" value="${requestScope.searchValue}"
                  />
              </div>
              </c:when>
              <c:otherwise> 
              <div class="select-group">
                  <select class="form-select" id="searchCondition" name="searchCondition">
					<option value="id">아이디</option>
						<option value="name">선생님</option>
						<option value="jobName">직급</option>
						<option value="role">권한</option>
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
               </c:otherwise>
              </c:choose>
             <!--  <button type="submit">검색하기</button> -->
             </form>
			</article>
			<!-- row -->
            </section>
            <button type="button" class="btn-fill-primary btn-basic teacher-input-btn" onclick="location.href='${ pageContext.servletContext.contextPath }/member/regist'">직원 등록</button>
          </section>
        </div>
     </div>
      
	
	
	<div class="row">
		<div class="col-sm-4">
			<form class="common-table-card teacher-list-table-card">
			<table class="common-table" id="listArea">
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">아이디</th>
						<th scope="col">이름</th>
						<th scope="col">이메일</th>
						<th scope="col">전화번호</th>
						<th scope="col">권한</th>
						<th scope="col">입사일</th>
						<th scope="col">직급</th>
						<th scope="col">상태</th>
						<th scope="col">수정</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="teacher" items="${teacherGroup}" varStatus="status">
						<tr>
							<td><c:out value="${teacher.no}" /></td>
							<td><c:out value="${teacher.id}" /></td>
							<td><c:out value="${teacher.name}" /></td>
							<td><c:out value="${teacher.email}" /></td>
							<td><c:out value="${teacher.phone}" /></td>
							<td><c:out value="${teacher.role}" /></td>
							<td><c:out value="${teacher.hireDate}" /></td>
							<td><span class="tag-p-dark"><c:out value="${teacher.job.jobName}" /></span></td>
							<td><c:out value="${teacher.status}" /></td>
							<td class="edit-remove-btn">
								<button id="detailBtn" type="button" class="edit-btn" aria-label="수정 버튼 " onclick="location.href='${ pageContext.servletContext.contextPath }/member/update'"> <i class="fas fa-pen"></i>수정 </button>
							    <button type="button" class="delete-btn" aria-label="삭제 버튼" onclick="location.href='${ pageContext.servletContext.contextPath }/member/delete'"> <i class="fas fa-trash-alt"></i>삭제 </button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>
	</div>
	</div>
	<!-- row -->

	<div class="row">
        <div class="col-sm-4">
          <section class="common-card">
            <article class="teacher-list-img">
              <img src="${ pageContext.servletContext.contextPath }/resources/assets/png/teacher-list.png" alt="teacher">
            </article>
          </section>
        </div>
     </div>
	</div>
	<!--container -->
	</main>

	<script>
		$(function(){
			$("#listArea tbody>tr>td:not(:last-child)").click(function(){
				const no = $(this).parent().children(":eq(0)").text();
				console.log(no);
				location.href = "${ pageContext.servletContext.contextPath }/member/detail/" + parseInt(no);
			})
		})	
	
	
		$("#detailBtn").click(function(){
			location.href="${pageContext.servletContext.contextPath}/member/detail/" + parseInt(no);
		})
	</script>

</body>
</html>