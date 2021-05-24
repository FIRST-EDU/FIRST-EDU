package com.admin.firstedu.pay.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class PayDTO implements Serializable {

	private static final long serialVersionUID = -8375624742277704267L;
	private int payNo;
	private String payYn;
	private String payOption;
	private int payMonth;
	private int payment;
	private Date payDate;

	public PayDTO() {
		super();
	}

	public PayDTO(int payNo, String payYn, String payOption, int payMonth, int payment, Date payDate) {
		super();
		this.payNo = payNo;
		this.payYn = payYn;
		this.payOption = payOption;
		this.payMonth = payMonth;
		this.payment = payment;
		this.payDate = payDate;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "PayDTO [payNo=" + payNo + ", payYn=" + payYn + ", payOption=" + payOption + ", payMonth=" + payMonth
				+ ", payment=" + payment + ", payDate=" + payDate + "]";
	}

}
