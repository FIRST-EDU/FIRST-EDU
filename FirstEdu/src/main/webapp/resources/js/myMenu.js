const myMenuBtn = document.querySelector('.my-menu-button')
const myMenu = document.querySelector('.my-menu')

myMenuBtn.addEventListener('click', () => {
  myMenu.classList.toggle('is-active')
})
