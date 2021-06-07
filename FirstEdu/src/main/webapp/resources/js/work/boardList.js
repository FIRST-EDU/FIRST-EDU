let $newBoard = $('#newBoard');

/* 보드 추가 버튼 클릭 시 입력창 생성 */
function addBoard() {
    $newBoard.html("");
    
    $contentDiv = $('<div class="board-content">');
    
    $titleInput = '<input type="text" id="title" name="title" placeholder="이름을 입력하세요.">';
    
    $btnsDiv = $('<div class="btns">');
    $confirmBtn = $('<button id="confirmBtn" onclick="registBoard()">').text('확인');
	$cancelBtn = $('<button id="cancelBtn" onclick="createAddBoardBtn()">').text('취소');
	$btnsDiv.append($confirmBtn);
	$btnsDiv.append($cancelBtn);
	
    $contentDiv.append($titleInput);
    $contentDiv.append($btnsDiv);
    
    $newBoard.append($contentDiv);
    
    $('#title').focus();
}

/* 보드 생성 */
function registBoard() {
    const title = $('#title').val();
    $.ajax({
		url: "/firstedu/work/board/regist",
		type: "post",
		data: { title : title },
		success: function(data) {
		    console.log(data);
		    
		    /* 추가한 보드 생성 */
		    $li = $('<li class="board" onclick="goDetail(this)">');
		    
		    $boardNoInput = '<input type="hidden" value="' + data.boardNo + '">';
		    $boardContentDiv = $('<div class="board-content">');
		    
		    $titleAndStarDiv = $('<div class="title-and-star">');
		    $titleSpan = $('<span class="title">').text(data.title);
			$starSpan = $('<span class="star">').text('☆');
			$titleAndStarDiv.append($titleSpan);
			$titleAndStarDiv.append($starSpan);
			
			$membersDiv = $('<div class="members">');
			$memberSpan = $('<span>').text(data.creator.name);
			$membersDiv.append($memberSpan);
			
			$boardContentDiv.append($titleAndStarDiv);
			$boardContentDiv.append($membersDiv);
    		
			$li.append($boardNoInput);
			$li.append($boardContentDiv);
			
			$newBoard.before($li);
			
			/* 보드 추가 버튼 재생성 */
		    createAddBoardBtn();
		},
	    error: function(error) {
			console.log(error);
			alert('업무 보드 생성에 실패하였습니다. 잠시 후 다시 시도해주세요.');
			createAddBoardBtn();
	    }
    });
    
}

/* 보드 추가 버튼 생성 */
function createAddBoardBtn() {
    $newBoard.html("");
    
    $addBoardBtnDiv = $('<div id="addBoardBtn" class="add-board-btn" onclick="addBoard()">');
    $addSpan = $('<span>').text('➕');
    
    $addBoardBtnDiv.append($addSpan);
    $newBoard.append($addBoardBtnDiv);
}

/* 보드 상세 페이지로 이동 */
function goDetail(selectedBoard) {
    const boardNo = $(selectedBoard).children('input').val();
    location.href = '/firstedu/work/board/' + parseInt(boardNo);
}