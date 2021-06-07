const allAttendanceBtn = document.querySelector('.all-attendance')
const firstBtns = document.querySelectorAll('.btn-outlined-gray:nth-child(2)')
const secondBtns = document.querySelectorAll('.btn-outlined-gray:nth-child(4)')
const thirdBtns = document.querySelectorAll('.btn-outlined-gray:nth-child(6)')
const fourthBtns = document.querySelectorAll('.btn-outlined-gray:nth-child(8)')
const classBtns = document.querySelector('.btn-setting')

allAttendanceBtn.addEventListener('click', () => {
  firstBtns.forEach((btn) => {
    btn.classList.toggle('btn-fill-blue')
  })

  if (allAttendanceBtn.innerText == '전체 출석') {
    allAttendanceBtn.innerText = '전체 해제'
  } else {
    allAttendanceBtn.innerText = '전체 출석'
  }
})

for (const btn of firstBtns) {
  btn.addEventListener('mouseover', () => {
    btn.classList.add('btn-outlined-blue')
  })
  btn.addEventListener('mouseout', () => {
    btn.classList.remove('btn-outlined-blue')
  })
  btn.addEventListener('click', () => {
    btn.classList.toggle('btn-fill-blue')
  })
}

for (const btn of secondBtns) {
  btn.addEventListener('mouseover', () => {
    btn.classList.add('btn-outlined-violet')
  })
  btn.addEventListener('mouseout', () => {
    btn.classList.remove('btn-outlined-violet')
  })
  btn.addEventListener('click', () => {
    btn.classList.toggle('btn-fill-violet')
  })
}

for (const btn of thirdBtns) {
  btn.addEventListener('mouseover', () => {
    btn.classList.add('btn-outlined-red')
  })
  btn.addEventListener('mouseout', () => {
    btn.classList.remove('btn-outlined-red')
  })
  btn.addEventListener('click', () => {
    btn.classList.toggle('btn-fill-red')
  })
}

for (const btn of fourthBtns) {
  btn.addEventListener('mouseover', () => {
    btn.classList.add('btn-outlined-orange')
  })
  btn.addEventListener('mouseout', () => {
    btn.classList.remove('btn-outlined-orange')
  })
  btn.addEventListener('click', () => {
    btn.classList.toggle('btn-fill-orange')
  })
}

function setButton(selectedBtn) {
  const btns = document.querySelectorAll('.btn-setting')

  selectedBtn.classList.add('is-active')

  btns.forEach((btn) => {
    if (btn != selectedBtn) {
      btn.classList.remove('is-active')
    }
  })
}
