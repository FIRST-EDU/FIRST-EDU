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
	searchExam(1);
});

$("select").change(function(){
	searchExam(1);
});

/* 시험 목록 조회 */
function searchExam(pageNo) {
	let schoolExam = $('#checkSchoolExam').prop('checked') ? 1 : 0;
	let mockExam = $('#checkMockExam').prop('checked') ? 2 : 0;
	let hagwonExam = $('#checkHagwonExam').prop('checked') ? 3 : 0;
	let categoryNo = $('#checkHagwonExam').prop('checked') ? $('#category').val() : 0;
	let classCode = $('#checkHagwonExam').prop('checked') ? $('#class').val() : null;
	let examName = $('#examName').val() ? $('#examName').val() : null;
	let limit = 10;
	
	$.ajax({
		url: "/firstedu/grade/exam/search/" + pageNo,
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
			
			for(var index in data.examList) {
				$noInput = '<input type="hidden" name="no-list" value="' + data.examList[index].examNo + '"/>';  
				$titleInput = '<input type="hidden" name="title-list" value="' + data.examList[index].examName + '"/>';  
				$startInput = '<input type="hidden" name="start-list" value="' + data.examList[index].startDate + '"/>';  
				$endInput = '<input type="hidden" name="end-list" value="' + data.examList[index].endDate + '"/>';  
				$colorInput = '<input type="hidden" name="color-list" value="' + data.examList[index].color.codeHex + '"/>';  
				
				$noTd = $('<td>').text(data.examList[index].examNo);
				$categoryTd = $('<td class="custom-tag">').html('<span class="' + data.examList[index].color.tagClassName + '">' + data.examList[index].examCategoryName + '</span>');
				$nameTd = $('<td>').text(data.examList[index].examName);
				
				const examCategoryNo = data.examList[index].examCategoryNo;
				if(examCategoryNo == 1) {
					$objectTd = $('<td>').text(data.examList[index].school);
				} else if(examCategoryNo == 2) {
					$objectTd = $('<td>').text(data.examList[index].mockExamGrade.name);
				} else {
					$objectTd = $('<td>').text(data.examList[index].classExamInfo.className);
				}
				
				$startTd = $('<td>').text(data.examList[index].startDate);
				$endTd = $('<td>').text(data.examList[index].endDate);
				$descriptionTd = $('<td>').text(data.examList[index].description);
				
				$tr = $('<tr>');
				$tr.append($noTd);
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
			
			/* 페이징 처리 */
			let totalCount = data.pageInfo.totalCount;
			let buttonAmount = data.pageInfo.buttonAmount;
			let maxPage = data.pageInfo.maxPage;
			let startPage = data.pageInfo.startPage;
			let endPage = data.pageInfo.endPage;
			
			if(maxPage < endPage) {
				endPage = maxPage;
			}
			
			const $pagenation = $('.pagenation');
			$pagenation.html("");
			
			/* 왼쪽 버튼 */
			if(pageNo == 1) {
				$leftButton = $('<button class="page-control page-prev" type="button" disabled>').html('<span class="material-icons"> chevron_left </span>');
			} else {
				$leftButton = $('<button class="page-control page-prev" type="button" onclick="searchExam(' + (pageNo-1) + ')">').html('<span class="material-icons"> chevron_left </span>');
			}

			/* 페이지 숫자 */
			$ol = $('<ol class="page-list">');
			for(let p = startPage ; p <= endPage ; p++) {
				if(p == pageNo) {
					$li = $('<li class="page-item is-active">');
				} else {
					$li = $('<li class="page-item">');
				}
			
				$a = $('<a href="#" onclick="searchExam(this.innerText)">' + p + '</a>');
			
				$li.append($a);
				$ol.append($li);
			}
			
			/* 오른쪽 버튼 */
			if(pageNo == maxPage) {
				$rightButton = $('<button class="page-control page-next" type="button" disabled>').html('<span class="material-icons"> chevron_right </span>');
			} else {
				$rightButton = $('<button class="page-control page-next" type="button" onclick="searchExam(' + (pageNo+1) + ')">').html('<span class="material-icons"> chevron_right </span>');
			}
			
			$pagenation.append($leftButton);
			$pagenation.append($ol);
			$pagenation.append($rightButton);			
				
			/* 캘린더 데이터 수정 */
//			calendar.removeAllEvents();
//			if(data.length != 0) {
//				addEvent();				
//			}
			
		},
		error: function(error) {
			alert('시험 목록을 불러오지 못 했습니다. 잠시 후 다시 시도해 주세요.');
		}
	});
	
} // searchExam() end

