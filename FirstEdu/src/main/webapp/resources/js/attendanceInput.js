const firstBtns = document.querySelectorAll('.btn-outlined-gray:nth-child(1)')
const secondBtns = document.querySelectorAll('.btn-outlined-gray:nth-child(2)')
const thirdBtns = document.querySelectorAll('.btn-outlined-gray:nth-child(3)')
const fourthBtns = document.querySelectorAll('.btn-outlined-gray:nth-child(4)')

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

window.onload = function () {
  console.log('test')
  let parent = document.querySelector('.primary-background')

  while (parent) {
    console.log('test2')
    const hasOverflow = getComputedStyle(parent).overflow
    console.log(hasOverflow)
    if (hasOverflow !== 'visible') {
      console.log(hasOverflow, parent)
    }
    parent = parent.parentElement
  }
}
