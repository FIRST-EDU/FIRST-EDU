<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.board-list {
		display: flex;
        flex-wrap: wrap;
	}

    .board {
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        border: 1px solid grey;
        border-radius: 5px;
        padding: 10px;
        margin: 10px;
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

</style>
</head>

<body>
	<section class="favorite-board-list">
        <h3>즐겨 찾는 보드</h3>
        <article class="board-list">
			<c:forEach var="board" items="${ requestScope.boardList }">
        		<c:if test="${ board.isFavorite eq 'Y' }">
		            <div class="board">
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
	            </c:if>
            </c:forEach>
        </article>
	</section>
	
	<section class="my-board-list">
    	<h3>내 보드</h3>
        <article class="board-list">
			<c:forEach var="board" items="${ requestScope.boardList }">
        		<c:if test="${ board.isFavorite ne 'Y' }">
		            <div class="board">
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
	            </c:if>
            </c:forEach>
        </article>
	</section>
</body>
</html>