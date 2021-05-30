package com.admin.firstedu.attendance.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class ClassInfoClassDTO implements Serializable{

	private static final long serialVersionUID = 1L;
	private int no;
	private java.sql.Date beginDate;
	private java.sql.Date endDate;
	private StudentDTO studentNo;
	private ClassDTO subjectCode;
	
	
	public ClassInfoClassDTO() {
	}


	public ClassInfoClassDTO(int no, Date beginDate, Date endDate, StudentDTO studentNo, ClassDTO subjectCode) {
		super();
		this.no = no;
		this.beginDate = beginDate;
		this.endDate = endDate;
		this.studentNo = studentNo;
		this.subjectCode = subjectCode;
	}


	public int getNo() {
		return no;
	}



	public void setNo(int no) {
		this.no = no;
	}



	public java.sql.Date getBeginDate() {
		return beginDate;
	}



	public void setBeginDate(java.sql.Date beginDate) {
		this.beginDate = beginDate;
	}



	public java.sql.Date getEndDate() {
		return endDate;
	}



	public void setEndDate(java.sql.Date endDate) {
		this.endDate = endDate;
	}



	public StudentDTO getStudentNo() {
		return studentNo;
	}



	public void setStudentNo(StudentDTO studentNo) {
		this.studentNo = studentNo;
	}



	public ClassDTO getSubjectCode() {
		return subjectCode;
	}



	public void setSubjectCode(ClassDTO subjectCode) {
		this.subjectCode = subjectCode;
	}



	@Override
	public String toString() {
		return "ClassInfoClassDTO [no=" + no + ", beginDate=" + beginDate + ", endDate=" + endDate + ", studentNo="
				+ studentNo + ", subjectCode=" + subjectCode + "]";
	}
	
	
}
