myMenuBtn = document.querySelector('.my-menu-button')
myMenu = document.querySelector('.my-menu')

myMenuBtn.addEventListener('click', () => {
  myMenu.classList.toggle('is-active')
})
