<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<input id="btn1" type="button" value="출근">
<span id="result1"></span>

<button id="btn2">퇴근</button>
<div id="result2"></div>

<script>
$('#btn2').click (function(){
	
	
	$.ajax({
		url: "/firstedu/attendance/doneList/",
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