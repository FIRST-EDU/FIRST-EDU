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
	<title> 상담 관리 &gt; 상담 목록 | FIRST EDU</title>
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

	<main class="common-background">
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <section class="common-card consult-list-form-content">
              <section class="consult-form-content">
                <div class="tag-lb-dark btn-check today-consult-list">금일 상담 내역 : 건</div>
                <form class="consult-search-form">
                  <div class="select-group">
                    <select class="form-select">
                      <option value="1">번호</option>
                      <option value="2">학생명</option>
                      <option value="3">담당자</option>
                    </select>
                    <i class="fas fa-caret-down" aria-hidden></i>
                    </div>
                    <div class="input-group">
                      <span class="material-icons"> search </span>
                      <input
                        class="form-input"
                        type="search"
                        placeholder="검색어를 입력하세요."
                      />
                    </div>
                </form>
            </section>
              <button type="button" class="btn-fill-primary btn-basic consult-input-btn"
              onclick="location.href='${pageContext.servletContext.contextPath}/consult/insertView'">상담 입력</button>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-4">
            <section class="common-table-card consult-table-card">
                <table class="common-table consult-table ">
                  <thead>
                    <tr>
                      <th scope="col">번호</th>
                      <th scope="col">상담일</th>
                      <th scope="col">학생명</th>
                      <th scope="col">상담자</th>
                      <th scope="col">상담방법</th>
                      <th scope="col">상담내용</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>1</td>
                      <td>2021/04/07</td>
                      <td>정유미</td>
                      <td>강용승</td>
                      <td>
                        <span class="tag-light-blue">
                          대면
                        </span>
                      </td>
                      <td class="consult-text-overflow">진로에 대한 많은 고민이 있음. 방향을 잡는 것이 최우선.</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>2021/04/07</td>
                      <td>정유미</td>
                      <td>강용승</td>
                      <td>
                        <span class="tag-violet">
                          비대면
                        </span>
                      </td>
                      <td class="consult-text-overflow">진로에 대한 많은 고민이 있음. 은 고민이 있음. 은 고민이 있음. 은 고민이 있음. 방향을 잡는 것이 최우선.</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>2021/04/07</td>
                      <td>정유미</td>
                      <td>강용승</td>
                      <td>
                        <span class="tag-light-blue">
                          대면
                        </span>
                      </td>
                      <td class="consult-text-overflow">진로에 대한 많은 고민이 있음. 방향을 잡는 것이 최우선.</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>2021/04/07</td>
                      <td>정유미</td>
                      <td>강용승</td>
                      <td>
                        <span class="tag-light-blue">
                          대면
                        </span>
                      </td>
                      <td class="consult-text-overflow">진로에 대한 많은 고민이 있음. 방향을 잡는 것이 최우선.</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>2021/04/07</td>
                      <td>정유미</td>
                      <td>강용승</td>
                      <td>
                        <span class="tag-violet">
                          비대면
                        </span>
                      </td>
                      <td class="consult-text-overflow">진로에 대한 많은 고민이 있음. 은 고민이 있음. 은 고민이 있음. 은 고민이 있음. 방향을 잡는 것이 최우선.</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>2021/04/07</td>
                      <td>정유미</td>
                      <td>강용승</td>
                      <td>
                        <span class="tag-light-blue">
                          대면
                        </span>
                      </td>
                      <td class="consult-text-overflow">진로에 대한 많은 고민이 있음. 방향을 잡는 것이 최우선.</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>2021/04/07</td>
                      <td>정유미</td>
                      <td>강용승</td>
                      <td>
                        <span class="tag-light-blue">
                          대면
                        </span>
                      </td>
                      <td class="consult-text-overflow">진로에 대한 많은 고민이 있음. 방향을 잡는 것이 최우선.</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>2021/04/07</td>
                      <td>정유미</td>
                      <td>강용승</td>
                      <td>
                        <span class="tag-violet">
                          비대면
                        </span>
                      </td>
                      <td class="consult-text-overflow">진로에 대한 많은 고민이 있음. 은 고민이 있음. 은 고민이 있음. 은 고민이 있음. 방향을 잡는 것이 최우선.</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>2021/04/07</td>
                      <td>정유미</td>
                      <td>강용승</td>
                      <td>
                        <span class="tag-light-blue">
                          대면
                        </span>
                      </td>
                      <td class="consult-text-overflow">진로에 대한 많은 고민이 있음. 방향을 잡는 것이 최우선.</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>2021/04/07</td>
                      <td>정유미</td>
                      <td>강용승</td>
                      <td>
                        <span class="tag-r-light">
                          학부모 동참
                        </span>
                      </td>
                      <td class="consult-text-overflow">진로에 대한 많은 고민이 있음. 방향을 잡는 것이 최우선.</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>2021/04/07</td>
                      <td>정유미</td>
                      <td>강용승</td>
                      <td>
                        <span class="tag-violet">
                          비대면
                        </span>
                      </td>
                      <td class="consult-text-overflow">진로에 대한 많은 고민이 있음. 은 고민이 있음. 은 고민이 있음. 은 고민이 있음. 방향을 잡는 것이 최우선.</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>2021/04/07</td>
                      <td>정유미</td>
                      <td>강용승</td>
                      <td>
                        <span class="tag-violet">
                          비대면
                        </span>
                      </td>
                      <td class="consult-text-overflow">진로에 대한 많은 고민이 있음. 은 고민이 있음. 은 고민이 있음. 은 고민이 있음. 방향을 잡는 것이 최우선.</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>2021/04/07</td>
                      <td>정유미</td>
                      <td>강용승</td>
                      <td>
                        <span class="tag-r-light">
                          학부모 동참
                        </span>
                      </td>
                      <td class="consult-text-overflow">진로에 대한 많은 고민이 있음. 방향을 잡는 것이 최우선.</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>2021/04/07</td>
                      <td>정유미</td>
                      <td>강용승</td>
                      <td>
                        <span class="tag-r-light">
                          학부모 동참
                        </span>
                      </td>
                      <td class="consult-text-overflow">진로에 대한 많은 고민이 있음. 방향을 잡는 것이 최우선.</td>
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
            </section>
          </div>
        </div>
      </div>
    </main>

<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
</body>
</html>