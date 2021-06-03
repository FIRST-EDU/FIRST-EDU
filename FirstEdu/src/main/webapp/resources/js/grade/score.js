/* ajax를 통한 성적 목록 조회 */
function showScoreList() {
	console.log("test");
	$.ajax({
		url: "/firstedu/grade/score/list",
		type: "get",
		success: function(data) {
			console.table(data);
			const $table = $("#scoreInfo tbody");
			$table.html("");
			
			for(var index in data) {
			
				$scoreNo = '<input type="hidden" name="no" value="' + data[index].no + '"/>';
				$scoreInput = '<input type="text" name="score" value="' + data[index].score + '" onchange="modifyScore(this)"/>';
				
				$tr = $("<tr>");
				$noTd = $("<td>").html((parseInt(index)+1) + $scoreNo);
				$studentNoTd = $("<td>").text(data[index].studentNo);
				$scoreTd = $("<td>").html($scoreInput);
				
				$tr.append($noTd);
				$tr.append($studentNoTd);
				$tr.append($scoreTd);
				
				$table.append($tr);
			}
		},
		error: function(error) {
			console.log(error);
		}
	});
}

/* ajax를 통한 성적 수정 기능 */
function modifyScore(modifiedInput) {
	let scoreNo = $(modifiedInput).closest('tr').find('input[name=no]').val();
	let modifiedColumn = $(modifiedInput).attr("name");
	let modifiedValue = $(modifiedInput).val();
	
	console.log("modifiedValue : " + modifiedValue);
	console.log("scoreNo : " + scoreNo);
	console.log("modifiedColumn : " + modifiedColumn);
	
	$.ajax({
		url: "/firstedu/grade/score/modify",
		type: "post",		
		data: { 
			  	scoreNo : scoreNo,
			  	modifiedColumn : modifiedColumn,
			  	modifiedValue : modifiedValue
			  },
		success: function(data) {
			console.log(data);
		},
		error: function(error) {
			console.log(error);
		}
	});	
	
}

