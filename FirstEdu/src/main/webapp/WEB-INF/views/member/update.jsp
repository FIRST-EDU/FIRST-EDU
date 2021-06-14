<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<title> 조직 관리 &gt; 직원 수정 | FIRST EDU</title>
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

	<%-- 	<input type="hidden" name = "no" value="${updateMember.no}"> --%>
	<main class="common-background">
      <div class="container">
        <div class="row">
          <div class="col-sm-4 col-md-6">
            <form class="common-card teacher-detail-card" action="${ pageContext.servletContext.contextPath }/member/update" method="post">
              <section class="teacher-input-box">
                <article class="teacher-input-form">
                  <div class="input-group">
                    <input class="form-input" type="hidden" name="no" id="no"
					value="${updateMember.no}"/>
                  </div>
                </article>
                <article class="teacher-input-form">
                  <label>직급코드</label>
                    <div class="select-group">
                      <select class="form-select" name="jobCode" id="jobCode">
                        <option value="J1">원장</option>
                        <option value="J2">부원장</option>
                        <option value="J3">팀장</option>
                        <option value="J4">선생님</option>
                        <option value="J5">인턴</option>
                      </select>
                      <i class="fas fa-caret-down" aria-hidden></i>
                    </div>
                </article>
                <article class="teacher-input-form">
                  <label>아이디</label>
                  <div class="input-group">
                    <input class="form-input" type="text" name="id" id="id" value="${updateMember.id}"/>
                  </div>
                </article>
                <article class="teacher-input-form">
                  <label>이름</label>
                  <div class="input-group"><input class="form-input" name="name" value="${updateMember.name}"/>
                  </div>
                </article>  
                <article class="teacher-input-form">
                  <label>이메일</label>
                  <div class="input-group"><input class="form-input" type="email" name="email" value="${updateMember.email}"/></div>
                </article>
				<article class="teacher-input-form">
                  <label>휴대전화</label>
                  <div class="input-group"><input class="form-input" name="phone" value="${updateMember.phone}"/></div>
                </article>
				<article class="teacher-input-form">
                  <label>우편번호</label>
                  <div class="input-group">
                    <input class="form-input" type="text" name="zipCode" id="zipCode"/>
                  </div>
                  <button type="button" class="btn-outlined-primary btn-basic" value="검색" id="searchZipCode">검색</button>
                </article>

                <article class="teacher-input-form">
                  <label>주소</label>
                  <div class="input-group">
                    <input class="form-input" type="text" name="address1" id="address1"/>
                  </div>
                </article>

                <article class="teacher-input-form">
                  <label>상세주소</label>
                  <div class="input-group">
                    <input class="form-input" name="address2" id="address2"/>
                  </div>
                </article>
                
                <article class="teacher-input-form">
                  <label>권한</label>
                  <div class="select-group" >
                    <select name="role">
						<option value="ADMIN">ADMIN</option>
						<option value="USER">USER</option>
					</select>
                  </div>
                </article>

				<!-- <input type="button" value="검색" class="btn btn-yg" id="searchZipCode" readonly> -->
				
				<article class="teacher-input-btn">
                  <button type="reset" class="btn-fill-seconary btn-basic cancel-board-btn" value="메인으로" id="goMain"
				onclick="location.href='${ pageContext.servletContext.contextPath }'">취소</button>
                  <div>
                    <button type="submit" class="btn-fill-primary btn-basic confirm-btn" value="수정하기">수정</button>
                    <button type="button" class="btn-fill-seconary btn-basic delete-b-btn">삭제</button>
                  </div>
                </article>
              </section>
				<div class="modal complete-input-board-modal">
                <div class="modal-content">
                  <strong>직원 수정하기</strong>
                  <p>직원을 수정하시겠습니까?</p>
                    <div class="popup-2btn">
                      <button type="button" class="btn-fill-seconary btn-popup back-btn">취소</button>
                      <!-- <button type="submit" class="btn-fill-primary btn-popup complete-btn">확인</button> -->
                      <button type="submit" class="btn-fill-primary btn-popup confirm-btn" value="수정하기">확인</button>
                    </div>
                </div>
              </div>
            </form>
          </div>
          <div class="col-sm-4 col-md-6">
            <section class="common-card teacher-edit-img">
              <img src="${ pageContext.servletContext.contextPath }/resources/assets/png/teacher-list.png" alt="">
            </section>
            </div>
        </div>
      </div>
    </main>
    
    <div class="modal cancel-board-modal">
      <div class="modal-content">
        <strong>직원 수정 취소</strong>
        <p>직원 수정을 취소하시겠습니까?</p>
          <div class="popup-2btn">
            <button type="button" class="btn-fill-seconary btn-popup back-btn back-btn">취소</button>
            <a class="btn-fill-primary btn-popup complete-btn">확인</a>
          </div>
      </div>
    </div>

    <div class="modal delete-board-modal">
    <div class="modal-content">
      <strong>직원 삭제하기</strong>
      <p>직원을 삭제하시겠습니까?</p>
        <div class="popup-2btn">
          <button type="button" class="btn-fill-seconary btn-popup delete-board-btn">삭제</button>
          <button type="button" class="btn-fill-primary btn-popup back-btn">취소</button>
        </div>
    </div>
  </div>
    
	<!-- 다음 우편번호 api -->
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		const $searchZipCode = document.getElementById("searchZipCode");
		const $goMain = document.getElementById("goMain");
		
		$searchZipCode.onclick = function(){
			
			new daum.Postcode({
				oncomplete : function(data){
					document.getElementById("zipCode").value = data.zonecode;
					document.getElementById("address1").value = data.address;
					document.getElementById("address2").focus();
				}
			}).open();
		}
		$goMain.onclick = function() {
			location.href = "${ pageContext.servletContext.contextPath}";
		}
	</script>
	
<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/teacherInput.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/modal.js"></script>


</body>
</html>