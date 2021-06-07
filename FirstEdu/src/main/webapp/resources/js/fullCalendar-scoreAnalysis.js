let calendar

/* 처음 달력 생성 */
document.addEventListener('DOMContentLoaded', function () {
  var calendarEl = document.getElementById('calendar')

  calendar = new FullCalendar.Calendar(calendarEl, {
    locale: 'ko',
    firstDay: 1,
    headerToolbar: {
      left: 'prev,next today',
      center: 'title',
      right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth',
    },
    buttonText: {
      today: '오늘',
      month: '월',
      week: '주',
      day: '일',
      list: '목록',
    },
    navLinks: true, // can click day/week names to navigate views
    nowIndicator: true,
    dayPopoverFormat: 'dddd DD/MM',
    eventColor: '#5e72e4', // 이벤트 색상
    selectable: true,
    selectMirror: true,
    events: [
        {
          title: '더조은고 중간고사',
          start: '2021-05-24',
          // display: 'list-item'
        },
        {
          groupId: 999,
          title: 'test 주간 평가',
          start: '2021-05-23T19:30:00',
          end: '2021-05-23T20:00:00'
        },
        {
          groupId: 999,
          title: '주간 평가',
          start: '2021-05-24T20:30:00',
          end: null
        },
        {
          title: 'test402고 중간고사',
          start: '2021-05-24',
          end: '2021-05-27',
          display: 'block',
          // borderColor: 'beige',
          color: '#ffd600',
          // textColor: 'blue'
        },
        {
          title: '고1 단원 평가',
          start: '2021-05-24T20:30:00',
          display: 'list-item',
          color: '#2dce89'
        },
        {
          title: '고2 단원 평가',
          start: '2021-05-24T20:30:00',
          display: 'list-item',
          color: '#5E72E4'
        },
        {
          title: '고3 단원 평가',
          start: '2021-05-24T20:30:00',
          display: 'list-item',
          color: '#fb6340'
        },
        {
          title: '더조은고 영어',
          start: '2021-05-24',
          end: '2021-05-24',
          display: 'list-item',
          color: '#d4e3ee'
        },
        {
          title: '402고 영어',
          start: '2021-05-27',
          end: '2021-05-27',
          display: 'list-item',
          color: '#825ee4'
        }
      ],
    select: function (arg) {
      var title = prompt('일정을 입력하세요:')
      if (title) {
        calendar.addEvent({
          title: title,
          start: arg.start,
          end: arg.end,
          allDay: arg.allDay,
        })
      }
      calendar.unselect()
    },
    eventClick: function (arg) {
      if (confirm('일정을 삭제하시겠습니까?')) {
        arg.event.remove()
      }
    },
    editable: true,
  })

  calendar.render()
})
