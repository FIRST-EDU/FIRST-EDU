/* ajax를 통한 성적 목록 조회 */
/* 학원 시험 성적 조회 */
function showHagwonExamScoreList() {
	console.log("test");
	$.ajax({
		url: "/firstedu/grade/score/list",
		type: "get",
		success: function(data) {
			console.table(data);
			const $table = $("#scoreInfo tbody");
			$table.html("");
			
			for(var index in data) {
			
				$no = '<input type="hidden" name="scoreNo" value="' + data[index].no + '"/>';
				$studentNameInput = '<input type="text" name="studentName" value="' + data[index].student.studentName + '" readonly/>';
				$gradeNameInput = '<input type="text" name="gradeName" value="' + data[index].student.grade.name + '" readonly/>';
				$subjectNameInput = '<input type="text" name="subjectName" value="' + data[index].subject.name + '" readonly/>';
				$scoreInput = '<input type="text" name="score" value="' + data[index].score + '" onchange="modifyScore(this)"/>';
				$classRankInput = '<input type="text" name="class_rank" value="' + data[index].classRank + '" onchange="modifyScore(this)"/>';
				$classPersonnelInput = '<input type="text" name="class_personnel" value="' + data[index].classPersonnel + '" onchange="modifyScore(this)"/>';
				$teacherCommentInput = '<input type="text" name="teacher_comment" value="' + data[index].teacherComment + '" onchange="modifyScore(this)"/>';
				
				$noTd = $("<td>").html((parseInt(index)+1) + $no);
				$studentNameTd = $("<td>").html($studentNameInput);
				$gradeNameTd = $("<td>").html($gradeNameInput);
				$subjectNameTd = $("<td>").html($subjectNameInput);
				$scoreTd = $("<td>").html($scoreInput);
				$rankTd = $("<td>").html($classRankInput + '/' + $classPersonnelInput);
				//$classRankTd = $("<td>").html($classRankInput);
				//$classPersonnelTd = $("<td>").html($classPersonnelInput);
				$teacherCommentTd = $("<td>").html($teacherCommentInput);
				
				$tr = $("<tr>");
				$tr.append($noTd);
				$tr.append($studentNameTd);
				$tr.append($gradeNameTd);
				$tr.append($subjectNameTd);
				$tr.append($scoreTd);
				//$tr.append($classRankTd);
				//$tr.append($classPersonnelTd);
				$tr.append($rankTd);
				$tr.append($teacherCommentTd);
				
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
	let scoreNo = $(modifiedInput).closest('tr').find('input[name=scoreNo]').val();
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

/* ajax를 통한 성적 삭제 기능 */
function removeScore(removedBtn) {
	let studentName = $(removedBtn)
	let isConfirmed = confirm('삭제하시겠습니까?');
	
	if(isConfirmed) {
		$.ajax({
		
		});
	}
}