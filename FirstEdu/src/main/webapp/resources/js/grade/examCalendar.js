let calendar;

/* 처음 달력 생성 */
document.addEventListener("DOMContentLoaded", function () {
    let calendarEl = document.getElementById("calendar");

    calendar = new FullCalendar.Calendar(calendarEl, {
        locale: "ko",
        firstDay: 1,
        headerToolbar: {
            left: "prev,next today",
            center: "title",
            right: "dayGridMonth,timeGridWeek,timeGridDay,listWeek",
        },
        buttonText: {
            today: "오늘",
            month: "월",
            week: "주",
            day: "일",
            list: "목록",
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
});

$(function(){
	addEvent($('#count').val(), $("input[name='title-list']"), $("input[name='start-list']"));
});

/* 이벤트 추가 */
function addEvent(count, titleList, startList) {

	let titleArray = [];
	let startArray = [];

    for (let i = 0 ; i < count ; i++) {
    	titleArray.push({
    		'titleList' : titleList.eq(i).val()
    	});
    	startArray.push({
    		'startList' : startList.eq(i).val()
    	});
    	
        calendar.addEvent({
            title: titleArray[i].titleList,
            start: startArray[i].startList
        });
    }
}
