let radioBtns = document.querySelectorAll('input[type=radio]')
let checkFriendInput = document.getElementById('checkFriend')
let checkMonthInput = document.getElementById('checkMonth')
let checkNullInput = document.getElementById('checkNull')
let checkFriendLabel = document.querySelector('.check-friend')
let checkMonthLabel = document.querySelector('.check-month')
let checkNullLabel = document.querySelector('.check-null')

for (const btn of radioBtns) {
  btn.addEventListener('change', function () {
    if (checkFriend.checked) {
      checkFriendLabel.classList.add('checked-radio')
    } else {
      checkFriendLabel.classList.remove('checked-radio')
    }

    if (checkMonth.checked) {
      checkMonthLabel.classList.add('checked-radio')
    } else {
      checkMonthLabel.classList.remove('checked-radio')
    }

    if (checkNull.checked) {
      checkNullLabel.classList.add('checked-radio')
    } else {
      checkNullLabel.classList.remove('checked-radio')
    }
  })
}
