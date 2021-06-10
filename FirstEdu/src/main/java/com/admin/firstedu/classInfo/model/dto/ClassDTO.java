package com.admin.firstedu.classInfo.model.dto;

import java.io.Serializable;

public class ClassDTO implements Serializable {
	

	private static final long serialVersionUID = -8465538513840392672L;
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
	
	public ClassDTO() {
	}

	public ClassDTO(int classNum, String code, int room, String className, String day, String startTime, String endTime,
			String book, int payment, int subjectNo, String gradeCode, int no) {
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

	public String getclassName() {
		return className;
	}

	public void setclassName(String className) {
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

	@Override
	public String toString() {
		return "ClassDTO [classNum=" + classNum + ", code=" + code + ", room=" + room + ", className=" + className + ", day="
				+ day + ", startTime=" + startTime + ", endTime=" + endTime + ", book=" + book + ", payment=" + payment
				+ ", subjectNo=" + subjectNo + ", gradeCode=" + gradeCode + ", no=" + no + "]";
	}
	

}
