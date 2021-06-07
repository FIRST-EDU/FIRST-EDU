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
	<title>비밀번호 찾기 | FIRST EDU</title>
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
<body>
	<jsp:include page="../common/commonNonMember.jsp"/>

	<main class="non-member-box">
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <article class="non-member-content">
              <div class="project-text">
                <h2 class="welcome">비밀번호 찾기</h2>
                <p class="introduce-project">
                  등록되어 있는 아이디 및 이메일 주소를 입력해 주세요.
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
                  />
                </div>
                <div class="send-number-btn">
                  <div class="non-member-input-group">
                    <i class="fas fa-at"></i>
                    <input
                      class="form-input-non-member"
                      type="email"
                      placeholder="이메일"
                    />
                  </div>
                  <button type="button" class="btn-outlined-primary btn-basic">
                    인증번호 전송
                  </button>
                </div>
                <div class="non-member-input-group">
                  <i class="fas fa-key"></i>
                  <input
                    class="form-input-non-member"
                    type="text"
                    placeholder="인증번호"
                  />
                </div>
                <div class="btn-right">
                  <button type="button" class="resend-number">
                    재전송 받기
                  </button>
                </div>
                <div class="btn-center">
                  <button type="submit" class="btn-fill-primary btn-long">
                    확인
                  </button>
                </div>
              </form>
            </article>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-4">
            <article class="forgot-page">
              <a href="/" class="go-login">
                <span>로그인 하러 가기</span>
              </a>
              <a href="/" class="forgot-id">
                <span>아이디 찾으러 가기</span>
              </a>
            </article>
          </div>
        </div>
      </div>
    </main>
</body>
</html>