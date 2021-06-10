<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${ pageContext.servletContext.contextPath }/classInfo/classUpdate" method="post">

		<table align="center" id="classListArea">
			<tr>
				<td>수강번호 </td>
				<td><input type="text" id="classNum" name="classNum" value="${ classUpdate.classNum}"></td>
				</tr>
			<tr>
				<td>강의코드</td>
				<td><input type="text" id="code" name="code" value="${ classUpdate.code}"></td>
			</tr>
			<tr>
				<td>강의실</td>
				<td><input type="text" id="room" name="room" value="${ classUpdate.room}"></td>
			</tr>
			<tr>
				<td>강의명</td>
				<td><input type="text" name="className" value="${ classUpdate.className}"></td>
			</tr>
			<tr>
				<td>요일</td>
				<td>
		        <select name="day" >
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
				<td><input type="text" name="book" value="${ classUpdate.book}" ></td>
			</tr>
			<tr>
				<td>수강료</td>
				<td><input type="text" name="payment" value="${ classUpdate.payment}" ></td>
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