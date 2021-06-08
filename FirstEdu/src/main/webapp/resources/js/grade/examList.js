/* 검색 대상에서 학원 시험 제외 시 시험 종류 및 강의명 선택 옵션 제거 */
$('#checkHagwonExam').click(function() {
	$('select[name=category]').closest('form').toggle();
	$('.select-class-wrap').toggle();
//	if($(this).prop('checked')) {
//		$('select[name=category] > option:first-child').text('선택');
//	} else {
//		$('select[name=category] > option:first-child').text('');
//	}
})

/* 필터 검색 */
$("input").change(function(){
	searchExam();
});

$("select").change(function(){
	searchExam();
});

function searchExam() {
	let schoolExam = $('#checkSchoolExam').prop('checked') ? 1 : 0;
	let mockExam = $('#checkMockExam').prop('checked') ? 2 : 0;
	let hagwonExam = $('#checkHagwonExam').prop('checked') ? 3 : 0;
	let categoryNo = $('#checkHagwonExam').prop('checked') ? $('#category').val() : 0;
	let classCode = $('#checkHagwonExam').prop('checked') ? $('#class').val() : null;
	let examName = $('#examName').val() ? $('#examName').val() : null;
	
	$.ajax({
		url: "/firstedu/grade/exam/search",
		type: "get",
		data: {
				schoolExam : schoolExam,
				mockExam : mockExam,
				hagwonExam : hagwonExam,
				categoryNo : categoryNo,
				classCode : classCode,
				examName : examName
			  },
		success: function(data) {
			/* 테이블 데이터 수정 */
			const $table = $('#examTable tbody');
			$table.html("");
			
			for(var index in data) {
				$noInput = '<input type="hidden" name="no-list" value="' + data[index].examNo + '"/>';  
				$titleInput = '<input type="hidden" name="title-list" value="' + data[index].examName + '"/>';  
				$startInput = '<input type="hidden" name="start-list" value="' + data[index].startDate + '"/>';  
				$endInput = '<input type="hidden" name="end-list" value="' + data[index].endDate + '"/>';  
				$colorInput = '<input type="hidden" name="color-list" value="' + data[index].color.codeHex + '"/>';  
				
				$countTd = $('<td>').text(parseInt(index)+1);
				$categoryTd = $('<td class="custom-tag">').html('<span class="' + data[index].color.tagClassName + '">' + data[index].examCategoryName + '</span>');
				$nameTd = $('<td>').text(data[index].examName);
				
				const examCategoryNo = data[index].examCategoryNo;
				if(examCategoryNo == 1) {
					$objectTd = $('<td>').text(data[index].school);
				} else if(examCategoryNo == 2) {
					$objectTd = $('<td>').text(data[index].mockExamGrade.name);
				} else {
					$objectTd = $('<td>').text(data[index].classExamInfo.className);
				}
				
				$startTd = $('<td>').text(data[index].startDate);
				$endTd = $('<td>').text(data[index].endDate);
				$descriptionTd = $('<td>').text(data[index].description);
				
				$tr = $('<tr>');
				$tr.append($countTd);
				$tr.append($categoryTd);
				$tr.append($nameTd);
				$tr.append($objectTd);
				$tr.append($startTd);
				$tr.append($endTd);
				$tr.append($descriptionTd);
				
				$table.append($noInput);
				$table.append($titleInput);
				$table.append($startInput);
				$table.append($endInput);
				$table.append($colorInput);
				$table.append($tr);
				
			}
				
			/* 캘린더 데이터 수정 */
			calendar.removeAllEvents();
			if(data.length != 0) {
				addEvent();				
			}
			
		},
		error: function(error) {
			alert('시험 목록을 불러오지 못 했습니다. 잠시 후 다시 시도해 주세요.');
		}
	});
	
}