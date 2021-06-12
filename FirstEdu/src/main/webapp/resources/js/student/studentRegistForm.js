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
