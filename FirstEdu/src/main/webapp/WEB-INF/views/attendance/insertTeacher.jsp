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
<form action="${pageContext.servletContext.contextPath }/attendance/insertTeacher" method="post" }>


<h1>���� ���</h1>
��¥:<input type="date" name="attendanceTime" id="attendanceTime" >


<button id="btn1" type="submit" name="setAttendanceTime">���</button><button id="btn2" type="submit" name="setCheckOutTime">���</button>

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