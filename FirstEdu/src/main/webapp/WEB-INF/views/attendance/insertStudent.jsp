<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">

<title>Insert title here</title>

</head>
<body>

<h1>출석 입력</h1>
<form name="form" action="${pageContext.servletContext.contextPath }/attendance/insertStudent" method="post">

<button type="submit" id="save_btn">저장 </button>
<input type='checkbox'
       name='categoryNo' 
       value='전체선택'
       onclick='전체선택(this)'/> <b>전체선택</b>

<br>

<input type="hidden" name="no" id="no" value="1">
<input type="hidden" name="studentNo" id="studentNo" value="1">
<input type="checkbox" name="categoryNo" id="dis1" value="1" >출석
<input type="checkbox" name="categoryNo" id="dis2" value="2">결석
<input type="checkbox" name="categoryNo" id="dis3" value="3">지각
<input type="checkbox" name="categoryNo" id="dis4" value="4">조퇴
<input type="text" name="memo" id="memo" >
<input type="button" onclick="add_textbox"value="메모">

<script>

function 전체선택(전체선택)  {
  const checkboxes 
       = document.getElementsByName('categoryNo');
  
  checkboxes.forEach((checkbox) => {
    checkbox.checked = 전체선택.checked;
  })
}
</script>

</form>

</body>
</html>