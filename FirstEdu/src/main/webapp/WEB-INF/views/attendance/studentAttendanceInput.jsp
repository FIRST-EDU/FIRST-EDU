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
	<title> 출결 관리 &gt; 출결 입력 | FIRST EDU</title>
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
	<jsp:include page="../common/commonMember.jsp"/>

	<main class="common-background attendance">
    <form class="attendance-form">
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <section class="common-card attendance-class-card">
              <h1 class="visually-hidden">날짜 및 강의 선택</h1>
              <article class="date-align">
                <input class="attendance-date" id="#" type="date" name="attendance-date" value="2021-06-15">
                <label for="check-date"></label>
              </article>
              <article class="class-btn">
                <input type="radio" name="classBtn">
                <label for="classBtn" class="btn-fill-active btn-check btn-setting" onclick="setButton(this)">1학년 초급 수학</label>
                <input type="radio" name="classBtn">
                <label for="classBtn" class="btn-fill-active btn-check btn-setting" onclick="setButton(this)">1학년 초급 수학</label>
                <input type="radio" name="classBtn">
                <label for="classBtn" class="btn-fill-active btn-check btn-setting" onclick="setButton(this)">1학년 초급 수학</label>
                <input type="radio" name="classBtn">
                <label for="classBtn" class="btn-fill-active btn-check btn-setting" onclick="setButton(this)">1학년 초급 수학</label>
                <input type="radio" name="classBtn">
                <label for="classBtn" class="btn-fill-active btn-check btn-setting" onclick="setButton(this)">1학년 초급 수학</label>
                <input type="radio" name="classBtn">
                <label for="classBtn" class="btn-fill-active btn-check btn-setting" onclick="setButton(this)">1학년 초급 수학</label>
                <input type="radio" name="classBtn">
                <label for="classBtn" class="btn-fill-active btn-check btn-setting" onclick="setButton(this)">1학년 초급 수학</label>
                <input type="radio" name="classBtn">
                <label for="classBtn" class="btn-fill-active btn-check btn-setting" onclick="setButton(this)">1학년 초급 수학</label>
                <input type="radio" name="classBtn">
                <label for="classBtn" class="btn-fill-active btn-check btn-setting" onclick="setButton(this)">1학년 초급 수학</label>
                <input type="radio" name="classBtn">
                <label for="classBtn" class="btn-fill-active btn-check btn-setting" onclick="setButton(this)">1학년 초급 수학</label>
                <input type="radio" name="classBtn">
                <label for="classBtn" class="btn-fill-active btn-check btn-setting" onclick="setButton(this)">1학년 초급 수학</label>
                <input type="radio" name="classBtn">
                <label for="classBtn" class="btn-fill-active btn-check btn-setting" onclick="setButton(this)">1학년 초급 수학</label>
              </article>
            </section>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-4 col-md-9">
            <section class="common-card attendance-number-card">
              <article class="attendance-number-content">
                <h1 class="visually-hidden">출결 인원</h1>
                <div class="attendance-number-type">
                  <p>출석</p>
                  <strong>0</strong>
                </div>
                <hr class="borderline">
                <div class="attendance-number-type">
                  <p>조퇴</p>
                  <strong>0</strong>
                </div>
                <hr class="borderline">
                <div class="attendance-number-type">
                  <p>결석</p>
                  <strong>0</strong>
                </div>
                <hr class="borderline">
                <div class="attendance-number-type">
                  <p>지각</p>
                  <strong>0</strong>
                </div>
              </article>
            </section>
          </div>

          <div class="col-sm-4 col-md-3">
            <article class="common-card attendance-check-card">
              <button type="button" class="btn-fill-blue btn-long btn-margin all-attendance">전체 출석</button>
              <button type="submit" class="btn-fill-light-blue btn-long btn-margin">저장</button>
            </article>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-4">
            <article class="common-table-card student-attendance-input-table-card">
                <table class="common-table">
                  <thead>
                    <tr>
                      <th scope="col">번호</th>
                      <th scope="col">강의명</th>
                      <th scope="col">학생명</th>
                      <th scope="col">출결사항</th>
                      <th scope="col">비고</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>1</td>
                      <td>1학년 초급 수학</td>
                      <td>이지은</td>
                      <td>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">출석</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">조퇴</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">결석</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">지각</label>
                      </td>
                      <td>
                        <div class="attendance-memo">
                          <span>가족 모임</span>
                          <button type="button" class="edit-btn edit-setting">
                            <i class="fas fa-pen"></i>
                          </button>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>1학년 초급 수학</td>
                      <td>이지은</td>
                      <td>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">출석</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">조퇴</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">결석</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">지각</label>
                      </td>
                      <td>
                        <div class="attendance-memo">
                          <span>가족 모임</span>
                          <button type="button" class="edit-btn edit-setting">
                            <i class="fas fa-pen"></i>
                          </button>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>1학년 초급 수학</td>
                      <td>이지은</td>
                      <td>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">출석</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">조퇴</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">결석</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">지각</label>
                      </td>
                      <td>
                        <div class="attendance-memo">
                          <span>가족 모임</span>
                          <button type="button" class="edit-btn edit-setting">
                            <i class="fas fa-pen"></i>
                          </button>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>1학년 초급 수학</td>
                      <td>이지은</td>
                      <td>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">출석</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">조퇴</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">결석</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">지각</label>
                      </td>
                      <td>
                        <div class="attendance-memo">
                          <span>가족 모임</span>
                          <button type="button" class="edit-btn edit-setting">
                            <i class="fas fa-pen"></i>
                          </button>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>1학년 초급 수학</td>
                      <td>이지은</td>
                      <td>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">출석</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">조퇴</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">결석</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">지각</label>
                      </td>
                      <td>
                        <div class="attendance-memo">
                          <span>가족 모임</span>
                          <button type="button" class="edit-btn edit-setting">
                            <i class="fas fa-pen"></i>
                          </button>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>1학년 초급 수학</td>
                      <td>이지은</td>
                      <td>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">출석</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">조퇴</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">결석</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">지각</label>
                      </td>
                      <td>
                        <div class="attendance-memo">
                          <span>가족 모임</span>
                          <button type="button" class="edit-btn edit-setting">
                            <i class="fas fa-pen"></i>
                          </button>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>1학년 초급 수학</td>
                      <td>이지은</td>
                      <td>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">출석</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">조퇴</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">결석</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">지각</label>
                      </td>
                      <td>
                        <div class="attendance-memo">
                          <span>가족 모임</span>
                          <button type="button" class="edit-btn edit-setting">
                            <i class="fas fa-pen"></i>
                          </button>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>1학년 초급 수학</td>
                      <td>이지은</td>
                      <td>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">출석</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">조퇴</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">결석</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">지각</label>
                      </td>
                      <td>
                        <div class="attendance-memo">
                          <span>가족 모임</span>
                          <button type="button" class="edit-btn edit-setting">
                            <i class="fas fa-pen"></i>
                          </button>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>1학년 초급 수학</td>
                      <td>이지은</td>
                      <td>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">출석</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">조퇴</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">결석</label>
                        <input type="checkbox">
                        <label class="btn-outlined-gray btn-check btn-size">지각</label>
                      </td>
                      <td>
                        <div class="attendance-memo">
                          <span>가족 모임</span>
                          <button type="button" class="edit-btn edit-setting">
                            <i class="fas fa-pen"></i>
                          </button>
                        </div>
                      </td>
                    </tr>
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
              </article>
            </div>
        </div>
      </div>
    </form>
  </main>

  <script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
  <script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
  <script src="${ pageContext.servletContext.contextPath }/resources/js/attendanceInput.js"></script>
  </body>
</html>

