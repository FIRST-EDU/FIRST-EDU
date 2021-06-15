<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title> 성적 관리 &gt; 시험 상세 | FIRST EDU</title>
    <link rel="stylesheet" href="./style.css" />
    <link rel="stylesheet" href="./fullCalendar.css" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Material+Icons"
      rel="stylesheet"
    />
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png" />
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png" />
    <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png" />
    <link rel="manifest" href="/site.webmanifest" />
    <link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5e72e4" />
    <meta name="msapplication-TileColor" content="#da532c" />
    <meta name="theme-color" content="#ffffff" />
    <script
      src="https://kit.fontawesome.com/11694e3acf.js"
      crossorigin="anonymous"
    ></script>
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
                        <img src="./assets/svg/undraw_profile.svg" alt="profile"/>
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
                    성적 관리
                  </a>
                  <p class="unicode" aria-hidden="true">&sol;</p>
                  <p>시험 상세</p>
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
            <img src="./assets/png/Basic Logo.png" alt="FIRST EDU" />
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
            <li class="drawer-menu-item is-active">
              <a href="/">
                시험 일정
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
            <i class="fas fa-file-alt" aria-hidden="true"></i>
            업무 관리
          </a>
        </div>
        
        <div class="drawer-menu">
          <a class="drawer-menu-link" href="/">
            <i class="fas fa-business-time" aria-hidden="true"></i>
            근태 관리
          </a>
        </div>
        
        <div class="drawer-menu is-class">
          <button class="drawer-menu-button" type="button">
            <i class="fas fa-chalkboard" aria-hidden="true"></i>
            수업 관리
            <span class="material-icons" aria-hidden="true">chevron_right</span>
          </button>
          
          <div class="drawer-menu-content">
            <ul class="drawer-menu-list">
              <li class="drawer-menu-item">
                <a href="/">
                  시간표 관리
                </a>
              </li>
              <li class="drawer-menu-item">
                <a href="/">
                  과목 관리
                </a>
              </li>
            </ul>
          </div>
        </div>
        
        <div class="drawer-menu is-sms">
          <button class="drawer-menu-button" type="button">
            <i class="fas fa-sms" aria-hidden="true"></i>
            문자 관리
            <span class="material-icons" aria-hidden="true">chevron_right</span>
          </button>
          
          <div class="drawer-menu-content">
            <ul class="drawer-menu-list">
              <li class="drawer-menu-item">
                <a href="/">
                  문자 목록
                </a>
              </li>
              <li class="drawer-menu-item">
                <a href="/">
                  문자 전송
                </a>
              </li>
            </ul>
          </div>
        </div>
        
        <div class="drawer-menu">
          <a class="drawer-menu-link" href="/">
            <i class="fas fa-clipboard" aria-hidden="true"></i>
            자료실
          </a>
        </div>
        
        <!-- Note: Login boss  -->
        <div class="drawer-menu boss is-boss">
          <button class="drawer-menu-button" type="button">
            <i class="fas fa-sitemap"></i>
            조직 관리
            <span class="material-icons" aria-hidden="true">chevron_right</span>
          </button>
          
          <div class="drawer-menu-content">
            <ul class="drawer-menu-list">
              <li class="drawer-menu-item is-active">
                <a href="/">
                  회사 정보
                </a>
              </li>
              <li class="drawer-menu-item">
                <a href="/">
                  운영 권한 관리
                </a>
              </li>
              <li class="drawer-menu-item">
                <a href="/">
                  직원 목록
                </a>
              </li>
              <li class="drawer-menu-item">
                <a href="/">
                  직원 등록
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
                <div class="input-group is-active">
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
  
    <main class="common-background">
      <div class="container">
        <div class="row">
        <div class="col-sm-4">
          <section class="common-card storage-list-form-content">
            <article class="storage-form-content">
              <div class="tag-lb-dark btn-check sum-storage-price">총 성적 수 : 10</div>
            </article>

            <article class="exam-lock">
              <button type="button" class="lock-event">
                <i class="fas fa-lock"></i>
                <i class="fas fa-unlock"></i>
              </button>
            </article>
          </section>
        </div>
      </div>

        <div class="row">
          <div class="col-sm-4">
            <section class="common-table-card">
                <table class="common-table exam-detail-table">
                  <tbody>
                    <tr>
                      <th scope="row">등록번호</th>
                      <td>1</td>
                      <th scope="row">시작일</th>
                      <td>
                        <div class="date-align">
                          <input class="attendance-date" id="#" type="date" name="attendance-date" value="2021-06-15" readonly>
                          <label for="check-date"></label>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">시험종류</th>
                      <td>모의고사</td>
                      <th scope="row">종료일</th>
                      <td>
                        <div class="date-align">
                          <input class="attendance-date" id="#" type="date" name="attendance-date" value="2021-06-15" readonly>
                          <label for="check-date"></label>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">시험명</th>
                      <td>
                        <div class="input-group">
                          <input class="form-input" type="text" value="모의고사" readonly/>
                        </div>
                      </td>
                      <th scope="row" rowspan="2">비고</th>
                      <td rowspan="2">
                        <textarea name="" id=""  readonly></textarea>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">시험대상</th>
                      <td>
                          고1
                      </td>
                    </tr>
                  </tbody>
                </table>
            </section>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-4">
            <section class="common-table-card">
              <table class="common-table exam-edit-table">
                <thead>
                  <tr>
                    <th scope="col">학생번호</th>
                    <th scope="col">학생명</th>
                    <th scope="col">학년</th>
                    <th scope="col">과목구분</th>
                    <th scope="col">세부과목</th>
                    <th scope="col">목표점수</th>
                    <th scope="col">점수</th>
                    <th scope="col">석차</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <div class="input-group">
                        <input class="form-input" type="text" value="정유미" readonly/>
                      </div>
                    </td>
                    <td>
                      <div class="input-group">
                        <input class="form-input" type="text" value="정유미" readonly/>
                      </div>
                    </td>
                    <td>
                      <div class="input-group">
                        <input class="form-input" type="text" value="정유미" readonly/>
                      </div>
                    </td>
                    <td>
                      <div class="input-group">
                        <input class="form-input" type="text" value="정유미" readonly/>
                      </div>
                    </td>
                    <td>
                      <div class="input-group">
                        <input class="form-input" type="text" value="정유미" readonly/>
                      </div>
                    </td>
                    <td>
                      <div class="input-group">
                        <input class="form-input" type="text" value="정유미" readonly/>
                      </div>
                    </td>
                    <td>
                      <div class="input-group">
                        <input class="form-input" type="text" value="정유미" readonly/>
                      </div>
                    </td>
                    <td>
                      <div class="input-group">
                        <input class="form-input" type="text" value="정유미" readonly/>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="8">
                      <button type="button">
                        <i class="fas fa-plus-circle"></i>
                      </button>
                    </td>
                  </tr>
                </tbody>
              </table>
            </section>
          </div>
        </div>
      </div>
    </main>


<div class="overlay" aria-hidden="true"></div>

<script src="./js/myMenu.js"></script>
<script src="./js/sideGnb.js"></script>
<script src="./js/searchHistory.js"></script>
<script src="./js/drawerMenu.js"></script>
<script src="./js/examDetail.js"></script>
</body>
</html>