<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/work/boardList.js"></script>
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
						<li class="board" onclick="goDetail(this)">
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
	        			<li class="board" onclick="goDetail(this)">
	        				<input type="hidden" name="boardNo" value="${ board.boardNo }">
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
</body>
</html>