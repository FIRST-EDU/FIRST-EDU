<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">

<title>Insert title here</title>

</head>
<body>

<h1>�⼮ �Է�</h1>
<form name="form" action="${pageContext.servletContext.contextPath }/attendance/insertStudent" method="post">

<button type="submit" id="save_btn">���� </button>
<input type='checkbox'
       name='categoryNo' 
       value='��ü����'
       onclick='��ü����(this)'/> <b>��ü����</b>

<br>

<input type="hidden" name="no" id="no" value="1">
<input type="hidden" name="studentNo" id="studentNo" value="1">
<input type="checkbox" name="categoryNo" id="dis1" value="1" >�⼮
<input type="checkbox" name="categoryNo" id="dis2" value="2">�Ἦ
<input type="checkbox" name="categoryNo" id="dis3" value="3">����
<input type="checkbox" name="categoryNo" id="dis4" value="4">����
<input type="text" name="memo" id="memo" >
<input type="button" onclick="add_textbox"value="�޸�">

<script>

function ��ü����(��ü����)  {
  const checkboxes 
       = document.getElementsByName('categoryNo');
  
  checkboxes.forEach((checkbox) => {
    checkbox.checked = ��ü����.checked;
  })
}
</script>

</form>

</body>
</html>