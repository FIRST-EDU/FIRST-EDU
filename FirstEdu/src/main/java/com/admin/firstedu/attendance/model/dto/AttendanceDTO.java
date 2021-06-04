package com.admin.firstedu.attendance.model.dto;

import java.io.Serializable;

import java.sql.Date;


public class AttendanceDTO implements Serializable{
	private static final long serialVersionUID = 28734198473912847L;
	
	private int no;
	private Date attendanceTime;
	private Date checkOutTime;
	private Date monthTime;
	private int studentNo;
	private int teacherNo;
	private int categoryNo;
	private String memo;
	private String classCode;
	private int classNo;
	
	
	public AttendanceDTO() {
	}


	public AttendanceDTO(int no, Date attendanceTime, Date checkOutTime, Date monthTime, int studentNo, int teacherNo,
			int categoryNo, String memo, String classCode, int classNo) {
		super();
		this.no = no;
		this.attendanceTime = attendanceTime;
		this.checkOutTime = checkOutTime;
		this.monthTime = monthTime;
		this.studentNo = studentNo;
		this.teacherNo = teacherNo;
		this.categoryNo = categoryNo;
		this.memo = memo;
		this.classCode = classCode;
		this.classNo = classNo;
	}


	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
	}


	public java.sql.Date getAttendanceTime() {
		return attendanceTime;
	}


	public void setAttendanceTime(java.sql.Date attendanceTime) {
		this.attendanceTime = attendanceTime;
	}


	public java.sql.Date getCheckOutTime() {
		return checkOutTime;
	}


	public void setCheckOutTime(java.sql.Date checkOutTime) {
		this.checkOutTime = checkOutTime;
	}


	public java.sql.Date getMonthTime() {
		return monthTime;
	}


	public void setMonthTime(java.sql.Date monthTime) {
		this.monthTime = monthTime;
	}


	public int getStudentNo() {
		return studentNo;
	}


	public void setStudentNo(int studentNo) {
		this.studentNo = studentNo;
	}


	public int getTeacherNo() {
		return teacherNo;
	}


	public void setTeacherNo(int teacherNo) {
		this.teacherNo = teacherNo;
	}


	public int getCategoryNo() {
		return categoryNo;
	}


	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}


	public String getMemo() {
		return memo;
	}


	public void setMemo(String memo) {
		this.memo = memo;
	}


	public String getClassCode() {
		return classCode;
	}


	public void setClassCode(String classCode) {
		this.classCode = classCode;
	}


	public int getClassNo() {
		return classNo;
	}


	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "AttendanceDTO [no=" + no + ", attendanceTime=" + attendanceTime + ", checkOutTime=" + checkOutTime
				+ ", monthTime=" + monthTime + ", studentNo=" + studentNo + ", teacherNo=" + teacherNo + ", categoryNo="
				+ categoryNo + ", memo=" + memo + ", classCode=" + classCode + ", classNo=" + classNo + "]";
	}


	

}
