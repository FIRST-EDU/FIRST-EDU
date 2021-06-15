/* breadcrumb 변경 */
$(function(){
	$('#parentMenu').text('성적 관리');
	$('#parentMenu').attr('href', '/firstedu/grade/exam/list');
	$('#nowMenu').text('시험 성적');
})

/* ajax를 통한 시험 수정 기능 */
function modifyExam(modifiedInput, examNo) {
	alert('test');
	let modifiedColumn = $(modifiedInput).attr("name");
	let modifiedValue;
	
	if(modifiedColumn == 'description') {
		modifiedValue = $(modifiedInput).text();
	} else {
		modifiedValue = $(modifiedInput).val();
	}
	
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