<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강Insert</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/member.js" type="text/javascript"></script>
</head>
<body>
	<h1 align="center">수강과목 등록</h1>

	<form action="${ pageContext.servletContext.contextPath }/classInfo/classRegist" method="post">

		<table align="center">
			<tr>
				<td>수강코드</td>
				<td><input type="text" name="code"></td>
			</tr>
			<tr>
				<td>강의실</td>
				<td><input name="room" required></td>
			</tr>
			<tr>
				<td>강의명</td>
				<td><input type="text" name="className" required></td>
			</tr>
			<tr>
				<td>요일</td>
				<td>
		        <select name="day">
						<option value="화목">화목</option>
						<option value="월수금">수목금</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>강의시작시간</td>
				<td>
					<select name="startTime">
						<option value="1">20:00</option>
						<option value="2">21:00</option>
						<option value="3">22:00</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>강의종료시간</td>
				<td>
					<select name="endTime">
						<option value="1">20:50</option>
						<option value="2">21:50</option>
						<option value="3">22:50</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>교재</td>
				<td><input type="text" name="book"></td>
			</tr>
			<tr>
				<td>수강료</td>
				<td><input type="text" name="payment"></td>
			</tr>
			<tr>
				<td>과목</td>
				<td>
		        <select name="subjectNo" id="subjectNo">
							<option value="1">영어</option>
							<option value="2">수학</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>학년</td>
				<td>
					<select name="gradeCode" id="gradeCode">
							<option value="H1">H1</option>
							<option value="H2">H2</option>
							<option value="H3">H3</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>담당선생님</td>
				<td><select name="no" id="name">
						<option value="1">전인애</option>
						<option value="2">유진희</option>
						<option value="3">민하영</option>
						<option value="4">김태훈</option>
						<option value="5">박인식</option>
						<option value="6">윤여경</option>
				</select></td>
			</tr>
		</table>
		<br>
		<div align="center">
			<button type="reset">작성취소</button>
			<button type="submit">등록하기</button>
		</div>
	</form>



</body>
</html>