<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">��� ��Ȳ</h1>
	<button id="gson">��ȸ</button>
	
	<table id="studentInfo">
		<thead>
			<tr>
				<th>NO</th>
				<th>��������</th>
				<th>�л�</th>
				<th>�⼮</th>
				<th>�Ἦ</th>
				<th>����</th>
				<th>����</th>
			</tr>
		</thead>
		<tbody>
				<tr>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>					
				</tr>
		</tbody>
	</table>
	
	<script>
		$("#gson").click(function() {
			$.ajax({
				url: "gson",
				success: function(data){
					console.table(data);
					
					const $table =$("studentInfo");
					$table.html("");
					
					for(var index in data){
						$tr = $("<tr>");
						$noTd = $("<td>").text(data[index].no);
						$nameTd = $("<td>").text(data[index].name);
						$ageTd = $("<td>").text(data[index].age);
						$enrollDateTd = $("<td>").text(data[index].enrollDate);
						
						$tr.append($noTd);
						$tr.append($nameTd);
						$tr.append($ageTd);
						$tr.append($enrollDateTd);
						
						$table.append($tr)
					}
				},
				error: function(error){
					console.log(error);
				}
				
			});
		});
	
	</script>
	
</body>
</html>