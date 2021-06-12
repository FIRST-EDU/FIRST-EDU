package com.admin.firstedu.classInfo.model.dto;

import java.io.Serializable;

public class ClassAndInfoDTO implements Serializable {
	

	private static final long serialVersionUID = 1218986303039999565L;
	private int classNum;
	private String code;
	private int room;
	private String className;
	private String day;
	private String startTime;
	private String endTime;
	private String book;
	private int payment;
	private int subjectNo;
	private String gradeCode; 
	private int no;
	private String classStatus;
	private TeacherDTO teacherInfo;
	private GradeDTO grade;
	private SubjectCategoryDTO subjectCategory;
	
	public ClassAndInfoDTO() {
	}

	public ClassAndInfoDTO(int classNum, String code, int room, String className, String day, String startTime,
			String endTime, String book, int payment, int subjectNo, String gradeCode, int no, String classStatus,
			TeacherDTO teacherInfo, GradeDTO grade, SubjectCategoryDTO subjectCategory) {
		super();
		this.classNum = classNum;
		this.code = code;
		this.room = room;
		this.className = className;
		this.day = day;
		this.startTime = startTime;
		this.endTime = endTime;
		this.book = book;
		this.payment = payment;
		this.subjectNo = subjectNo;
		this.gradeCode = gradeCode;
		this.no = no;
		this.classStatus = classStatus;
		this.teacherInfo = teacherInfo;
		this.grade = grade;
		this.subjectCategory = subjectCategory;
	}

	public int getClassNum() {
		return classNum;
	}

	public void setClassNum(int classNum) {
		this.classNum = classNum;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public int getRoom() {
		return room;
	}

	public void setRoom(int room) {
		this.room = room;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getBook() {
		return book;
	}

	public void setBook(String book) {
		this.book = book;
	}

	public int getPayment() {
		return payment;
	}

	public void setPayment(int payment) {
		this.payment = payment;
	}

	public int getSubjectNo() {
		return subjectNo;
	}

	public void setSubjectNo(int subjectNo) {
		this.subjectNo = subjectNo;
	}

	public String getGradeCode() {
		return gradeCode;
	}

	public void setGradeCode(String gradeCode) {
		this.gradeCode = gradeCode;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getClassStatus() {
		return classStatus;
	}

	public void setClassStatus(String classStatus) {
		this.classStatus = classStatus;
	}

	public TeacherDTO getTeacherInfo() {
		return teacherInfo;
	}

	public void setTeacherInfo(TeacherDTO teacherInfo) {
		this.teacherInfo = teacherInfo;
	}

	public GradeDTO getGrade() {
		return grade;
	}

	public void setGrade(GradeDTO grade) {
		this.grade = grade;
	}

	public SubjectCategoryDTO getSubjectCategory() {
		return subjectCategory;
	}

	public void setSubjectCategory(SubjectCategoryDTO subjectCategory) {
		this.subjectCategory = subjectCategory;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "ClassAndInfoDTO [classNum=" + classNum + ", code=" + code + ", room=" + room + ", className="
				+ className + ", day=" + day + ", startTime=" + startTime + ", endTime=" + endTime + ", book=" + book
				+ ", payment=" + payment + ", subjectNo=" + subjectNo + ", gradeCode=" + gradeCode + ", no=" + no
				+ ", classStatus=" + classStatus + ", teacherInfo=" + teacherInfo + ", grade=" + grade
				+ ", subjectCategory=" + subjectCategory + "]";
	}

	
}
