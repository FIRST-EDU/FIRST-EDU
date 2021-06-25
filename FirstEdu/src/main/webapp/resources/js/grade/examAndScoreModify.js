/* breadcrumb 변경 */
$(function(){
	$('#parentMenu').text('성적 관리');
	$('#parentMenu').attr('href', '/firstedu/grade/exam/list');
	$('#nowMenu').text('시험 성적');
	
	$('.nav-grade').addClass('is-active')
})

let navDrawerMenus = document.querySelectorAll('.drawer-menu');
for (let drawerMenu of navDrawerMenus) {
	let isGrade = false
    for (let className of drawerMenu.classList) {
        if (className == 'nav-grade') {
          isGrade = true
        }
    }
    if(!isGrade) {
    	drawerMenu.classList.remove('is-active');
    }
}

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

/* ajax를 통한 성적 삭제 기능 */
function removeScore(scoreNo, examNo) {
	
	console.log("scoreNo : " + scoreNo);
	
	$.ajax({
		url: "/firstedu/grade/score/remove/" + scoreNo,
		type: "get",		
		success: function(data) {
			console.log(data);
			location.href = '/firstedu/grade/exam/' + examNo
		},
		error: function(error) {
			console.log(error);
		}
	});	
}

/* 시험 삭제 */
function removeExam(examNo) {
	
//	$.ajax({
//		url: "/firstedu/grade/exam/remove",
//		type: "get",		
//		data: { examNo : examNo },
//		success: function(data) {
//			alert('시험이 삭제되었습니다.');
//			location.href = '/firstedu/grade/exam/list';
//		},
//		error: function(error) {
//			console.log(error);
//		}
//	});	

			location.href = '/firstedu/grade/exam/remove/' + examNo;

}

/* 성적 추가 */
function addScore(examNo) {

	$.ajax({
		url: "/firstedu/grade/score/regist",
		type: "post",		
		data: { examNo : examNo },
		success: function(data) {
			console.log(data);
			$tr = $('<tr>');
			
			$inputGroupDiv = $('<div class="input-group">');
			
			$studentNameTd = $('<td>');
			$subjectTd = $('<td>');
			$targetScoreTd = $('<td>');
			$scoreTd = $('<td>');
			$rankTd = $('<td>');
			$deleteScoreTd = $('<td class="delete-score-btn">');

			$studentNameInput = '<input class="form-input is-active" name="student_name" type="text" value="" onchange="modifyScore(this, ' + data + ')"/>';
			$subjectInput = '<input class="form-input is-active" name="subject" type="text" value="" onchange="modifyScore(this, ' + data + ')"/>';
			$targetScoreInput = '<input class="form-input is-active" name="target_score" value="" type="text" onchange="modifyScore(this, ' + data + ')"/>';
			$scoreInput = '<input class="form-input is-active" name="score" type="text" value="" onchange="modifyScore(this, ' + data + ')"/>';
			$rankInput = '<input class="form-input is-active" name="rank" type="text" value="" onchange="modifyScore(this, ' + data + ')"/>';
			$deleteIcon = $('<i class="fas fa-trash-alt">');

			$studentNameInputDiv = $('<div class="input-group">').html($studentNameInput)
			$subjectInputDiv = $('<div class="input-group">').html($subjectInput)
			$targetScoreInputDiv = $('<div class="input-group">').html($targetScoreInput)
			$scoreInputDiv = $('<div class="input-group">').html($scoreInput)
			$rankInputDiv = $('<div class="input-group">').html($rankInput)
			$deleteScoreBtn = $(`<button type="button" aria-label="삭제 버튼" onclick="removeScore( ${data}, ${examNo} )">`).html($deleteIcon)
			
			$studentNameTd.append($studentNameInputDiv);
			$subjectTd.append($subjectInputDiv);
			$targetScoreTd.append($targetScoreInputDiv);
			$scoreTd.append($scoreInputDiv);
			$rankTd.append($rankInputDiv);
			$deleteScoreTd.append($deleteScoreBtn);
			
			
			$tr.append($studentNameTd);
			$tr.append($subjectTd);
			$tr.append($targetScoreTd);
			$tr.append($scoreTd);
			$tr.append($rankTd);
			$tr.append($deleteScoreTd);
			
			$('#addTr').before($tr);
			
			formInputs = document.querySelectorAll('.form-input')
			deleteScoreBtns = document.querySelectorAll('.delete-score-btn')
		},
		error: function(error) {
			console.log(error);
		}
	});	
}