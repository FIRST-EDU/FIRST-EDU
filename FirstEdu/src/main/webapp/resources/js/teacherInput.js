let radioBtns = document.querySelectorAll('input[type=radio]')
let checkFemaleInput = document.getElementById('female')
let checkMaleInput = document.getElementById('male')
let checkFemaleLabel = document.querySelector('.check-female')
let checkMaleLabel = document.querySelector('.check-male')

for (const btn of radioBtns) {
  btn.addEventListener('change', function () {
    if (checkFemaleInput.checked) {
      checkFemaleLabel.classList.add('checked-radio')
    } else {
      checkFemaleLabel.classList.remove('checked-radio')
    }

    if (checkMaleInput.checked) {
      checkMaleLabel.classList.add('checked-radio')
    } else {
      checkMaleLabel.classList.remove('checked-radio')
    }
  })
}
