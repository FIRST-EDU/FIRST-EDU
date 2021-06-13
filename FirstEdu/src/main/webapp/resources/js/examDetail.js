const lock = document.querySelector('.fa-lock')
const unlock = document.querySelector('.fa-unlock')
const lockEvent = document.querySelector('.lock-event')
const formInputs = document.querySelectorAll('.form-input')

if (lock) {
  unlock.classList.add('visually-hidden')
} else {
  lock.classList.add('visually-hidden')
}

lockEvent.addEventListener('click', () => {
  lock.classList.toggle('visually-hidden')
  unlock.classList.toggle('visually-hidden')
  for (const form of formInputs) {
    form.classList.toggle('is-active')
  }
})
