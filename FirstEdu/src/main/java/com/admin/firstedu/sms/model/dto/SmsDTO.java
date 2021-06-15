package com.admin.firstedu.sms.model.dto;

import java.sql.Date;

public class SmsDTO {

	private int smsNo;
	private String parentsPhone;
	private String smsContent;
	private java.sql.Date sendTime;
	private int studentNo;
	private String smsStatus;

	public SmsDTO() {
		super();
	}

	public SmsDTO(int smsNo, String parentsPhone, String smsContent, Date sendTime, int studentNo, String smsStatus) {
		super();
		this.smsNo = smsNo;
		this.parentsPhone = parentsPhone;
		this.smsContent = smsContent;
		this.sendTime = sendTime;
		this.studentNo = studentNo;
		this.smsStatus = smsStatus;
	}

	public int getSmsNo() {
		return smsNo;
	}

	public void setSmsNo(int smsNo) {
		this.smsNo = smsNo;
	}

	public String getParentsPhone() {
		return parentsPhone;
	}

	public void setParentsPhone(String parentsPhone) {
		this.parentsPhone = parentsPhone;
	}

	public String getSmsContent() {
		return smsContent;
	}

	public void setSmsContent(String smsContent) {
		this.smsContent = smsContent;
	}

	public java.sql.Date getSendTime() {
		return sendTime;
	}

	public void setSendTime(java.sql.Date sendTime) {
		this.sendTime = sendTime;
	}

	public int getStudentNo() {
		return studentNo;
	}

	public void setStudentNo(int studentNo) {
		this.studentNo = studentNo;
	}

	public String getSmsStatus() {
		return smsStatus;
	}

	public void setSmsStatus(String smsStatus) {
		this.smsStatus = smsStatus;
	}

	@Override
	public String toString() {
		return "SmsDTO [smsNo=" + smsNo + ", parentsPhone=" + parentsPhone + ", smsContent=" + smsContent
				+ ", sendTime=" + sendTime + ", studentNo=" + studentNo + ", smsStatus=" + smsStatus + "]";
	}

}
