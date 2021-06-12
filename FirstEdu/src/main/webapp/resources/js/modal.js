const modals = document.querySelectorAll('.modal')
const deleteBtns = document.querySelectorAll('.delete-btn')
const deleteBasicBtn = document.querySelector('.delete-b-btn')
const deleteBoardModal = document.querySelector('.delete-board-modal')
const completeModal = document.querySelector('.complete-modal')
const completeDeleteBoardModal = document.querySelector(
  '.complete-delete-board-modal'
)
const completeInputBoardModal = document.querySelector(
  '.complete-input-board-modal'
)
const completeEditBoardModal = document.querySelector(
  '.complete-edit-board-modal'
)
const againEditBoardModal = document.querySelector('.again-edit-board-modal')
const detailBoardModal = document.querySelector('.detail-board-modal')
const cancelBoardModal = document.querySelector('.cancel-board-modal')
const editBoardModal = document.querySelector('.edit-board-modal')
const secondModal = document.querySelector('.second-modal')
const cancelBoardBtn = document.querySelector('.cancel-board-btn')
const deleteBoardBtn = document.querySelector('.delete-board-btn')
const editBoardBtn = document.querySelector('.edit-board-btn')
const backBtns = document.querySelectorAll('.back-btn')
const editBtns = document.querySelectorAll('.edit-btn')
const confirmBtn = document.querySelector('.confirm-btn')
const completeBtns = document.querySelectorAll('.complete-btn')
const basicBtns = document.querySelectorAll('.btn-basic')
const modalTr = document.querySelectorAll('.click-detail-modal tr')
const overlay = document.querySelector('.overlay')
const body = document.querySelector('body')

if (deleteBtns) {
  for (const deleteBtn of deleteBtns) {
    deleteBtn.addEventListener('click', () => {
      overlay.classList.add('is-active')
      body.classList.add('modal-open')
      deleteBoardModal.classList.add('is-active')
    })
  }
}

if (deleteBasicBtn) {
  deleteBasicBtn.addEventListener('click', () => {
    overlay.classList.add('is-active')
    body.classList.add('modal-open')
    deleteBoardModal.classList.add('is-active')

    for (const basicBtn of basicBtns) {
      basicBtn.disabled = 'disabled'
    }
  })
}

if (editBtns) {
  for (const editBtn of editBtns) {
    editBtn.addEventListener('click', () => {
      overlay.classList.add('is-active')
      body.classList.add('modal-open')
      editBoardModal.classList.add('is-active')
    })
  }
}

if (cancelBoardBtn) {
  cancelBoardBtn.addEventListener('click', () => {
    overlay.classList.add('is-active')
    body.classList.add('modal-open')
    cancelBoardModal.classList.add('is-active')
  })
}

if (editBoardBtn) {
  editBoardBtn.addEventListener('click', () => {
    overlay.classList.add('is-active')
    body.classList.add('modal-open')
    againEditBoardModal.classList.add('is-active')

    for (const basicBtn of basicBtns) {
      basicBtn.disabled = 'disabled'
    }
  })
}

if (confirmBtn) {
  confirmBtn.addEventListener('click', () => {
    overlay.classList.add('is-active')
    body.classList.add('modal-open')
    completeInputBoardModal.classList.add('is-active')
  })
}

for (const tr of modalTr) {
  tr.addEventListener('click', () => {
    overlay.classList.add('is-active')
    body.classList.add('modal-open')
    detailBoardModal.classList.add('is-active')
  })
}

for (const backBtn of backBtns) {
  backBtn.addEventListener('click', () => {
    let isActive = false
    if (secondModal) {
      for (const className of secondModal.classList) {
        if (className == 'is-active') {
          isActive = true
        }
      }
    }
    if (isActive) {
      secondModal.classList.remove('is-active')

      for (const basicBtn of basicBtns) {
        basicBtn.disabled = false
      }
    } else {
      overlay.classList.remove('is-active')
      body.classList.remove('modal-open')
      for (const modal of modals) {
        modal.classList.remove('is-active')
      }
    }
  })
}

if (deleteBoardBtn) {
  deleteBoardBtn.addEventListener('click', () => {
    body.classList.add('modal-open')
    deleteBoardModal.classList.remove('is-active')
    completeDeleteBoardModal.classList.add('is-active')
    completeInputBoardModal.classList.remove('is-active')

    // completeModal.classList.add('is-active')
  })
}

if (completeBtns) {
  for (const completeBtn of completeBtns)
    completeBtn.addEventListener('click', () => {
      body.classList.remove('modal-open')
      overlay.classList.remove('is-active')
      for (const modal of modals) {
        modal.classList.remove('is-active')
      }
      // completeInputBoardModal.classList.remove('is-active')
      // completeDeleteBoardModal.classList.remove('is-active')
    })
}

overlay.addEventListener('click', () => {
  overlay.classList.remove('is-active')
  body.classList.remove('modal-open')

  if (completeModal) {
    completeModal.classList.remove('is-active')
  }

  for (const modal of modals) {
    modal.classList.remove('is-active')
  }

  for (const basicBtn of basicBtns) {
    basicBtn.disabled = false
  }
})

// openBtn.addEventListener('click', () => {
//   overlay.classList.toggle('is-active')
// })

// if (completeModal) {
//   overlay.classList.add('is-active')
//   completeModal.classList.add('is-active')
//   body.classList.add('modal-open')
// }
