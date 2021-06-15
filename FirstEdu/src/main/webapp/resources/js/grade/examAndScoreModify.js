/* breadcrumb 변경 */
$(function(){
	$('#parentMenu').text('성적 관리');
	$('#parentMenu').attr('href', '/firstedu/grade/exam/list');
	$('#nowMenu').text('시험 성적');
})

/* ajax를 통한 시험 수정 기능 */
function modifyExam(modifiedInput, examNo) {
	let modifiedColumn = $(modifiedInput).attr("name");
	let modifiedValue = $(modifiedInput).val();
	
	console.log("modifiedValue : " + modifiedValue);
	console.log("examNo : " + examNo);
	console.log("modifiedColumn : " + modifiedColumn);
	
	$.ajax({
		url: "/firstedu/grade/exam/modify",
		type: "post",		
		data: { 
			  	examNo : examNo,
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

/* ajax를 통한 성적 수정 기능 */
function modifyScore(modifiedInput, scoreNo) {
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

/* 시험 삭제 */
function removeExam(examNo) {
	
	$.ajax({
		url: "/firstedu/grade/exam/remove",
		type: "get",		
		data: { examNo : examNo },
		success: function(data) {
			alert('시험이 삭제되었습니다.');
			location.href = '/firstedu/grade/exam/list';
		},
		error: function(error) {
			console.log(error);
		}
	});	
}

function addScore(examNo) {

	$.ajax({
		url: "/firstedu/grade/score/regist",
		type: "get",		
		data: { examNo : examNo },
		success: function(data) {
			
			$tr = $('<tr>');
			
			$inputGroupDiv = $('<div class="input-group">');
			
			$studentNameTd = $('<td>');
			$subjectTd = $('<td>');
			$targetScoreTd = $('<td>');
			$scoreTd = $('<td>');
			$rankTd = $('<td>');

			$studentNameInput = '<input class="form-input" name="student_name" type="text" value="" onchange="modifyScore(this, ' + data + ')" readonly/>';
			$subjectInput = '<input class="form-input" name="subject" type="text" value="" onchange="modifyScore(this, ' + data + ')" readonly/>';
			$targetScoreInput = '<input class="form-input" name="target_score" value="" type="text" onchange="modifyScore(this, ' + data + ')" readonly/>';
			$scoreInput = '<input class="form-input" name="score" type="text" value="" onchange="modifyScore(this, ' + data + ')" readonly/>';
			$rankInput = '<input class="form-input" name="rank" type="text" value="" onchange="modifyScore(this, ' + data + ')" readonly/>';
			
			$tr.append($studentNameTd.append($inputGroupDiv.append($studentNameInput)));
			$tr.append($subjectTd.append($inputGroupDiv.append($subjectInput)));
			$tr.append($targetScoreTd.append($inputGroupDiv.append($targetScoreInput)));
			$tr.append($scoreTd.append($inputGroupDiv.append($scoreInput)));
			$tr.append($rankTd.append($inputGroupDiv.append($rankInput)));
			
			$('#addTr').before($tr);
			
		},
		error: function(error) {
			console.log(error);
		}
	});	
}