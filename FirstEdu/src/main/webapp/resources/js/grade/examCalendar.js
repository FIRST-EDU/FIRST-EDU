let calendar;

/* 처음 달력 생성 및 이벤트 추가 */
$(function() {
	setTimeout(function(){
		createCalendar();
		addEvent();
		/* 달력 날짜 변경 시 검색 목록 조회 */
		$('.fc-prev-button').click(function(){
			searchExamSchedule();
		});
		$('.fc-next-button').click(function(){
			searchExamSchedule();
		});
		$('.fc-today-button').click(function(){
			searchExamSchedule();
		});
		
	}, 200);
});

/* 처음 달력 생성 */
function createCalendar () {
    let calendarEl = document.getElementById("calendar");

    calendar = new FullCalendar.Calendar(calendarEl, {
        locale: "ko",
        firstDay: 1,
        headerToolbar: {
            left: "prev,next today",
            center: "title",
            right: "dayGridMonth,timeGridWeek",
        },
        buttonText: {
            today: "오늘",
            month: "월별",
            week: "주별",
        },
        nowIndicator: true,
        dayPopoverFormat: "dddd DD/MM",
        eventColor: "#5e72e4", // 이벤트 색상
        eventClick: function (arg) {
            location.href = '/firstedu/grade/exam/' + arg.event.id
        },
        editable: true
    });

    calendar.render();
}



/* 이벤트 추가 */
function addEvent() {
	let noList = $('input[name="no-list"]');
	let titleList = $('input[name="title-list"]');
	let startList = $('input[name="start-list"]');
	let endList = $('input[name="end-list"]');
	let colorList = $('input[name="color-list"]');
	
	let idArray = [];
	let titleArray = [];
	let startArray = [];
	let endArray = [];
	let colorArray = [];

    for (let i = 0 ; i < titleList.length ; i++) {
    	idArray.push({
    		'idList' : noList.eq(i).val()
    	});
    	titleArray.push({
    		'titleList' : titleList.eq(i).val()
    	});
    	startArray.push({
    		'startList' : startList.eq(i).val()
    	});
    	let endDate = new Date(endList.eq(i).val());
    	endDate.setDate(endDate.getDate() + 1);
    	let month = endDate.getMonth() + 1
    	let day = endDate.getDate()
    	let formatEndDate = endDate.getFullYear() + '-' + (month >= 10 ? month : '0'+month) + '-' + (day >= 10 ? day : '0'+day);
    	endArray.push({
    		'endList' : formatEndDate
    	});
    	colorArray.push({
    		'colorList' : colorList.eq(i).val()
    	});
    	
        calendar.addEvent({
            id: idArray[i].idList,
            title: titleArray[i].titleList,
            start: startArray[i].startList,
            end: endArray[i].endList,
            color: colorArray[i].colorList
        });
    }
}