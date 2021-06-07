const calendarBtn = document.querySelector('.calendar-btn')
const listBtn = document.querySelector('.list-btn')
const calendarCard = document.querySelector('.calendar-card')
const scoreTableCard = document.querySelector('.score-table-card')

calendarBtn.addEventListener('click', () => {
  calendarBtn.classList.add('is-active')
  listBtn.classList.remove('is-active')
  calendarCard.style.display = 'block'
  scoreTableCard.style.display = 'none'
})

listBtn.addEventListener('click', () => {
  listBtn.classList.add('is-active')
  calendarBtn.classList.remove('is-active')
  scoreTableCard.style.display = 'block'
  calendarCard.style.display = 'none'
})
