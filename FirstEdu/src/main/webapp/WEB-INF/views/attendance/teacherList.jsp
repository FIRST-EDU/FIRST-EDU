<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>근태 출결 밑 현황</title>
</head>
<body>
<h1 align="center">근태 출결</h1>
<button id="btn1">출근</button>
<div id="result1"></div>

<button id="btn2">퇴근</button>
<div id="result2"></div>

<script>
$("#insertTeacher").click(function(){
	$.ajax({
		type: "POST",
		url: "/attendance/teacherList",
		dataType: "json",
		cache: false,
		success:function(data){
			console.table(data)
		},
		error:function(error){
			
		}
	});
});

</script>

</body>
</html>