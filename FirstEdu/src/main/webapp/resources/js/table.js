const tBodyTr = document.querySelectorAll('tbody tr')

for (const selectTr of tBodyTr) {
  selectTr.addEventListener('click', () => {
    selectTr.classList.add('is-active')

    for (const tr of tBodyTr) {
      if (tr != selectTr) {
        tr.classList.remove('is-active')
      }
    }
  })
}
