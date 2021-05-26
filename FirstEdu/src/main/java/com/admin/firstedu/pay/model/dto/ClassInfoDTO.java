package com.admin.firstedu.pay.model.dto;

import java.sql.Date;

public class ClassInfoDTO {

	private int no;
	private Date beginDate;
	private Date endDate;
	private int studentNo;
	private String classCode;

	public ClassInfoDTO() {
		super();
	}

	public ClassInfoDTO(int no, Date beginDate, Date endDate, int studentNo, String classCode) {
		super();
		this.no = no;
		this.beginDate = beginDate;
		this.endDate = endDate;
		this.studentNo = studentNo;
		this.classCode = classCode;
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

	public int getStudentNo() {
		return studentNo;
	}

	public void setStudentNo(int studentNo) {
		this.studentNo = studentNo;
	}

	public String getClassCode() {
		return classCode;
	}

	public void setClassCode(String classCode) {
		this.classCode = classCode;
	}

	@Override
	public String toString() {
		return "ClassInfoDTO [no=" + no + ", beginDate=" + beginDate + ", endDate=" + endDate + ", studentNo="
				+ studentNo + ", classCode=" + classCode + "]";
	}

}
