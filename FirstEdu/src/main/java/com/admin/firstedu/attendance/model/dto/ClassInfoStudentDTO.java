package com.admin.firstedu.attendance.model.dto;

import java.sql.Date;

public class ClassInfoStudentDTO {
	
	private int no;
	private java.sql.Date beginDate;
    private java.sql.Date endDate;
	private StudentDTO studentDTO;
	private ClassDTO classInfo;
	
	
	
	public ClassInfoStudentDTO() {
	}



	public ClassInfoStudentDTO(int no, Date beginDate, Date endDate, StudentDTO studentDTO, ClassDTO classInfo) {
		super();
		this.no = no;
		this.beginDate = beginDate;
		this.endDate = endDate;
		this.studentDTO = studentDTO;
		this.classInfo = classInfo;
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



	public StudentDTO getStudentDTO() {
		return studentDTO;
	}



	public void setStudentDTO(StudentDTO studentDTO) {
		this.studentDTO = studentDTO;
	}



	public ClassDTO getClassInfo() {
		return classInfo;
	}



	public void setClassInfo(ClassDTO classInfo) {
		this.classInfo = classInfo;
	}



	@Override
	public String toString() {
		return "ClassInfoStudentDTO [no=" + no + ", beginDate=" + beginDate + ", endDate=" + endDate + ", studentDTO="
				+ studentDTO + ", classInfo=" + classInfo + "]";
	}


	
}
