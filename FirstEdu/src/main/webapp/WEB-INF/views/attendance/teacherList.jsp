<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>���� ��� �� ��Ȳ</title>
</head>
<body>
<h1 align="center">���� ���</h1>

<input id="btn1" type="button" value="���"><div id="result1"/>

<br><br>

<input id="btn2" type="button" value="���">
<div id="result2"/>



<script>
$('#btn1').click (function(){
	
	$.ajax({
		url: "/firstedu/attendance/teacherList/",
		method: 'POST',
		dataType: 'html',
		success: function(data){
			$("#result1").html(data);
		},
		error: function(error){
			console.log(error);
		}
	});
});

</script>
<script>
$('#btn2').click (function(){
	
	$.ajax({
		url: "/firstedu/attendance/doneTeacher/",
		method: 'POST',
		dataType: 'html',
		success: function(data){
			$("#result2").html(data);
		},
		error: function(error){
			console.log(error);
		}
	});
});

</script>

</body>
</html>