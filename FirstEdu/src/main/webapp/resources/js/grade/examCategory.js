let colorNoList = $('input[name=color-no]');
let colorNameList = $('input[name=color-name]');

function modifyCategory(clickedBtn) {

	$categoryTr = $(clickedBtn).parents('tr')
	
	let categoryNo = $categoryTr.find('input[name=categoryNo]').val();
	
	
	$colorTd = $categoryTr.children(":eq(2)");
	
	let colorName = $colorTd.find('span').text();
	console.log('colorName : ' + colorName);
	
	$colorTd.html(""); 
	
	$selectForm = $('<form class="select-group">');
	
	$selectColor = $('<select name="colorNo" class="form-select">');
	$selectBtn = $('<i class="fas fa-caret-down" aria-hidden>');
	
	for(var i = 0 ; i < colorNoList.length ; i++) {
		if(colorNameList.eq(i).val() == colorName) {
			$colorOption = $('<option value="colorNoList.eq(i).val()" selected>').text(colorNameList.eq(i).val());
		} else {
			$colorOption = $('<option value="colorNoList.eq(i).val()">').text(colorNameList.eq(i).val());
		}
			
		$selectColor.append($colorOption);
	}
	
	$selectForm.append($selectColor);
	$selectForm.append($selectBtn);
	
	$colorTd.append($selectForm);
		
}