<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	const message = '${ requestScope.message }';
	if(message != null && message !== '') {
		alert(message);
	}
</script>

</head>
<body>
	<jsp:include page="../common/commonNonMember.jsp"/>
	<h1>main입니다.</h1>
	<button onclick="location.href='${ pageContext.servletContext.contextPath }/member/teacherList'">선생님목록</button>
	<button onclick="location.href='${ pageContext.servletContext.contextPath }/classInfo/classList'">수강목록</button>
	<button onclick="location.href='${ pageContext.servletContext.contextPath }/classInfo/timeTable'">시간표목록</button>
	<button onclick="location.href='${ pageContext.servletContext.contextPath }/classInfo/searchList'">게시판테스트</button>
</body>
</html>
