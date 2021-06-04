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
	<title>로그인 | FIRST EDU</title>
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
</head>
<body class="non-member-page-background">
	<jsp:include page="../common/commonNonMember.jsp"/>
    
	<section class="non-member-box">
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <article class="non-member-content">
              <div class="project-text">
                <h2 class="welcome">환영합니다!</h2>
                <p class="introduce-project">
                  학원 관리 프로그램 FIRST EDU 입니다.
                </p>
              </div>
             </article>
           </div>
         </div>
          
          <div class="row">
            <div class="col-sm-4">
              <article class="non-member-card">
                <form action="#">
                  <div class="non-member-input-group">
                    <i class="fas fa-user-circle"></i>
                    <input
                    class="form-input-non-member"
                    type="text"
                    placeholder="아이디"
                    autocomplete="new-password"
                    />
                  </div>
                  <div class="non-member-input-group">
                    <i class="fas fa-unlock-alt"></i>
                    <input
                    class="form-input-non-member"
                    type="password"
                    placeholder="비밀번호"
                    autocomplete="new-password"
                    />
                  </div>
                  <div class="check-wrap">
                    <input
                    type="checkbox"
                    class="save-id-input"
                    id="check-save-id"
                    />
                    <label for="check-save-id" class="check-save-id"> </label>
                    <span class="save-id">아이디 저장</span>
                  </div>
                  <div class="btn-center">
                    <button type="submit" class="btn-fill-primary btn-long">
                      로그인
                    </button>
                  </div>
                </form>
              </article><!-- non-member-card end -->
            </div>
          </div><!-- row end -->
          
          <div class="row">
            <div class="col-sm-4">
              <article class="forgot-page">
              <a href="/" class="forgot-id">
                <span>아이디를 잊으셨나요?</span>
              </a>
              <a href="/" class="forgot-pwd">
                <span>비밀번호를 잊으셨나요?</span>
              </a>
            </article>
          </div>
        </div>
      </div><!-- container end -->
    </section>
</body>
</html>