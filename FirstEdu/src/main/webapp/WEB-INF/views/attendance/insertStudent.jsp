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
<form name='sendForm' action="${pageContext.servletContext.contextPath }/attendance/insertStudent" method="post">

<button type="submit" id="save_btn">���� </button>
<input type='checkbox' onclick='selectAll(this.checked);'>��μ���/����


<br>

<input type="hidden" name="no" id="no" value="1">
<input type="hidden" name="studentNo" id="studentNo" value="1">


<input type="checkbox" name="categoryNo1" id="dis" value="1" >�⼮
<input type="checkbox" name="categoryNo1" id="dis" value="2">�Ἦ
<input type="checkbox" name="categoryNo1" id="dis" value="3">����
<input type="checkbox" name="categoryNo1" id="dis" value="4">����
<input type="text" name="memo" id="memo" >
<input type="button" value="�޸�">

</form>

<script>

function selectAll(checkFlag) { 

    var f = document.sendForm; 

    for(var i=0; i<f.elements.length; i++) { 

            if(f.elements[i].name == 'categoryNo1'){ 

                    f.elements[i].checked = checkFlag; 

            } 

    } 

} 



</script>

</body>

</html>