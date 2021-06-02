<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>근태 출결 밑 현황</title>
</head>
<body>
<h1 align="center">근태 출결</h1>
<div id="form1">
<form action="${pageContext.servletContext.contextPath}attendance/teacherList/" method="post">
<table>
<input type="hidden" name="" id=""> 
<input id="btn1" type="button" value="출근">
<span id="result1"></span>

<button id="btn2">퇴근</button>
<div id="result2"></div>

</div>
</table>
</form>

<script>
$('#btn1').click (function(){
	
	
	$.ajax({
		url: "/firstedu/attendance/teacherList/",
		method: 'POST',
		success: function(data){
			console.log(data);
		},
		error: function(error){
			console.log(error);
		}
	});
});


</script>


</body>
</html>