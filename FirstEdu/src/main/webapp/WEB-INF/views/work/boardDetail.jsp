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
	
	.card {
		margin: 5px;
	}

	.card-list {
		display: flex;
        flex-wrap: wrap;
	}

    .card-content {
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
    <h3>${ board.title }</h3>
	<section class="board-main">
		<c:forEach var="list" items="${ requestScope.cardList }">
	        <article class="list1">
	        <input type="hidden" value="${ list.listNo }">
	        	
	       	    <ul class="card-list">
				<c:forEach var="card" items="${ list.workCardList }">
				    <li class="card" onclick="goDetail(this)">
						<input type="hidden" value="${ card.cardNo }">
			            <div class="card-content">
			                <div class="title">
			                    <span><c:out value="${ card.cardTitle }"/></span>
			                </div>
	 		                <div class="tags">
			                    <c:forEach var="tag" items="${ card.tagList }">
			                    	<span><c:out value="${ tag.tagName }"/></span>
			                    </c:forEach>
			                </div>
	 		                <div class="due-date">
			                   
			                </div>
 	 		                <div class="members">
			                    <c:forEach var="member" items="${ card.cardMemberList }">
			                    	<span><c:out value="${ member.teacher.name }"/></span>
			                    </c:forEach>
			                </div>
			            </div>
		            </li>
	           </c:forEach>
	           </ul>
	       </article>
       </c:forEach>
	</section>
</body>
</html>