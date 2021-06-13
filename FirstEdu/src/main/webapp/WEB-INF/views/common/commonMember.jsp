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
	<title>회원 | FIRST EDU</title>
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
    <!-- Note: After Login -->
<header class="global-header">
      <div class="gnb">
        <div class="container">
          <div class="row">
            <div class="col-sm-4">
              <h1 class="visually-hidden">헤더</h1>
              <div class="global-header-wrapper">
                <div class="global-header-left">
                  <button
                  class="global-header-icon-button toggle-menu"
                  type="button"
                  aria-label="사이드바 토글 버튼"
                  >
                    <span class="material-icons open"> menu </span>
                    <span class="material-icons close"> menu_open </span>
                  </button>

                  <div class="global-header-search sm-hidden">
                    <div class="input-group sm-hidden">
                      <span class="material-icons"> search </span>
                      <input
                      class="form-input-search"
                      type="search"
                      placeholder="학생명을 입력하세요."
                      />
                    </div>
                    <section class="search-history">
                      <header class="search-history-header">
                        <h2 class="title">최근 검색어</h2>
                        <button type="button">전체 삭제</button>
                      </header>

                      <!-- Note: Exists Recent Search Term -->
                      <div class="search-history-content">
                        <ol class="search-history-list">
                          <li class="search-history-item">
                            <button class="word-button" type="button">김고딩</button>
                            <button
                            class="delete-button"
                            type="button"
                            aria-label="검색어 삭제"
                            >
                            <span class="material-icons">close</span>
                          </button>
                          </li>
                          <li class="search-history-item">
                            <button class="word-button" type="button">박고딩</button>
                            <button
                            class="delete-button"
                            type="button"
                            aria-label="검색어 삭제"
                            >
                            <span class="material-icons">close</span>
                          </button>
                          </li>
                          <li class="search-history-item">
                            <button class="word-button" type="button">윤고딩</button>
                            <button
                            class="delete-button"
                            type="button"
                            aria-label="검색어 삭제"
                            >
                            <span class="material-icons">close</span>
                            </button>
                          </li>
                        </ol>
                    </div>
                  </div>
                </div>

                <div class="global-header-right">
                  <div class="button-group">
                    <button
                    class="global-header-icon-button sm-only"
                    type="button"
                    aria-label="검색창 열기 버튼"
                    >
                    <span class="material-icons"> search </span>
                    </button>

                    <button
                    class="global-header-icon-button"
                    type="button"
                    aria-label="알람 확인 버튼"
                    >
                    <i class="fas fa-bell"></i>
                    <strong class="badge">5+</strong>
                    </button>

                    <button
                    class="global-header-icon-button"
                    type="button"
                    aria-label="출퇴근 버튼"
                    >
                    <i class="fas fa-user-clock"></i>
                    </button>

                    <div class="my-menu">
                      <button
                      class="my-menu-button"
                      type="button"
                      aria-label="마이메뉴 열기 버튼"
                      >
                        <img src="${ pageContext.servletContext.contextPath }/resources/assets/svg/undraw_profile.svg" alt="profile"/>
                        <strong class="user-name lg-only">강용승 선생님</strong>
                      </button>

                      <div class="my-menu-content">
                        <ul class="my-menu-list">
                          <li class="my-menu-item">
                            <a href="/" aria-label="마이홈">
                              <i class="fas fa-house-user"></i>
                              <span>마이홈</span>
                            </a>
                          </li>
                          <li class="my-menu-item">
                            <a href="/" aria-label="로그아웃">
                              <i class="fas fa-sign-out-alt"></i>
                              <span>로그아웃</span>
                            </a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div> <!-- gnb end -->

      <div class="lnb">
        <div class="container">
          <div class="row">
            <div class="col-sm-4">
              <div class="breadcrumb-point">
                <div class="breadcrumb">
                  <a href="/">
                    <i class="fas fa-home" aria-label="메인으로 가기"></i>
                  </a>
                  <p class="unicode" aria-hidden="true">&sol;</p>
                  <a href="/">
                    출결 관리
                  </a>
                  <p class="unicode" aria-hidden="true">&sol;</p>
                  <p>출결 입력</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div> <!-- lnb end -->
    </header>

  <aside class="side-gnb">
    <header class="side-gnb-header">
      <h1 class="logo">
        <a href="/">
          <img src="${ pageContext.servletContext.contextPath }/resources/assets/png/Basic Logo.png" alt="FIRST EDU" />
        </a>
      </h1>
    </header>

    <nav class="drawer-menu-all">
    <h2 class="visually-hidden">메뉴</h2>

    <strong class="drawer-menu-category">학생</strong>
    <div class="drawer-menu">
      <a class="drawer-menu-link" href="/">
        <i class="fas fa-user-friends" aria-hidden="true"></i>
        원생 관리
      </a>
    </div>

    <div class="drawer-menu">
      <a class="drawer-menu-link" href="/">
        <i class="fas fa-stopwatch" aria-hidden="true"></i>
        출결 관리
      </a>
    </div>

    <div class="drawer-menu is-grade">
      <button class="drawer-menu-button" type="button">
        <i class="fas fa-edit" aria-hidden="true"></i>
        성적 관리
        <span class="material-icons" aria-hidden="true">chevron_right</span>
      </button>

      <div class="drawer-menu-content">
        <ul class="drawer-menu-list">
          <li class="drawer-menu-item">
            <a href="/">
              시험 관리
            </a>
          </li>
          <li class="drawer-menu-item">
            <a href="/">
              시험 점수
            </a>
          </li>
        </ul>
      </div>
    </div>

    <div class="drawer-menu">
      <a class="drawer-menu-link" href="/">
        <i class="fas fa-file-invoice-dollar" aria-hidden="true"></i>
        수납 관리
      </a>
    </div>

    <div class="drawer-menu">
      <a class="drawer-menu-link" href="/">
        <i class="fas fa-comment-dots" aria-hidden="true"></i>
        상담 관리
      </a>

      <strong class="drawer-menu-category">선생님</strong>

      <div class="drawer-menu">
        <a class="drawer-menu-link" href="/">
          <i class="fas fa-business-time" aria-hidden="true"></i>
          근태 관리
        </a>
      </div>

      <div class="drawer-menu">
        <a class="drawer-menu-link" href="/">
          <i class="fas fa-chalkboard" aria-hidden="true"></i>
          수업 관리
        </a>
      </div>

      <div class="drawer-menu">
        <a class="drawer-menu-link" href="/">
          <i class="fas fa-sms" aria-hidden="true"></i>
          문자 관리
        </a>
        </button>


      <!-- Note: Login boss  -->
      <div class="drawer-menu boss is-boss">
        <button class="drawer-menu-button" type="button">
          <i class="fas fa-sitemap"></i>
          조직 관리
          <span class="material-icons" aria-hidden="true">chevron_right</span>
        </button>

        <div class="drawer-menu-content">
          <ul class="drawer-menu-list">
            <li class="drawer-menu-item">
              <a href="/">
                회사 정보
              </a>
            </li>
            <li class="drawer-menu-item">
              <a href="/">
                직원 목록
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </aside>


  <aside class="search-modal sm-only">
    <div class="container">
      <div class="row">
        <div class="col-sm-4">
          <header class="search-modal-header">
            <h1 class="visually-hidden">Search</h1>

            <div class="search-modal-form">
              <div class="input-group">
                <span class="material-icons" aria-hidden="true"> search </span>
                <input
                class="form-input-search"
                type="search"
                placeholder="학생명을 입력하세요."
                />
              </div>
              <button type="button" aria-label="검색창 닫기">
                <span class="material-icons">search_off</span>
              </button>
            </div>
          </header>

          <section class="search-history">
            <header class="search-history-header">
              <h2 class="title">최근 검색어</h2>
              <button type="button">전체 삭제</button>
            </header>

            <!-- Note: Exists Recent Search Term -->
            <div class="search-history-content">
              <ol class="search-history-list">
                <li class="search-history-item">
                  <button class="word-button" type="button">김고딩</button>
                  <button
                  class="delete-button"
                  type="button"
                  aria-label="검색어 삭제"
                  >
                  <span class="material-icons">close</span>
                </button>
              </li>
              <li class="search-history-item">
                <button class="word-button" type="button">박고딩</button>
                <button
                class="delete-button"
                type="button"
                aria-label="검색어 삭제"
                >
                <span class="material-icons">close</span>
              </button>
            </li>
            <li class="search-history-item">
              <button class="word-button" type="button">윤고딩</button>
              <button
              class="delete-button"
              type="button"
              aria-label="검색어 삭제"
              >
              <span class="material-icons">close</span>
            </button>
          </li>
        </ol>
      </div>

      <!-- Note: Doesn;t Exists Recent Search Term -->
      <div class="search-history-content">
        <p class="placeholder">최근 검색한 내역이 없습니다.</p>
      </div>
          </section>
        </div>
      </div>
    </div>
  </aside>

  <div class="overlay" aria-hidden="true"></div>


  <script src="${ pageContext.servletContext.contextPath }/resources/js/myMenu.js"></script>
  <script src="${ pageContext.servletContext.contextPath }/resources/js/searchHistory.js"></script>
</body>
</html>