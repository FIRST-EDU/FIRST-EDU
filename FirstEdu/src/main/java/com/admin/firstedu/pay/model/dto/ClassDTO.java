package com.admin.firstedu.pay.model.dto;

public class ClassDTO {

	private String classCode;
	private int classRoom;
	private String className;
	private String classDay;
	private String classTime;
	private String classBook;
	private int classParticipants;
	private int classPayment;
	private int subjectNo;
	private int teacherNo;

	public ClassDTO() {
		super();
	}

	public ClassDTO(String classCode, int classRoom, String className, String classDay, String classTime,
			String classBook, int classParticipants, int classPayment, int subjectNo, int teacherNo) {
		super();
		this.classCode = classCode;
		this.classRoom = classRoom;
		this.className = className;
		this.classDay = classDay;
		this.classTime = classTime;
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

	public int getClassRoom() {
		return classRoom;
	}

	public void setClassRoom(int classRoom) {
		this.classRoom = classRoom;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getClassDay() {
		return classDay;
	}

	public void setClassDay(String classDay) {
		this.classDay = classDay;
	}

	public String getClassTime() {
		return classTime;
	}

	public void setClassTime(String classTime) {
		this.classTime = classTime;
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

	@Override
	public String toString() {
		return "ClassDTO [classCode=" + classCode + ", classRoom=" + classRoom + ", className=" + className
				+ ", classDay=" + classDay + ", classTime=" + classTime + ", classBook=" + classBook
				+ ", classParticipants=" + classParticipants + ", classPayment=" + classPayment + ", subjectNo="
				+ subjectNo + ", teacherNo=" + teacherNo + "]";
	}

}
