package com.admin.firstedu.sms.model.dto;

import java.sql.Date;

import com.admin.firstedu.pay.model.dto.StudentDTO;

public class SmsAndStudentDTO {

	private int smsNo;
	private String smsContent;
	private java.sql.Date sendTime;
	private StudentDTO student;

	public SmsAndStudentDTO() {
		super();
	}

	public SmsAndStudentDTO(int smsNo, String smsContent, Date sendTime, StudentDTO student) {
		super();
		this.smsNo = smsNo;
		this.smsContent = smsContent;
		this.sendTime = sendTime;
		this.student = student;
	}

	public int getSmsNo() {
		return smsNo;
	}

	public void setSmsNo(int smsNo) {
		this.smsNo = smsNo;
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

	public StudentDTO getStudent() {
		return student;
	}

	public void setStudent(StudentDTO student) {
		this.student = student;
	}

	@Override
	public String toString() {
		return "SmsAndStudentDTO [smsNo=" + smsNo + ", smsContent=" + smsContent + ", sendTime=" + sendTime
				+ ", student=" + student + "]";
	}

}
