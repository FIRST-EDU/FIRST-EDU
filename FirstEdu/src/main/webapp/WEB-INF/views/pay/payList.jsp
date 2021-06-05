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
               <form action="${pageContext.servletContext.contextPath }/pay/search" method="get">
                <div class="select-group">
                  <select class="form-select" name="searchOption" id="searchOption">
                    <option value="studentNo">번호</option>
                    <option value="studentName">학생명</option>
                    <option value="className">과목</option>
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
							<c:when test="${pay.payYn eq 'Y'}">
							<td><span class="tag-light-blue">납부</span></td>
							<td><c:out value="${ pay.payOption }" /></td>
							<td><c:out value="${ pay.payDate }" /></td>
							<td><c:out value="${ pay.discount.discountReason }" /></td>
							<td id="payment"><c:out value="${ pay.payment }" /></td>
							</c:when>
							<c:when test="${pay.payYn eq 'N'}">
							<td><span class="tag-r-light">미납</span></td>
							<td></td><td></td><td></td><td></td>
							</c:when>
						</c:choose>
					</tr>
				</c:forEach>
                </tbody>
              </table>

              <div class="pagenation">
                <button class="page-control page-prev" type="button">
                  <span class="material-icons"> chevron_left </span>
                </button>
                <ol class="page-list">
                  <li class="page-item">
                    <a href="/">1</a>
                  </li>
                  <li class="page-item">
                    <a href="/">2</a>
                  </li>
                  <li class="page-item is-active">
                    <a href="/">3</a>
                  </li>
                  <li class="page-item">
                    <a href="/">4</a>
                  </li>
                  <li class="page-item">
                    <a href="/">5</a>
                  </li>
                </ol>
                <button class="page-control page-next" type="button">
                  <span class="material-icons"> chevron_right </span>
                </button>
              </div>

              
          </section>
        </div>
      </div>

    </div>
  </main>
<script>
		$(document).ready(function () {
			$('#payList').tablesorter();
		});
		
		/* td태그에 마우스 호버시 pointer 스타일로 변경  */
		if(document.getElementsByTagName("td")) {
			const $tds = document.getElementsByTagName("td");
		/* td태그 클릭 시 테이블의 첫 번째 인덱스에 위치한 No를 가지고 detail로 이동 */
			for(var i = 0 ; i < $tds.length ; i++) {
			$tds[i].onclick = function() {
				const no = this.parentNode.children[0].innerText;
				location.href = "${pageContext.servletContext.contextPath}/pay/detail?no=" + no;
				}
			}
		}
		
		/* $("#searchList").click(function(){
			$(".totalPay").css('display') == 'none';
		}) */
		
		/* <script type="text/javascript"> */
 
       /*  function dis(){
            if($('.totalPay').css('display') == 'block'){
            	$('.totalPay').hide();
        	}else{
            	$('.totalPay').show();
        	}
        }  */
            
   
	</script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
</body>
</html>