const categoryManagementBtn = document.getElementById('categoryManagementBtn')
const examCategoryManagementModal = document.getElementById('examCategoryManagementModal')
const examRegistBtn = document.getElementById('examRegistBtn')
const examRegistModal = document.getElementById('examRegistModal')

/* 시험 종류 관리 모달 활성화 */
categoryManagementBtn.addEventListener('click', () => {
	overlay.classList.add('is-active')
	body.classList.add('modal-open')
	examCategoryManagementModal.classList.add('is-active')
})

/* 시험 등록 모달 활성화 */
examRegistBtn.addEventListener('click', () => {
	overlay.classList.add('is-active')
	body.classList.add('modal-open')
	examRegistModal.classList.add('is-active')
})
