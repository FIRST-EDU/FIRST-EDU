package com.admin.firstedu.pay.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class PayDTO implements Serializable {

	private static final long serialVersionUID = -8375624742277704267L;
	private int payNo;
	private int classNo;
	private int studentNo;
	private String payYn;
	private String payOption;
	private int payMonth;
	private int discountNo;
	private int payment;
	private Date payDate;
	private String payStatus;

	public PayDTO() {
		super();
	}

	public PayDTO(int payNo, int classNo, int studentNo, String payYn, String payOption, int payMonth, int discountNo,
			int payment, Date payDate, String payStatus) {
		super();
		this.payNo = payNo;
		this.classNo = classNo;
		this.studentNo = studentNo;
		this.payYn = payYn;
		this.payOption = payOption;
		this.payMonth = payMonth;
		this.discountNo = discountNo;
		this.payment = payment;
		this.payDate = payDate;
		this.payStatus = payStatus;
	}

	public int getPayNo() {
		return payNo;
	}

	public void setPayNo(int payNo) {
		this.payNo = payNo;
	}

	public int getClassNo() {
		return classNo;
	}

	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}

	public int getStudentNo() {
		return studentNo;
	}

	public void setStudentNo(int studentNo) {
		this.studentNo = studentNo;
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

	public int getDiscountNo() {
		return discountNo;
	}

	public void setDiscountNo(int discountNo) {
		this.discountNo = discountNo;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "PayDTO [payNo=" + payNo + ", classNo=" + classNo + ", studentNo=" + studentNo + ", payYn=" + payYn
				+ ", payOption=" + payOption + ", payMonth=" + payMonth + ", discountNo=" + discountNo + ", payment="
				+ payment + ", payDate=" + payDate + ", payStatus=" + payStatus + "]";
	}

}
