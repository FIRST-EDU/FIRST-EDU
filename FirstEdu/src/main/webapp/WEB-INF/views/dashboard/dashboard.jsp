<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.donut-charts {
		display: flex;
		flex-wrap: wrap;
	}
	
	.chart {
		width: 250px;
	}
	
	.bar-chart {
		height: 500px;
	}
</style>
</head>
<body>
	<h1>Dashboard</h1>
	<input type="hidden" id="totalCount" value="${ requestScope.student.totalCount }"/>
	<input type="hidden" id="newCount" value="${ requestScope.student.newCount }"/>
	<input type="hidden" id="quitCount" value="${ requestScope.student.quitCount }"/>
	<input type="hidden" id="femaleCount" value="${ requestScope.student.femaleCount }"/>
	<input type="hidden" id="maleCount" value="${ requestScope.student.maleCount }"/>
	<c:forEach var="grade" items="${ requestScope.studentGrade }">
		<input type="hidden" name="gradeName" value="${ grade.gradeName }"/>
		<input type="hidden" name="gradeCount" value="${ grade.count }"/>
	</c:forEach>
	<c:forEach var="course" items="${ requestScope.studentClass }">
		<input type="hidden" name="className" value="${ course.className }"/>
		<input type="hidden" name="classCount" value="${ course.count }"/>
	</c:forEach>
	<c:forEach var="school" items="${ requestScope.studentSchool }">
		<input type="hidden" name="school" value="${ school.school }"/>
		<input type="hidden" name="schoolCount" value="${ school.count }"/>
	</c:forEach>
	
	<section class="line-chart">
		<div id="sales"></div>
	</section>

	<section class="bar-chart">
		<div id="studentClass"></div>
	</section>
	
	<section class="donut-charts">
		<article class="chart">
			<div id="studentGender"></div>
		</article>
		<article class="chart">
			<div id="studentGrade"></div>
		</article>
		<article class="chart">
			<div id="studentSchool"></div>
		</article>
	</section>
	


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/dashboard/chart.js"></script>
</body>
</html>