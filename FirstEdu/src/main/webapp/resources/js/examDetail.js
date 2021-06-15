const lock = document.querySelector('.fa-lock')
const unlock = document.querySelector('.fa-unlock')
const lockEvent = document.querySelector('.lock-event')
const formInputs = document.querySelectorAll('.form-input')
const dates = document.querySelectorAll('.attendance-date')
const textarea = document.querySelector('textarea')

if (lock) {
  unlock.classList.add('visually-hidden')
  textarea.readOnly = 'readOnly'

  for (const form of formInputs) {
    form.readOnly = 'readOnly'
  }

  for (const date of dates) {
    date.readOnly = 'readOnly'
  }
} else {
  lock.classList.add('visually-hidden')
  textarea.readOnly = false

  for (const form of formInputs) {
    form.readOnly = false
  }

  for (const date of dates) {
    date.readOnly = false
  }
}

lockEvent.addEventListener('click', () => {
  lock.classList.toggle('visually-hidden')
  unlock.classList.toggle('visually-hidden')

  for (const form of formInputs) {
    form.classList.toggle('is-active')

    let isLock = true
    for (const className of lock.classList) {
      if (className == 'visually-hidden') {
        isLock = false
      }
    }

    if (isLock) {
      form.readOnly = 'readOnly'
    } else {
      form.readOnly = false
    }
  }

  for (const date of dates) {
    let isLock = true
    for (const className of lock.classList) {
      if (className == 'visually-hidden') {
        isLock = false
      }
    }

    if (isLock) {
      date.readOnly = 'readOnly'
    } else {
      date.readOnly = false
    }
  }

  let isLock = true
  for (const className of lock.classList) {
    if (className == 'visually-hidden') {
      isLock = false
    }
  }

  if (isLock) {
    textarea.readOnly = 'readOnly'
  } else {
    textarea.readOnly = false
  }
})
