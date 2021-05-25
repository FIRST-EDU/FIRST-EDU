package com.admin.firstedu.pay.model.dto;

import java.sql.Date;

public class PayListDTO {

	private int payNo;
	private String payYn;
	private String payOption;
	private int payMonth;
	private int payment;
	private Date payDate;
	private String payStatus;
	private SubjectCategoryDTO subjectCategory; // 과목카테고리번호, 과목이름
	private SubjectInfoDTO subjectInfo; // 과목번호, 수강료
	private DiscountDTO discount; // 할인번호, 할인율, 사유
	private ClassInfoDTO classInfo; // 수강번호, 수강시작일 
	private StudentDTO student; // 학생번호, 학생명

	public PayListDTO() {
		super();
	}

	public PayListDTO(int payNo, String payYn, String payOption, int payMonth, int payment, Date payDate,
			String payStatus, SubjectCategoryDTO subjectCategory, SubjectInfoDTO subjectInfo, DiscountDTO discount,
			ClassInfoDTO classInfo, StudentDTO student) {
		super();
		this.payNo = payNo;
		this.payYn = payYn;
		this.payOption = payOption;
		this.payMonth = payMonth;
		this.payment = payment;
		this.payDate = payDate;
		this.payStatus = payStatus;
		this.subjectCategory = subjectCategory;
		this.subjectInfo = subjectInfo;
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

	public Date getPayDate() {
		return payDate;
	}

	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}

	public String getPayStatus() {
		return payStatus;
	}

	public void setPayStatus(String payStatus) {
		this.payStatus = payStatus;
	}

	public SubjectCategoryDTO getSubjectCategory() {
		return subjectCategory;
	}

	public void setSubjectCategory(SubjectCategoryDTO subjectCategory) {
		this.subjectCategory = subjectCategory;
	}

	public SubjectInfoDTO getSubjectInfo() {
		return subjectInfo;
	}

	public void setSubjectInfo(SubjectInfoDTO subjectInfo) {
		this.subjectInfo = subjectInfo;
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
				+ ", payment=" + payment + ", payDate=" + payDate + ", payStatus=" + payStatus + ", subjectCategory="
				+ subjectCategory + ", subjectInfo=" + subjectInfo + ", discount=" + discount + ", classInfo="
				+ classInfo + ", student=" + student + "]";
	}

	
	

}
