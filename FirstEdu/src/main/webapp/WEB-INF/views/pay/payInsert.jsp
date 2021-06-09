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
                    <th scope="col">강의명</th>
                    <th scope="col">학년</th>
                    <th scope="col">전화번호</th>
                    <th style="display: none;"></th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="student" items="${studentList}">
				<tr>
					<td><c:out value="${ student.no }" /></td>
					<td><c:out value="${ student.studentName }" /></td>
					<td><c:out value="${ student.classDTO.className }" /></td>
					<td><c:out value="${ student.grade.gradeName }" /></td>
					<td><c:out value="${ student.studentPhone }" /></td>
					<td style="display: none;"><c:out
							value="${ student.classDTO.classPayment }" /></td>
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
                    <form class="checkbox-wrap">
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
                    </form>
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
                    <button type="button" class="btn-fill-seconary btn-basic"
                    onclick="location.href='${pageContext.servletContext.contextPath}/pay/list'">취소</button>
                    <button type="submit" class="btn-fill-primary btn-basic">확인</button>
                  </article>
                </section>
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

<script>
		const link = "${ pageContext.servletContext.contextPath }/pay/insertView";
		const searchLink = "${ pageContext.servletContext.contextPath }/pay/insertView";
		
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
		$("#studentList tr").click(
				function() {
					var tdArr = new Array();

					var tr = $(this);
					var td = tr.children();

					td.each(function(i) {
						tdArr.push(td.eq(i).text());
					});

					var stuNo = td.eq(0).text();
					var name = td.eq(1).text();
					var classPayment = td.eq(5).text();

					$.ajax({
						url : "classList",
						type : 'GET',
						data : {
							stuNo : stuNo
						},
						success : function(data) {

							for (i = 0; i < data.length; i++) {
								$("#classNo").append(
										'<option value="' + data[i].classInfo.no + '">'
												+ data[i].classDTO.className
												+ '</option>');

							}

						}
					});

					$('input[name=studentNo]').attr('value', stuNo);
					$('input[name=studentName]').attr('value', name);
					$('input[name=tution]').attr('value', classPayment);

				});

		/* 할인 수단 radio버튼 클릭 시 각각의 할인율을 적용하여 결제금액 input태그에 값 입력 Start */
		$("input:radio").click(function() {
			var tution = document.getElementById('tution').value;

			if ($('input:radio[id=checkFriend]').is(':checked') == true) {
				var disTution1 = tution - (tution * 0.1);
				$('input[name=payment]').attr('value', disTution1);
			}
			if ($('input:radio[id=checkMonth]').is(':checked') == true) {
				var disTution2 = tution - (tution * 0.05);
				$('input[name=payment]').attr('value', disTution2);
			}
			if ($('input:radio[id=checkNull]').is(':checked') == true) {
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
				$("#checkNull").prop("checked", true);
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

		/* td태그에 마우스 호버 시 pointer 스타일로 변경 Start */
		if (document.getElementsByTagName("td")) {
			const $tds = document.getElementsByTagName("td");
			for (var i = 0; i < $tds.length; i++) {

				$tds[i].onmouseenter = function() {
					this.parentNode.style.cursor = "pointer";
				}

			}
		}
	</script>


<div class="overlay" aria-hidden="true"></div>


<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/storageInput.js"></script>
</body>
</html>