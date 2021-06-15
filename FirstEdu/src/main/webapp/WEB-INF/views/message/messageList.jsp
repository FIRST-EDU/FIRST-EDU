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
	<title> 문자 관리 &gt; 문자 목록 | FIRST EDU</title>
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
                <div class="tag-lb-dark btn-check today-consult-list">총 문자 건 수 : 15건</div>
                <form class="consult-search-form">
                  <div class="select-group">
                    <select class="form-select">
                      <option value="1">전체</option>
                      <option value="2">번호</option>
                      <option value="3">학생명</option>
                      <option value="4">담당자</option>
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
              <a href="message-send.html" class="btn-fill-primary btn-basic consult-input-btn">문자 전송</a>
          </section>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-4">
            <section class="common-table-card message-table-card">
                <table class="common-table message-table ">
                  <thead>
                    <tr>
                      <th scope="col">번호</th>
                      <th scope="col">학생명</th>
                      <th scope="col">수신인</th>
                      <th scope="col">발신시간</th>
                      <th scope="col">발신내용</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>1</td>
                      <td>정유미</td>
                      <td>010-2341-2349</td>
                      <td>2021/04/07</td>
                      <td class="message-text-overflow">안녕하세요. FIRSTEDU 입니다. 어쩌고저쩌고 힘드네요.</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>정유미</td>
                      <td>010-2341-2349</td>
                      <td>2021/04/07</td>
                      <td class="message-text-overflow">안녕하세요. FIRSTEDU 입니다. 어쩌고저쩌고 힘드네요.</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>정유미</td>
                      <td>010-2341-2349</td>
                      <td>2021/04/07</td>
                      <td class="message-text-overflow">안녕하세요. FIRSTEDU 입니다. 어쩌고저쩌고 힘드네요.</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>정유미</td>
                      <td>010-2341-2349</td>
                      <td>2021/04/07</td>
                      <td class="message-text-overflow">안녕하세요. FIRSTEDU 입니다. 어쩌고저쩌고 힘드네요.</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>정유미</td>
                      <td>010-2341-2349</td>
                      <td>2021/04/07</td>
                      <td class="message-text-overflow">안녕하세요. FIRSTEDU 입니다. 어쩌고저쩌고 힘드네요.</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>정유미</td>
                      <td>010-2341-2349</td>
                      <td>2021/04/07</td>
                      <td class="message-text-overflow">안녕하세요. FIRSTEDU 입니다. 어쩌고저쩌고 힘드네요.</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>정유미</td>
                      <td>010-2341-2349</td>
                      <td>2021/04/07</td>
                      <td class="message-text-overflow">안녕하세요. FIRSTEDU 입니다. 어쩌고저쩌고 힘드네요.</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>정유미</td>
                      <td>010-2341-2349</td>
                      <td>2021/04/07</td>
                      <td class="message-text-overflow">안녕하세요. FIRSTEDU 입니다. 어쩌고저쩌고 힘드네요.</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>정유미</td>
                      <td>010-2341-2349</td>
                      <td>2021/04/07</td>
                      <td class="message-text-overflow">안녕하세요. FIRSTEDU 입니다. 어쩌고저쩌고 힘드네요.</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>정유미</td>
                      <td>010-2341-2349</td>
                      <td>2021/04/07</td>
                      <td class="message-text-overflow">안녕하세요. FIRSTEDU 입니다. 어쩌고저쩌고 힘드네요.</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>정유미</td>
                      <td>010-2341-2349</td>
                      <td>2021/04/07</td>
                      <td class="message-text-overflow">안녕하세요. FIRSTEDU 입니다. 어쩌고저쩌고 힘드네요.</td>
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

    <div class="modal complete-modal complete-input-board-modal">
    <div class="modal-content">
      <strong>게시물 등록</strong>
      <p>게시물이 등록되었습니다.</p>
      <div class="popup-1btn">
        <button type="button" class="btn-fill-primary btn-popup complete-btn">확인</button>
      </div>
    </div>
  </div>

  <div class="modal delete-board-modal second-modal">
    <div class="modal-content">
      <strong>게시물 삭제하기</strong>
      <p>게시물을 삭제하시겠습니까?</p>
        <div class="popup-2btn">
          <button type="button" class="btn-fill-seconary btn-popup delete-board-btn">삭제</button>
          <button type="button" class="btn-fill-primary btn-popup back-btn">취소</button>
        </div>
    </div>
  </div>

  <div class="modal complete-modal complete-delete-board-modal">
    <div class="modal-content">
      <strong>게시물 삭제</strong>
      <p>게시물이 삭제되었습니다.</p>
      <div class="popup-1btn">
        <button type="button" class="btn-fill-primary btn-popup complete-btn">확인</button>
      </div>
    </div>
  </div>


	<script src="${ pageContext.servletContext.contextPath }/resources/js/sideGnb.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/js/drawerMenu.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/js/modal.js"></script>
</body>
</html>