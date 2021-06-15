package com.admin.firstedu.pay.model.dto;

import java.io.Serializable;

public class DiscountDTO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4632471764528288536L;
	private int discountNo;
	private int discountRate;
	private String discountReason;

	public DiscountDTO() {
		super();
	}

	public DiscountDTO(int discountNo, int discountRate, String discountReason) {
		super();
		this.discountNo = discountNo;
		this.discountRate = discountRate;
		this.discountReason = discountReason;
	}

	public int getDiscountNo() {
		return discountNo;
	}

	public void setDiscountNo(int discountNo) {
		this.discountNo = discountNo;
	}

	public int getDiscountRate() {
		return discountRate;
	}

	public void setDiscountRate(int discountRate) {
		this.discountRate = discountRate;
	}

	public String getDiscountReason() {
		return discountReason;
	}

	public void setDiscountReason(String discountReason) {
		this.discountReason = discountReason;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "DiscountDTO [discountNo=" + discountNo + ", discountRate=" + discountRate + ", discountReason="
				+ discountReason + "]";
	}

}
