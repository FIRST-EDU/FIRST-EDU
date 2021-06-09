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
<form name='sendForm' action="${pageContext.servletContext.contextPath }/attendance/insertStudent" method="post">

<button type="submit" id="save_btn">저장 </button>
<input type='checkbox' onclick='selectAll(this.checked);'>모두선택/해제


<br>

<input type="hidden" name="no" id="no" value="1">
<input type="hidden" name="studentNo" id="studentNo" value="1">


<input type="checkbox" name="categoryNo1" id="dis" value="1" >출석
<input type="checkbox" name="categoryNo1" id="dis" value="2">결석
<input type="checkbox" name="categoryNo1" id="dis" value="3">지각
<input type="checkbox" name="categoryNo1" id="dis" value="4">조퇴
<input type="text" name="memo" id="memo" >
<input type="button" value="메모">

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