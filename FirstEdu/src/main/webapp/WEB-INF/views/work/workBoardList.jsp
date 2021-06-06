<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
	ul {
		padding: 0;
	}
	
	li {
		list-style: none;	
	}
	
	li:hover {
		background-color: lightgrey;
		cursor: pointer;
	}
	
	.board {
		margin: 5px;
	}

	.board-list {
		display: flex;
        flex-wrap: wrap;
	}

    .board-content {
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        border: 1px solid grey;
        border-radius: 5px;
        padding: 10px;
        width: 160px;
        height: 80px; 
    }
    
    .title-and-star {
        display: flex;
        justify-content: space-between;
    }

    .star {
        margin: -5px 0 0 8px;
    }
    
    .add-board-btn {
    	display: flex;
    	flex-direction: column;
    	justify-content: center;
    	align-items: center;
    	border: 1px solid grey;
    	border-radius: 5px;
    	padding: 10px;
    	width: 160px;
    	height: 80px;
    	
    }

</style>
</head>

<body>
	<section class="favorite-board-list">
        <h3>즐겨 찾는 보드</h3>
        <article>
        	<ul class="board-list">
				<c:forEach var="board" items="${ requestScope.boardList }">
	        		<c:if test="${ board.isFavorite eq 'Y' }">
						<li class="board">
							<input type="hidden" value="${ board.boardNo }">
				            <div class="board-content">
				                <div class="title-and-star">
				                    <span class="title"><c:out value="${ board.title }"/></span>
				                    <span class="star">⭐️</span>
				                </div>
		 		                <div class="members">
				                    <c:forEach var="member" items="${ board.memberList }">
				                    	<span><c:out value="${ member.teacher.name }"/></span>
				                    </c:forEach>
				                </div>
				            </div>
			            </li>
		            </c:if>
	            </c:forEach>
            </ul>
        </article>
	</section>
	
	<section class="my-board-list">
    	<h3>내 보드</h3>
        <article>
        	<ul class="board-list">
				<c:forEach var="board" items="${ requestScope.boardList }">
	        		<c:if test="${ board.isFavorite ne 'Y' }">
	        			<li class="board">
	        				<input type="hidden" value="${ board.boardNo }">
				            <div class="board-content">
				                <div class="title-and-star">
				                    <span class="title"><c:out value="${ board.title }"/></span>
				                    <span class="star">☆</span>
				                </div>
		 		                <div class="members">
				                    <c:forEach var="member" items="${ board.memberList }">
				                    	<span><c:out value="${ member.teacher.name }"/></span>
				                    </c:forEach>
				                </div>
				            </div>
			            </li>
		            </c:if>
	            </c:forEach>
	            <li id="newBoard" class="board new-board">
		         	<div id="addBoardBtn" class="add-board-btn" onclick="addBoard()">
		         		<span>➕</span>
		            </div>
	            </li>
            </ul>
        </article>
	</section>
	<script>
		let $newBoard = $('#newBoard');
		/* $addBoardBtn */
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
		
		function registBoard() {
		    const title = $('#title').val();
		    $.ajax({
				url: "/firstedu/work/board/regist",
				type: "post",
				data: { title : title },
				success: function(data) {
				    console.log(data);
				    
				    /* 추가한 보드 생성 */
				    $li = $('<li class="board">');
				    
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
		
		function createAddBoardBtn() {
		    $newBoard.html("");
		    
		    $addBoardBtnDiv = $('<div id="addBoardBtn" class="add-board-btn" onclick="addBoard()">');
		    $addSpan = $('<span>').text('➕');
		    
		    $addBoardBtnDiv.append($addSpan);
		    $newBoard.append($addBoardBtnDiv);
		}
		
	</script>
</body>
</html>