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
	private ClassInfoDTO classInfo; // 수강번호, 수강시작일 / 학생번호, 학생이름 / 과목코드, 수강료 / 과목카테고리번호, 과목이름
	private DiscountDTO discount;

	public PayListDTO() {
		super();
	}

	public PayListDTO(int payNo, String payYn, String payOption, int payMonth, int payment, Date payDate,
			String payStatus, ClassInfoDTO classInfo, DiscountDTO discount) {
		super();
		this.payNo = payNo;
		this.payYn = payYn;
		this.payOption = payOption;
		this.payMonth = payMonth;
		this.payment = payment;
		this.payDate = payDate;
		this.payStatus = payStatus;
		this.classInfo = classInfo;
		this.discount = discount;
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

	public ClassInfoDTO getClassInfo() {
		return classInfo;
	}

	public void setClassInfo(ClassInfoDTO classInfo) {
		this.classInfo = classInfo;
	}

	public DiscountDTO getDiscount() {
		return discount;
	}

	public void setDiscount(DiscountDTO discount) {
		this.discount = discount;
	}

	@Override
	public String toString() {
		return "PayListDTO [payNo=" + payNo + ", payYn=" + payYn + ", payOption=" + payOption + ", payMonth=" + payMonth
				+ ", payment=" + payment + ", payDate=" + payDate + ", payStatus=" + payStatus + ", discount="
				+ discount + "]";
	}

}
