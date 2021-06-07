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
	<title> 수납 관리 &gt; 수납 목록 | FIRST EDU</title>
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
<style>
	.modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }
    
        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 30%; /* Could be more or less, depending on screen size */                          
        }


</style>
<body>
	<jsp:include page="../common/commonMember.jsp"/>

  <main class="common-background">
    <div class="container">
      <div class="row">
        <div class="col-sm-4">
          <section class="common-card storage-list-form-content">
            <section class="storage-form-content">
              <div class="tag-lb-dark btn-check sum-storage-price totalPay">총 결제금액 : <c:out value="${paySum }원"/></div>
              <article class="storage-search-form">
              <!-- 검색 폼 -->
               <form class="storage-search-form" action="${pageContext.servletContext.contextPath }/pay/search" method="get">
                <c:choose>
				<c:when test="${ !empty requestScope.searchValue }">
                <div class="select-group">
                  <select class="form-select" id="searchOption" name="searchOption">
					<option value="studentName" <c:if test="${requestScope.searchCondition eq 'studentName' }">selected</c:if>>학생명</option>
					<option value="className" <c:if test="${requestScope.searchCondition eq 'className' }">selected</c:if>>강의명</option>
					<option value="payYn" <c:if test="${requestScope.searchCondition eq 'payYn' }">selected</c:if>>현황</option>
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
                  <select class="form-select" id="searchOption" name="searchOption">
					<option value="studentName">학생명</option>
					<option value="className">강의명</option>
					<option value="payYn">현황</option>
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
             </form>
             <!-- 검색 폼 end -->
            </article>
          </section>
         <button type="button" class="btn-fill-primary btn-basic storage-input-btn" onclick="location.href='${pageContext.servletContext.contextPath}/pay/insertView'">수납 입력</button>
         </section>
        </div>
      </div>

      <div class="row">
        <div class="col-sm-4">
          <section class="common-table-card storage-table-card">
              <table class="common-table storage-table" id="payList">
                <thead>
                  <tr>
                    <th scope="col">번호</th>
                    <th scope="col">수강일</th>
                    <th scope="col">학생명</th>
                    <th scope="col">강의명</th>
                    <th scope="col">수강료</th>
                    <th scope="col">
                      <button type="button" class="tag-sort">
                        현황
                        <i class="fas fa-sort"></i>
                      </button>
                    </th>
                    <th scope="col">결제수단</th>
                    <th scope="col">결제일</th>
                    <th scope="col">할인</th>
                    <th scope="col">결제금액</th>
                    <th scope="col"></th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="pay" items="${payList}">
					<tr>
						<td><c:out value="${ pay.payNo }" /></td>
						<td><c:out value="${ pay.classInfo.beginDate }" /></td>
						<td><c:out value="${ pay.student.studentName }" /></td>
						<td><c:out value="${ pay.classDTO.className }" /></td>
						<td><c:out value="${ pay.classDTO.classPayment }" /></td>
						<c:choose>
							<c:when test="${pay.payYn eq '납부'}">
							<td class="rowColumn" contenteditable="false"><span class="tag-light-blue">납부</span></td>
							<td class="rowColumn" contenteditable="false"><c:out value="${ pay.payOption }" /></td>
							<td class="rowColumn" contenteditable="false"> <c:out value="${ pay.payDate }" /></td>
							<td class="rowColumn" contenteditable="false"><c:out value="${ pay.discount.discountReason }" /></td>
							<td class="rowColumn" contenteditable="false" id="payment"><c:out value="${ pay.payment }" /></td>
							<td class="edit-remove-btn">
		                      <button type="button" class="edit-btn" aria-label="수정 버튼">
		                        <i class="fas fa-pen"></i>
		                      </button>
		                      <button type="button" class="delete-btn" aria-label="삭제 버튼" 
		                      onclick="location.href='${pageContext.servletContext.contextPath}/pay/delete?no=${pay.payNo}'">
		                        <i class="fas fa-trash-alt"></i>
		                      </button>
		                    </td>
							</c:when>
							<c:when test="${pay.payYn eq '미납'}">
							<td class="rowColumn" contenteditable="false"><span class="tag-r-light">미납</span></td>
							<td class="rowColumn" contenteditable="false"></td>
							<td class="rowColumn" contenteditable="false"></td>
							<td class="rowColumn" contenteditable="false"></td>
							<td class="rowColumn" contenteditable="false"></td>
							<td class="edit-remove-btn">
		                      <button type="button" class="edit-btn" aria-label="수정 버튼">
		                        <i class="fas fa-pen"></i>
		                      </button>
		                      <button type="button" class="delete-btn" aria-label="삭제 버튼" 
		                      onclick="location.href='${pageContext.servletContext.contextPath}/pay/delete?no=${pay.payNo}'">
		                        <i class="fas fa-trash-alt"></i>
		                      </button>
		                    </td>
							</c:when>
						</c:choose>
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

 
 <div id="myModal" class="modal">
 
      <!-- Modal content -->
      <div class="modal-content">
                <p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 24pt;"></span></b></span></p>
                <p style="text-align: center; line-height: 1.5;"><br />
                
                <form action="${pageContext.servletContext.contextPath}/pay/update" method="post">
					
					    <input type="hidden" name="payNo" id="payNo" value=""><br>
					    <input type="hidden" name="studentNo" id="studentNo" value=""><br>
						<input type="hidden" name="classNo" id="classNo" value="">
						학생명 <input type="text" name="studentName" id="studentName"  value="" readonly><br>
						강의명 <input type="text" name="classNameList" id="classNameList" value="" readonly><br>
						수강료 <input type="number" name="tution" id="tution" value="" readonly><br>
						납입현황  <select name="payYn">
								 <option value="납부">납부</option>
								 <option value="미납">미납</option>
							  </select><br>
						할인수단 <input type="radio" name="discountNo" id="dis1" value="1">친구
							  <input type="radio" name="discountNo" id="dis2" value="2">기간
							  <input type="radio" name="discountNo" id="dis3" value="3">없음<br>
						결제금액 <input type="number" name="payment" value=""><br>
						결제수단 <select name="payOption">
								 <option value="--" selected id="option1">--</option>
								 <option value="카드">카드</option>
								 <option value="카드">현금</option>
							  </select><br>
						납입일 <input type="date" name="payDate" value=""><br>
					
					<button type="submit">수정</button>
					<button type="button" onclick="location.href='${pageContext.servletContext.contextPath}/pay/detail?no=${ payUpdate.payNo }'">취소</button>
			</form>
                
            
                <p><br /></p>
            <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" onClick="close_pop();">
                <span class="pop_bt" style="font-size: 13pt;" >
                     닫기
                </span>
            </div>
      </div>
 
    </div>




  </main>
