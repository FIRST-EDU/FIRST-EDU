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
<form action="${pageContext.servletContext.contextPath }/attendance/insertTeacher" method="post" }>


<h1>근태 출결</h1>
날짜:<input type="date" name="attendanceTime" id="attendanceTime" >


<button id="btn1" type="submit" name="setAttendanceTime">출근</button><button id="btn2" type="submit" name="setCheckOutTime">퇴근</button>

<!-- <div id="result1"/> -->

</form>



<!-- <script>
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
 -->
</body>
</html>