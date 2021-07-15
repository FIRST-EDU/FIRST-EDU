/* breadcrumb 변경 */
$(function(){
	$('#parentMenu').text('원생 관리');
	$('#parentMenu').attr('href', '/firstedu/student/regist/list');
	$('#nowMenu').text('원생 등록');
})

$(document).ready(function() {
    let date = new Date();

    let day = date.getDate();
    let month = date.getMonth() + 1;
    let year = date.getFullYear();

    if(month < 10) {
	    month = "0" + month;
    }
    if(day < 10) {
    	day = "0" + day;
	}
	
    let today = year + "-" + month + "-" + day;       
    $("#registrationDate").attr("value", today);
});

function searchAddress() {
    new daum.Postcode({
        oncomplete: function(data) {
            document.getElementById("basicAddress").value = data.address;	// 가져온 주소를 input태그에 넣기
        }
    }).open();
}

let classCodeList = $('.class-code');
let classNameList = $('.class-name');
let subjectNoList = $('.subject-no');

$('#classCode').change(function() {
	let classCode = $('#classCode').val();
	let className;
	let subjectNo;
	
	if(classCode != 'none') {
		for(var i = 0 ; i < classCodeList.length ; i++) {
			if(classCodeList.eq(i).val() == classCode) {
				className = classNameList.eq(i).val();
				subjectNo = subjectNoList.eq(i).val();
				break;
			}
		}
		
		if(subjectNo == '1') {
			$classSpan = $('<span id="classSpan" class="tag-light-blue">');
		} else if(subjectNo == '2') {
			$classSpan = $('<span id="classSpan" class="tag-violet">');
		} else {
			$classSpan = $('<span id="classSpan" class="tag-blue">');
		}
		$classCodeInput = '<input type="hidden" name="classCode" value="' + classCode + '">';
		
		$classSpan.html(className + $classCodeInput + '&nbsp; &nbsp; <span id="removeBtn" onclick="removeClass(this)">&#215;</span>')
		
		$('#classInfoForm').append($classSpan);
		
	}
});

function removeClass(removedClass) {
	removedClass.closest("#classSpan").remove();
}