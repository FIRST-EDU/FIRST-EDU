package com.admin.firstedu.attendance.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class ClassInfoDTO implements Serializable{

	private static final long serialVersionUID = 1L;
	private int no;
	private Date beginDate;
	private Date endDate;
	private Date status;
	private int studentNo;
	private String subjectCode;

	public ClassInfoDTO() {
		super();
	}

	
	
	public ClassInfoDTO(int no, Date beginDate, Date endDate, Date status, int studentNo, String subjectCode) {
		super();
		this.no = no;
		this.beginDate = beginDate;
		this.endDate = endDate;
		this.status = status;
		this.studentNo = studentNo;
		this.subjectCode = subjectCode;
	}



	public int getNo() {
		return no;
	}



	public void setNo(int no) {
		this.no = no;
	}



	public Date getBeginDate() {
		return beginDate;
	}



	public void setBeginDate(Date beginDate) {
		this.beginDate = beginDate;
	}



	public Date getEndDate() {
		return endDate;
	}



	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}



	public Date getStatus() {
		return status;
	}



	public void setStatus(Date status) {
		this.status = status;
	}



	public int getStudentNo() {
		return studentNo;
	}



	public void setStudentNo(int studentNo) {
		this.studentNo = studentNo;
	}



	public String getSubjectCode() {
		return subjectCode;
	}



	public void setSubjectCode(String subjectCode) {
		this.subjectCode = subjectCode;
	}



	public static long getSerialversionuid() {
		return serialVersionUID;
	}



	@Override
	public String toString() {
		return "ClassInfoDTO [no=" + no + ", beginDate=" + beginDate + ", endDate=" + endDate + ", status=" + status
				+ ", studentNo=" + studentNo + ", subjectCode=" + subjectCode + "]";
	}


	
}
