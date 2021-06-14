/* breadcrumb 변경 */
$(function(){
	$('#parentMenu').text('원생 관리');
	$('#parentMenu').attr('href', '/firstedu/student/regist/list');
	$('#nowMenu').text('재원생 목록');
})

/* select 값 변경 시 검색 목록 조회 */
$('#searchValue').change(function() {
	searchStudent(1);
});
$('#school').change(function() {
	searchStudent(1);
});
$('#gradeCode').change(function() {
	searchStudent(1);
});
$('#classCode').change(function() {
	searchStudent(1);
});


/* 학생 목록 테이블 조회 */
function searchStudent(pageNo) {
	let searchOption = $('#searchOption').val();
	let searchValue = $('#searchValue').val();
	let school = $('#school').val();
	let gradeCode = $('#gradeCode').val();
	let classCode = $('#classCode').val();
	
	$.ajax({
		url: "/firstedu/student/regist/search/" + pageNo,
		type: "get",
		data: {
				searchValue : searchValue,
				searchOption : searchOption,
				school : school,
				gradeCode : gradeCode,
				classCode : classCode
			  },
		success: function(data) {
			/* 총 원생 수 수정 */
			$('.sum-storage-price').html("총 인원 : " + data.pageInfo.totalCount + "명");			
		
			/* 테이블 데이터 수정 */
			const $table = $('#studentRegistTable tbody');
			$table.html("");
			
			let no = (pageNo - 1) * data.pageInfo.limit + 1
			for(var index in data.studentList) {
				$noTd = $('<td>').text(data.studentList[index].no);
				$nameTd = $('<td>').text(data.studentList[index].name);
				$schoolTd = $('<td>').text(data.studentList[index].school);
				$gradeTd = $('<td>').text(data.studentList[index].grade);
				
				$classInfoTd = $('<td>');
				for(var i in data.studentList[index].classList) {
					if(data.studentList[index].classList[i].subjectNo == '1') {
						$classSpan = $('<span class="tag-light-blue">').text(data.studentList[index].classList[i].name);
						$classInfoTd.append($classSpan);
					} else {
						$classSpan = $('<span class="tag-violet">').text(data.studentList[index].classList[i].name);
						$classInfoTd.append($classSpan);
					}
				}
				
				$studentPhoneTd = $('<td>').text(data.studentList[index].studentPhone);
				$parentsPhoneTd = $('<td>').text(data.studentList[index].parentsPhone);
				
				let registrationDate = data.studentList[index].registrationDate.substring(0, 10);
				$registrationDateTd = $('<td>').text(registrationDate);
				
				$tr = $('<tr>');
				$tr.append($noTd);
				$tr.append($nameTd);
				$tr.append($schoolTd);
				$tr.append($gradeTd);
				$tr.append($classInfoTd);
				$tr.append($studentPhoneTd);
				$tr.append($parentsPhoneTd);
				$tr.append($registrationDateTd);
				
				$table.append($tr);
				
			}
			
			/* 상세 페이지 조회용 이벤트 추가 */
			$("#studentRegistTable td").click(function() {
				const no = $(this).parent().children(':eq(0)').text();
				location.href = "/firstedu/student/" + no;
			})
			
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
			}
			if(pageNo > 1)  {
				$leftButton = $('<button class="page-control page-prev" type="button" onclick="searchStudent(' + (pageNo-1) + ')">').html('<span class="material-icons"> chevron_left </span>');
			}

			/* 페이지 숫자 */
			$ol = $('<ol class="page-list">');
			for(let p = startPage ; p <= endPage ; p++) {
				if(p == pageNo) {
					$li = $('<li class="page-item is-active">');
					$button = $('<button type="button" disabled>').text(p);
				} else {
					$li = $('<li class="page-item">');
					$button = $('<button type="button" onclick="searchStudent(this.innerText)">').text(p);
				}
			
				$li.append($button);
				$ol.append($li);
			}
			
			/* 오른쪽 버튼 */
			if(pageNo == maxPage) {
				$rightButton = $('<button class="page-control page-next" type="button" disabled>').html('<span class="material-icons"> chevron_right </span>');
			}
			if(pageNo < maxPage) {
				$rightButton = $('<button class="page-control page-next" type="button" onclick="searchStudent(' + (pageNo+1) + ')">').html('<span class="material-icons"> chevron_right </span>');
			}
			
			$pagenation.append($leftButton);
			$pagenation.append($ol);
			$pagenation.append($rightButton);			

		},
		error: function(error) {
			alert('원생 목록을 불러오지 못 했습니다. 잠시 후 다시 시도해 주세요.');
		}
	});
	
} // searchStudent(pageNo) end

/* 상세 페이지 조회용 */
$("#studentRegistTable td").click(function() {
	const no = $(this).parent().children(":eq(0)").text();
	location.href = "/firstedu/student/" + no;
})