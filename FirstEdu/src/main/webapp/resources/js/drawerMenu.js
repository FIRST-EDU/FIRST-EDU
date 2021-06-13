const drawerMenus = document.querySelectorAll('.drawer-menu')
const drawerMenuItems = document.querySelectorAll('.drawer-menu-item')
const isGrade = document.querySelector('.is-grade')
const isClass = document.querySelector('.is-class')
const isSms = document.querySelector('.is-sms')
const isBoss = document.querySelector('.is-boss')

// drawerMenuItems.forEach((item) => {
//   item.addEventListener('click', () => {
//     item.classList.add('is-active')
//   })
// })

isGrade.addEventListener('click', () => {
  isGrade.classList.toggle('is-active')
  isGrade.classList.toggle('is-open')
})

isBoss.addEventListener('click', () => {
  isBoss.classList.toggle('is-active')
  isBoss.classList.toggle('is-open')
})
