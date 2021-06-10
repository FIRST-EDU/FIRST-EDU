<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		(function(){
			var message = "${ requestScope.message }";
			
			var movePath = "${ pageContext.servletContext.contextPath }";
			
			alert(message);
			
			location.replace(movePath);
		})();
		

	</script>
</body>
</html>