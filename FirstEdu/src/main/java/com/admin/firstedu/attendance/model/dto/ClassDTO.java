package com.admin.firstedu.attendance.model.dto;

import java.io.Serializable;

public class ClassDTO implements Serializable {
	

	private static final long serialVersionUID = 1L;
	
	private String classCode;
	private String calssName;
	private String classDay;
	private String calssTime;
	private String classBook;
	private int classParticipants;
	private int classPayment;
	private int subjectNo;
	private int teacherNo;
	
	public ClassDTO() {
	}

	
	
	public ClassDTO(String classCode, String calssName, String classDay, String calssTime, String classBook,
			int classParticipants, int classPayment, int subjectNo, int teacherNo) {
		super();
		this.classCode = classCode;
		this.calssName = calssName;
		this.classDay = classDay;
		this.calssTime = calssTime;
		this.classBook = classBook;
		this.classParticipants = classParticipants;
		this.classPayment = classPayment;
		this.subjectNo = subjectNo;
		this.teacherNo = teacherNo;
	}



	public String getClassCode() {
		return classCode;
	}



	public void setClassCode(String classCode) {
		this.classCode = classCode;
	}



	public String getCalssName() {
		return calssName;
	}



	public void setCalssName(String calssName) {
		this.calssName = calssName;
	}



	public String getClassDay() {
		return classDay;
	}



	public void setClassDay(String classDay) {
		this.classDay = classDay;
	}



	public String getCalssTime() {
		return calssTime;
	}



	public void setCalssTime(String calssTime) {
		this.calssTime = calssTime;
	}



	public String getClassBook() {
		return classBook;
	}



	public void setClassBook(String classBook) {
		this.classBook = classBook;
	}



	public int getClassParticipants() {
		return classParticipants;
	}



	public void setClassParticipants(int classParticipants) {
		this.classParticipants = classParticipants;
	}



	public int getClassPayment() {
		return classPayment;
	}



	public void setClassPayment(int classPayment) {
		this.classPayment = classPayment;
	}



	public int getSubjectNo() {
		return subjectNo;
	}



	public void setSubjectNo(int subjectNo) {
		this.subjectNo = subjectNo;
	}



	public int getTeacherNo() {
		return teacherNo;
	}



	public void setTeacherNo(int teacherNo) {
		this.teacherNo = teacherNo;
	}



	public static long getSerialversionuid() {
		return serialVersionUID;
	}



	@Override
	public String toString() {
		return "ClassDTO [classCode=" + classCode + ", calssName=" + calssName + ", classDay=" + classDay
				+ ", calssTime=" + calssTime + ", classBook=" + classBook + ", classParticipants=" + classParticipants
				+ ", classPayment=" + classPayment + ", subjectNo=" + subjectNo + ", teacherNo=" + teacherNo + "]";
	}

	

}