package com.admin.firstedu.attendance.model.dto;

import java.sql.Date;

public class AttendanceInfoDTO {
	
	private int no;
	private java.sql.Date attendanceTime;
	private java.sql.Date checkOutTime;
	private java.sql.Date monthTime;
	private StudentDTO student;
	private TeacherDTO teacher;
	private AttendanceCategoryDTO category;
	private String memo;
	
	
	public AttendanceInfoDTO() {
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





	public StudentDTO getStudentNo() {
		return studentNo;
	}





	public void setStudentNo(StudentDTO studentNo) {
		this.studentNo = studentNo;
	}





	public TeacherDTO getTeacherNo() {
		return teacherNo;
	}





	public void setTeacherNo(TeacherDTO teacherNo) {
		this.teacherNo = teacherNo;
	}





	public AttendanceCategoryDTO getCategoryNo() {
		return categoryNo;
	}





	public void setCategoryNo(AttendanceCategoryDTO categoryNo) {
		this.categoryNo = categoryNo;
	}





	public String getMemo() {
		return memo;
	}





	public void setMemo(String memo) {
		this.memo = memo;
	}




	public AttendanceAndCategoryDTO(int no, Date attendanceTime, Date checkOutTime, Date monthTime,
			StudentDTO studentNo, TeacherDTO teacherNo, AttendanceCategoryDTO categoryNo, String memo) {
		super();
		this.no = no;
		this.attendanceTime = attendanceTime;
		this.checkOutTime = checkOutTime;
		this.monthTime = monthTime;
		this.studentNo = studentNo;
		this.teacherNo = teacherNo;
		this.categoryNo = categoryNo;
		this.memo = memo;
	}



	@Override
	public String toString() {
		return "AttendanceAndCategoryDTO [no=" + no + ", attendanceTime=" + attendanceTime + ", checkOutTime="
				+ checkOutTime + ", monthTime=" + monthTime + ", studentNo=" + studentNo + ", teacherNo=" + teacherNo
				+ ", categoryNo=" + categoryNo + ", memo=" + memo + "]";
	}
	
	
}