<script>
		
		$(document).ready(function () {
			$('#payList').tablesorter();
		});
		
		const link = "${ pageContext.servletContext.contextPath }/pay/list";
		const searchLink = "${ pageContext.servletContext.contextPath }/pay/search";

		/* 원하는 페이지 클릭시 실행되는 콜백 함수 */
		function pageButtonAction(text) {
			location.href = link + "?currentPage=" + text;
		}

		function searchPageButtonAction(text) {
			location.href = searchLink + "?currentPage=" + text + "&searchOption=${requestScope.searchOption}&searchValue=${requestScope.searchValue}";
		}

		
		if(document.getElementById("searchPrevPage")){
			const $searchPrevPage = document.getElementById("searchPrevPage");
			$searchPrevPage.onclick = function(){
				location.href = searchLink + "?currentPage=${ requestScope.pageInfo.pageNo - 1 }&searchOption=${requestScope.searchOption}&searchValue=${requestScope.searchValue}";
			}
		}

		if(document.getElementById("searchNextPage")){
			const $searchNextPage = document.getElementById("searchNextPage");
			$searchNextPage.onclick = function(){
				location.href = searchLink + "?currentPage=${ requestScope.pageInfo.pageNo + 1 }&searchOption=${requestScope.searchOption}&searchValue=${requestScope.searchValue}";
			}
		}


		if(document.getElementById("prevPage")){
			const $prevPage = document.getElementById("prevPage");
			$prevPage.onclick = function(){
				location.href = link + "?currentPage=${ requestScope.pageInfo.pageNo - 1 }";
			}
		}

		if(document.getElementById("nextPage")){
			const $nextPage = document.getElementById("nextPage");
			$nextPage.onclick = function(){
				location.href = link + "?currentPage=${ requestScope.pageInfo.pageNo + 1 }";
			}
		}
		
	
		 $(".edit-btn").click(function() {
			 if(document.getElementsByTagName("td")) {
					const $tds = document.getElementsByTagName("td");
					for(var i = 0 ; i < $tds.length ; i++) {
				/* td태그 클릭 시 테이블의 첫 번째 인덱스에 위치한 No를 가지고 detail로 이동 */
					$tds[i].onclick = function() {
						const no = this.parentNode.children[0].innerText;
						console.log(no);
						$.ajax({
							 url:"update",
							 type:"GET",
							 data:{no:no},
							 success:function(data){
								 var payNo = data.payNo;
								 var payYn = data.payYn;
								 var payOption = data.payOption;
								 var payment = data.payment;
								 var payDate = data.payDate;
								 var className = data.classDTO.className;
								 var classPayment = data.payNo;
								 var payNo = data.payNo;
								 var payNo = data.payNo;
								 var payNo = data.payNo;
								 var payNo = data.payNo;
								 
								 $('#myModal').show();
								 
								 
							 }
						 });
						
						}
					}
				}

     	 });
    
		 
		 
	     function close_pop(flag) {
	          $('#myModal').hide();
	     };

		
   
	</script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
</body>
</html>