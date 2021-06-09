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
    <link rel="shortcut icon" type="image/png" sizes="32x32" href="${ pageContext.servletContext.contextPath }/favicon-32x32.png" />
    <link rel="shortcut icon" type="image/png" sizes="16x16" href="${ pageContext.servletContext.contextPath }/favicon-16x16.png" />
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
        #dis1,#dis2,#dis3 {
        	display:block; !important
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
            	<form action="${pageContext.servletContext.contextPath}/pay/update" method="post">
					    <input type="hidden" name="payNo" id="payNo" value=""><br>
						학생명 <input type="text" name="studentName" id="studentName"  value="" readonly><br>
						강의명 <input type="text" name="className" id="className" value="" readonly><br>
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
					<button type="submit" class="btn-fill-primary btn-basic storage-input-btn">수정</button>
					<button type="button" class="btn-fill-primary btn-basic storage-input-btn" onClick="close_pop();">취소</button>
				</form>          
      	 </div>
    </div>

  </main>
	<script>
	/* 헤더 클릭 시 정렬되게 하는 라이브러리 */
		$(document).ready(function() {
			$('#payList').tablesorter();
		});

	/* 페이징 처리 start */
		const link = "${ pageContext.servletContext.contextPath }/pay/list";
		const searchLink = "${ pageContext.servletContext.contextPath }/pay/search";

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
		
		/* 수정 버튼 클릭 시 발동되는 함수 start */
		$(".edit-btn").click(function() {
			if (document.getElementsByTagName("td")) {
				const $tds = document.getElementsByTagName("td");
				for (var i = 0; i < $tds.length; i++) {
					$tds[i].onclick = function() {
						const no = this.parentNode.children[0].innerText;
						console.log(no);
						$.ajax({
								url : "update",
								type : "GET",
								data : {no : no},
								success : function(data) {
									var payNo = data.payNo;
									$("#payNo").attr("value", payNo);

									var className = data.classDTO.className;
									$("#className").attr("value",className);

									var classPayment = data.classDTO.classPayment;
									$("#tution").attr("value",classPayment);

									var studentName = data.student.studentName;
									$("#studentName").attr("value",studentName);

									var payYn = data.payYn;
									if (payYn == '납부') {
										$("#payYn option:eq(0)").prop("selected",true);
									} else if (payYn == '미납') {
										$("#payYn option:eq(1)").prop("selected",true);
									}

									if (data.discount != null) {
										var discountReason = data.discount.discountReason;
										if (discountReason == '친구') {
											$("input:radio[id=dis1]").prop("checked",true);
										} else if (discountReason == '기간') {
											$("input:radio[id=dis2]").prop("checked",true);
										} else if (discountReason == '없음') {
											$("input:radio[id=dis3]").prop("checked",true);
										}
									}

									var payOption = data.payOption;
									$("#payOption option:selected").attr("value",payOption);
									$('#myModal').show();
								}
							});

						}
					}
				}

			});

		/* 취소버튼 클릭 시 모달창 숨김 */
		function close_pop(flag) {
			$('#myModal').hide();
		};

		/* 할인 옵션 선택 시 할인률이 적용 */
		$("input:radio").click(function() {
			var tution = document.getElementById('tution').value;

			if ($('input:radio[id=dis1]').is(':checked') == true) {
				var disTution1 = tution - (tution * 0.1);
				$('input[name=payment]').attr('value', disTution1);
			}
			if ($('input:radio[id=dis2]').is(':checked') == true) {
				var disTution2 = tution - (tution * 0.05);
				$('input[name=payment]').attr('value', disTution2);
			}
			if ($('input:radio[id=dis3]').is(':checked') == true) {
				$('input[name=payment]').attr('value', tution);
			}
		})

		/* 미납옵션 선택 시 하위의 옵션들을 선택할 수 없게 막아놓는 JS Start */
		$(function() {
			$(document).on("change", "select[name=payYn]", function() {
				var value = $(this).find("option:selected").val();
				var discountText = $("input[name=discountNo]");
				var paymentText = $("input[name=payment]");
				var payOptionText = $("select[name=payOption]");
				var payDateText = $("input[name=payDate]");
				var flag = false;
				if (value == '미납') {
					flag = true;
					$(paymentText).val('0');
					$(payDateText).val('0001-01-01');
				}
				/* $("#option1").prop("selected",true); */
				$("#dis3").prop("checked", true);
				$(paymentText).attr("disabled", flag);
				$(payDateText).attr("disabled", flag);
				$(payOptionText).attr("disabled", flag);
			});

		});

		/* form 태그 내부에 disabled 속성으로 된 태그의 데이터는 넘기지 못하기 때문에 submit버튼 클릭 시 disabled 속성을 지워줘야 한다. */
		$("form").submit(function() {
			$("input[name=payment]").removeAttr('disabled');
			$("input[name=payDate]").removeAttr('disabled');
			$("select[name=payOption]").removeAttr('disabled');

		})

	</script>
	
<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
</body>
</html>