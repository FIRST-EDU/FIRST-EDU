<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<form action="${ pageContext.servletContext.contextPath }/attendance/insertStudent " method="post">
	<button>저장</button>
	</form>
	
	<form action="${ pageContext.servletContext.contextPath }/attendance/updateStudent " method="post">
	<button>수정</button>
	</form>
	
	<table id=" ">
		<thead>
			<tr>
				<th></th>
		
		</thead>
	
	</table>
	
	<input type="hidden" class="" >
	
</body>
</html>