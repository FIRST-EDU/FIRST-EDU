let calendar;

/* 처음 달력 생성 및 이벤트 추가 */
$(function() {
	setTimeout(function(){
		createCalendar();
		addEvent();
	}, 150);
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
        navLinks: true, // can click day/week names to navigate views
        nowIndicator: true,
        dayPopoverFormat: "dddd DD/MM",
        eventColor: "#5e72e4", // 이벤트 색상
        selectable: true,
        selectMirror: true,
        select: function (arg) {
            var title = prompt("일정을 입력하세요:");
            if (title) {
                calendar.addEvent({
                    title: title,
                    start: arg.start,
                    end: arg.end,
                    allDay: arg.allDay,
                });
            }
            calendar.unselect();
        },
        eventClick: function (arg) {
            if (confirm("일정을 삭제하시겠습니까?")) {
                arg.event.remove();
            }
        },
        editable: true,
    });

    calendar.render();
}



/* 이벤트 추가 */
function addEvent() {
	let titleList = $('input[name="title-list"]');
	let startList = $('input[name="start-list"]');
	let endList = $('input[name="end-list"]');
	let colorList = $('input[name="color-list"]');
	
	let titleArray = [];
	let startArray = [];
	let endArray = [];
	let colorArray = [];

    for (let i = 0 ; i < titleList.length ; i++) {
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
            title: titleArray[i].titleList,
            start: startArray[i].startList,
            end: endArray[i].endList,
            color: colorArray[i].colorList
        });
    }
}