const mediaDesktop = window.matchMedia('screen and (min-width: 1200px)')
const toggleMenuBtn = document.querySelector('.toggle-menu')
const open = document.querySelector('.open')
const close = document.querySelector('.close')
const sideGnb = document.querySelector('.side-gnb')
const globalHeader = document.querySelector('.global-header')
const commonBackground = document.querySelector('.common-background')
const primaryBackground = document.querySelector('.breadcrumb-point')

if (mediaDesktop.matches) {
  open.classList.add('visually-hidden')
  commonBackground.classList.add('is-active')
  sideGnb.classList.add('is-active')
  globalHeader.classList.add('is-active')
  primaryBackground.classList.add('is-active')
} else {
  close.classList.add('visually-hidden')
}

toggleMenuBtn.addEventListener('click', () => {
  commonBackground.classList.toggle('is-active')
  sideGnb.classList.toggle('is-active')
  globalHeader.classList.toggle('is-active')
  primaryBackground.classList.toggle('is-active')
  open.classList.toggle('visually-hidden')
  close.classList.toggle('visually-hidden')
})

/* Desktop Media Query Change Event */
window.addEventListener('resize', () => {
  if (mediaDesktop.matches) {
    commonBackground.classList.add('is-active')
    sideGnb.classList.add('is-active')
    globalHeader.classList.add('is-active')
    primaryBackground.classList.add('is-active')
    open.classList.add('visually-hidden')
    close.classList.remove('visually-hidden')
  } else {
    commonBackground.classList.remove('is-active')
    sideGnb.classList.remove('is-active')
    globalHeader.classList.remove('is-active')
    primaryBackground.classList.remove('is-active')
    open.classList.remove('visually-hidden')
    close.classList.add('visually-hidden')
  }
})
