<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="${ pageContext.servletContext.contextPath }/attendance/updateStudent " method="post">
		
	
<input type="hidden" name="no" id="no" value="1">
<input type="hidden" name="studentNo" id="studentNo" value="1">
<input type="checkbox" name="categoryNo" id="dis1" value="1" >출석
<input type="checkbox" name="categoryNo" id="dis2" value="2">결석
<input type="checkbox" name="categoryNo" id="dis3" value="3">지각
<input type="checkbox" name="categoryNo" id="dis4" value="4">조퇴
<input type="text" name="memo" id="memo" >
<input type="button" onclick="add_textbox"value="메모">                      
<input type="date" name="checkOutTime" value=""> 						
	      

	  
<button type="submit">저장</button>

	</form>
</body>
</html>