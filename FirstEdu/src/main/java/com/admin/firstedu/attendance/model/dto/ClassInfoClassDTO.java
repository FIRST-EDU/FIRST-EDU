package com.admin.firstedu.attendance.model.dto;

import java.sql.Date;

public class ClassInfoClassDTO {
	
	private int no;
	private Date beginDate;
	private Date endDate;
	private Date status;
	private StudentDTO student;
	private ClassDTO classDTO;

	
	public ClassInfoClassDTO() {
	}


	public ClassInfoClassDTO(int no, Date beginDate, Date endDate, Date status, StudentDTO student, ClassDTO classDTO) {
		super();
		this.no = no;
		this.beginDate = beginDate;
		this.endDate = endDate;
		this.status = status;
		this.student = student;
		this.classDTO = classDTO;
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


	public StudentDTO getStudent() {
		return student;
	}


	public void setStudent(StudentDTO student) {
		this.student = student;
	}


	public ClassDTO getClassDTO() {
		return classDTO;
	}


	public void setClassDTO(ClassDTO classDTO) {
		this.classDTO = classDTO;
	}


	@Override
	public String toString() {
		return "ClassInfoClassDTO [no=" + no + ", beginDate=" + beginDate + ", endDate=" + endDate + ", status="
				+ status + ", student=" + student + ", classDTO=" + classDTO + "]";
	}


	
}
