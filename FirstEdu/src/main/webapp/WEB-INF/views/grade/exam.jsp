<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href='${ pageContext.servletContext.contextPath }/resources/css/common/fullcalendar/main.css' rel='stylesheet' />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src='${ pageContext.servletContext.contextPath }/resources/js/common/fullcalendar/main.js'></script>
<script src='${ pageContext.servletContext.contextPath }/resources/js/grade/examCalendar.js'></script>
<style>
  body {
    margin: 40px 10px;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 1100px;
    margin: 0 auto;
  }
</style>
</head>

<body>
	<h1 align="center">시험 일정 관리</h1>
	<form action="${ pageContext.servletContext.contextPath }/exam/regist" method="post">
		<button>Exam Regist Test</button>
	</form>
	<button type="button" onclick="location.href='${ pageContext.servletContext.contextPath }/exam/list'">Select Test</button>
	<form action="${ pageContext.servletContext.contextPath }/exam/modify" method="post">
		<button>Exam Modify Test</button>
	</form>
	<form action="${ pageContext.servletContext.contextPath }/exam/remove" method="post">
		<button>Exam Remove Test</button>
	</form>
	<form action="${ pageContext.servletContext.contextPath }/exam/category/regist" method="post">
		<button>Exam Category Regist Test</button>
	</form>
	<form action="${ pageContext.servletContext.contextPath }/exam/category/modify" method="post">
		<button>Exam Category Modify Test</button>
	</form>
	<form action="${ pageContext.servletContext.contextPath }/exam/category/remove" method="post">
		<button>Exam Category Remove Test</button>
	</form>
	
	<div id='calendar'></div>
	 
	<input type="hidden" id="count" value="${ fn:length(requestScope.examList) }" />
	<c:forEach var="exam" items="${ requestScope.examList }">
		<input type="hidden" class="exam-list" name="title-list" value="${ exam.name }"/>
		<input type="hidden" class="exam-list" name="start-list" value="${ exam.examDate }"/>
	</c:forEach>
</body>

</html>