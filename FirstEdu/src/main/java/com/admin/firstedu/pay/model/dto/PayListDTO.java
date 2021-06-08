package com.admin.firstedu.pay.model.dto;

public class PayListDTO {

	private int payNo;
	private String payYn;
	private String payOption;
	private int payMonth;
	private int payment;
	private java.sql.Date payDate;
	private String payStatus;
	private ClassDTO classDTO;
	private DiscountDTO discount; // 할인번호, 할인율, 사유
	private ClassInfoDTO classInfo; // 수강번호, 수강시작일
	private StudentDTO student; // 학생번호, 학생명

	public PayListDTO() {
		super();
	}

	public PayListDTO(int payNo, String payYn, String payOption, int payMonth, int payment, java.sql.Date payDate,
			String payStatus, ClassDTO classDTO, DiscountDTO discount, ClassInfoDTO classInfo, StudentDTO student) {
		super();
		this.payNo = payNo;
		this.payYn = payYn;
		this.payOption = payOption;
		this.payMonth = payMonth;
		this.payment = payment;
		this.payDate = payDate;
		this.payStatus = payStatus;
		this.classDTO = classDTO;
		this.discount = discount;
		this.classInfo = classInfo;
		this.student = student;
	}

	public int getPayNo() {
		return payNo;
	}

	public void setPayNo(int payNo) {
		this.payNo = payNo;
	}

	public String getPayYn() {
		return payYn;
	}

	public void setPayYn(String payYn) {
		this.payYn = payYn;
	}

	public String getPayOption() {
		return payOption;
	}

	public void setPayOption(String payOption) {
		this.payOption = payOption;
	}

	public int getPayMonth() {
		return payMonth;
	}

	public void setPayMonth(int payMonth) {
		this.payMonth = payMonth;
	}

	public int getPayment() {
		return payment;
	}

	public void setPayment(int payment) {
		this.payment = payment;
	}

	public java.sql.Date getPayDate() {
		return payDate;
	}

	public void setPayDate(java.sql.Date payDate) {
		this.payDate = payDate;
	}

	public String getPayStatus() {
		return payStatus;
	}

	public void setPayStatus(String payStatus) {
		this.payStatus = payStatus;
	}

	public ClassDTO getClassDTO() {
		return classDTO;
	}

	public void setClassDTO(ClassDTO classDTO) {
		this.classDTO = classDTO;
	}

	public DiscountDTO getDiscount() {
		return discount;
	}

	public void setDiscount(DiscountDTO discount) {
		this.discount = discount;
	}

	public ClassInfoDTO getClassInfo() {
		return classInfo;
	}

	public void setClassInfo(ClassInfoDTO classInfo) {
		this.classInfo = classInfo;
	}

	public StudentDTO getStudent() {
		return student;
	}

	public void setStudent(StudentDTO student) {
		this.student = student;
	}

	@Override
	public String toString() {
		return "PayListDTO [payNo=" + payNo + ", payYn=" + payYn + ", payOption=" + payOption + ", payMonth=" + payMonth
				+ ", payment=" + payment + ", payDate=" + payDate + ", payStatus=" + payStatus + ", classDTO="
				+ classDTO + ", discount=" + discount + ", classInfo=" + classInfo + ", student=" + student + "]";
	}

}
