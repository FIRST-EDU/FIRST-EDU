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
</head>
<body>
	<jsp:include page="../common/commonMember.jsp"/>

  <main class="common-background">
    <div class="container">
      <div class="row">
        <div class="col-sm-4">
          <section class="common-card storage-list-form-content">
            <section class="storage-form-content">
              <div class="tag-lb-dark btn-check sum-storage-price">총 결제금액 : 1,420,000</div>
              <form class="storage-search-form">
                <div class="select-group">
                  <select class="form-select">
                    <option value="1">번호</option>
                    <option value="2">학생명</option>
                    <option value="3">과목</option>
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
           <button type="button" class="btn-fill-primary btn-basic storage-input-btn">수납 입력</button>
         </section>
        </div>
      </div>

      <div class="row">
        <div class="col-sm-4">
          <section class="common-table-card storage-table-card">
              <table class="common-table storage-table ">
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
                  <tr>
                    <td>1</td>
                    <td>2021/04/07</td>
                    <td>정유미</td>
                    <td>1학년 초급 영어</td>
                    <td>300,000</td>
                    <td>
                      <span class="tag-light-blue">납부</span>
                    </td>
                    <td>카드</td>
                    <td>2021/05/08</td>
                    <td>친구</td>
                    <td>180,000</td>
                    <td class="edit-remove-btn">
                      <button type="button" class="edit-btn" aria-label="수정 버튼">
                        <i class="fas fa-pen"></i>
                      </button>
                      <button type="button" class="delete-btn" aria-label="삭제 버튼">
                        <i class="fas fa-trash-alt"></i>
                      </button>
                    </td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>2021/04/07</td>
                    <td>정유미</td>
                    <td>1학년 초급 영어</td>
                    <td>300,000</td>
                    <td>
                      <span class="tag-r-light">미납</span>
                    </td>
                    <td>카드</td>
                    <td>2021/05/08</td>
                    <td>친구</td>
                    <td>180,000</td>
                    <td class="edit-remove-btn">
                      <button type="button" class="edit-btn" aria-label="수정 버튼">
                        <i class="fas fa-pen"></i>
                      </button>
                      <button type="button" class="delete-btn" aria-label="삭제 버튼">
                        <i class="fas fa-trash-alt"></i>
                      </button>
                    </td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>2021/04/07</td>
                    <td>정유미</td>
                    <td>1학년 초급 영어</td>
                    <td>300,000</td>
                    <td>
                      <span class="tag-light-blue">납부</span>
                    </td>
                    <td>카드</td>
                    <td>2021/05/08</td>
                    <td>친구</td>
                    <td>180,000</td>
                    <td class="edit-remove-btn">
                      <button type="button" class="edit-btn" aria-label="수정 버튼">
                        <i class="fas fa-pen"></i>
                      </button>
                      <button type="button" class="delete-btn" aria-label="삭제 버튼">
                        <i class="fas fa-trash-alt"></i>
                      </button>
                    </td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>2021/04/07</td>
                    <td>정유미</td>
                    <td>1학년 초급 영어</td>
                    <td>300,000</td>
                    <td>
                      <span class="tag-r-light">미납</span>
                    </td>
                    <td>카드</td>
                    <td>2021/05/08</td>
                    <td>친구</td>
                    <td>180,000</td>
                    <td class="edit-remove-btn">
                      <button type="button" class="edit-btn" aria-label="수정 버튼">
                        <i class="fas fa-pen"></i>
                      </button>
                      <button type="button" class="delete-btn" aria-label="삭제 버튼">
                        <i class="fas fa-trash-alt"></i>
                      </button>
                    </td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>2021/04/07</td>
                    <td>정유미</td>
                    <td>1학년 초급 영어</td>
                    <td>300,000</td>
                    <td>
                      <span class="tag-light-blue">납부</span>
                    </td>
                    <td>카드</td>
                    <td>2021/05/08</td>
                    <td>친구</td>
                    <td>180,000</td>
                    <td class="edit-remove-btn">
                      <button type="button" class="edit-btn" aria-label="수정 버튼">
                        <i class="fas fa-pen"></i>
                      </button>
                      <button type="button" class="delete-btn" aria-label="삭제 버튼">
                        <i class="fas fa-trash-alt"></i>
                      </button>
                    </td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>2021/04/07</td>
                    <td>정유미</td>
                    <td>1학년 초급 영어</td>
                    <td>300,000</td>
                    <td>
                      <span class="tag-r-light">미납</span>
                    </td>
                    <td>카드</td>
                    <td>2021/05/08</td>
                    <td>친구</td>
                    <td>180,000</td>
                    <td class="edit-remove-btn">
                      <button type="button" class="edit-btn" aria-label="수정 버튼">
                        <i class="fas fa-pen"></i>
                      </button>
                      <button type="button" class="delete-btn" aria-label="삭제 버튼">
                        <i class="fas fa-trash-alt"></i>
                      </button>
                    </td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>2021/04/07</td>
                    <td>정유미</td>
                    <td>1학년 초급 영어</td>
                    <td>300,000</td>
                    <td>
                      <span class="tag-light-blue">납부</span>
                    </td>
                    <td>카드</td>
                    <td>2021/05/08</td>
                    <td>친구</td>
                    <td>180,000</td>
                    <td class="edit-remove-btn">
                      <button type="button" class="edit-btn" aria-label="수정 버튼">
                        <i class="fas fa-pen"></i>
                      </button>
                      <button type="button" class="delete-btn" aria-label="삭제 버튼">
                        <i class="fas fa-trash-alt"></i>
                      </button>
                    </td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>2021/04/07</td>
                    <td>정유미</td>
                    <td>1학년 초급 영어</td>
                    <td>300,000</td>
                    <td>
                      <span class="tag-r-light">미납</span>
                    </td>
                    <td>카드</td>
                    <td>2021/05/08</td>
                    <td>친구</td>
                    <td>180,000</td>
                    <td class="edit-remove-btn">
                      <button type="button" class="edit-btn" aria-label="수정 버튼">
                        <i class="fas fa-pen"></i>
                      </button>
                      <button type="button" class="delete-btn" aria-label="삭제 버튼">
                        <i class="fas fa-trash-alt"></i>
                      </button>
                    </td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>2021/04/07</td>
                    <td>정유미</td>
                    <td>1학년 초급 영어</td>
                    <td>300,000</td>
                    <td>
                      <span class="tag-light-blue">납부</span>
                    </td>
                    <td>카드</td>
                    <td>2021/05/08</td>
                    <td>친구</td>
                    <td>180,000</td>
                    <td class="edit-remove-btn">
                      <button type="button" class="edit-btn" aria-label="수정 버튼">
                        <i class="fas fa-pen"></i>
                      </button>
                      <button type="button" class="delete-btn" aria-label="삭제 버튼">
                        <i class="fas fa-trash-alt"></i>
                      </button>
                    </td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>2021/04/07</td>
                    <td>정유미</td>
                    <td>1학년 초급 영어</td>
                    <td>300,000</td>
                    <td>
                      <span class="tag-r-light">미납</span>
                    </td>
                    <td>카드</td>
                    <td>2021/05/08</td>
                    <td>친구</td>
                    <td>180,000</td>
                    <td class="edit-remove-btn">
                      <button type="button" class="edit-btn" aria-label="수정 버튼">
                        <i class="fas fa-pen"></i>
                      </button>
                      <button type="button" class="delete-btn" aria-label="삭제 버튼">
                        <i class="fas fa-trash-alt"></i>
                      </button>
                    </td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>2021/04/07</td>
                    <td>정유미</td>
                    <td>1학년 초급 영어</td>
                    <td>300,000</td>
                    <td>
                      <span class="tag-light-blue">납부</span>
                    </td>
                    <td>카드</td>
                    <td>2021/05/08</td>
                    <td>친구</td>
                    <td>180,000</td>
                    <td class="edit-remove-btn">
                      <button type="button" class="edit-btn" aria-label="수정 버튼">
                        <i class="fas fa-pen"></i>
                      </button>
                      <button type="button" class="delete-btn" aria-label="삭제 버튼">
                        <i class="fas fa-trash-alt"></i>
                      </button>
                    </td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>2021/04/07</td>
                    <td>정유미</td>
                    <td>1학년 초급 영어</td>
                    <td>300,000</td>
                    <td>
                      <span class="tag-r-light">미납</span>
                    </td>
                    <td>카드</td>
                    <td>2021/05/08</td>
                    <td>친구</td>
                    <td>180,000</td>
                    <td class="edit-remove-btn">
                      <button type="button" class="edit-btn" aria-label="수정 버튼">
                        <i class="fas fa-pen"></i>
                      </button>
                      <button type="button" class="delete-btn" aria-label="삭제 버튼">
                        <i class="fas fa-trash-alt"></i>
                      </button>
                    </td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>2021/04/07</td>
                    <td>정유미</td>
                    <td>1학년 초급 영어</td>
                    <td>300,000</td>
                    <td>
                      <span class="tag-light-blue">납부</span>
                    </td>
                    <td>카드</td>
                    <td>2021/05/08</td>
                    <td>친구</td>
                    <td>180,000</td>
                    <td class="edit-remove-btn">
                      <button type="button" class="edit-btn" aria-label="수정 버튼">
                        <i class="fas fa-pen"></i>
                      </button>
                      <button type="button" class="delete-btn" aria-label="삭제 버튼">
                        <i class="fas fa-trash-alt"></i>
                      </button>
                    </td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>2021/04/07</td>
                    <td>정유미</td>
                    <td>1학년 초급 영어</td>
                    <td>300,000</td>
                    <td>
                      <span class="tag-r-light">미납</span>
                    </td>
                    <td>카드</td>
                    <td>2021/05/08</td>
                    <td>친구</td>
                    <td>180,000</td>
                    <td class="edit-remove-btn">
                      <button type="button" class="edit-btn" aria-label="수정 버튼">
                        <i class="fas fa-pen"></i>
                      </button>
                      <button type="button" class="delete-btn" aria-label="삭제 버튼">
                        <i class="fas fa-trash-alt"></i>
                      </button>
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
          </section>
        </div>
      </div>
    </div>
  </main>

<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
</body>
</html>