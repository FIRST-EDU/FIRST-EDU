$('#categoryNo').change(function(){
	let categoryNo = $('#categoryNo').val();
	
	if(categoryNo == '1') {
		$('#school').css('display', 'block');
		$('#gradeCode').css('display', 'none');
		$('#classCode').css('display', 'none');
	
	} else if(categoryNo == '2') {
		$('#school').css('display', 'none');
		$('#gradeCode').css('display', 'block');
		$('#classCode').css('display', 'none');
	
	} else {
		$('#school').css('display', 'none');
		$('#gradeCode').css('display', 'none');
		$('#classCode').css('display', 'block');
	}
	
});