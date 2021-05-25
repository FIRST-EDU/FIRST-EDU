package com.admin.firstedu.pay.model.dto;

public class SubjectInfoDTO {

	private int subjectCode;
	private int categoryNo;
	private int grade;
	private int tution;
	private int teacherNo;
	private int lectureStartTimes;

	public SubjectInfoDTO() {
		super();
	}

	public SubjectInfoDTO(int subjectCode, int categoryNo, int grade, int tution, int teacherNo,
			int lectureStartTimes) {
		super();
		this.subjectCode = subjectCode;
		this.categoryNo = categoryNo;
		this.grade = grade;
		this.tution = tution;
		this.teacherNo = teacherNo;
		this.lectureStartTimes = lectureStartTimes;
	}

	public int getSubjectCode() {
		return subjectCode;
	}

	public void setSubjectCode(int subjectCode) {
		this.subjectCode = subjectCode;
	}

	public int getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public int getTution() {
		return tution;
	}

	public void setTution(int tution) {
		this.tution = tution;
	}

	public int getTeacherNo() {
		return teacherNo;
	}

	public void setTeacherNo(int teacherNo) {
		this.teacherNo = teacherNo;
	}

	public int getLectureStartTimes() {
		return lectureStartTimes;
	}

	public void setLectureStartTimes(int lectureStartTimes) {
		this.lectureStartTimes = lectureStartTimes;
	}

	@Override
	public String toString() {
		return "SubjectInfoDTO [subjectCode=" + subjectCode + ", categoryNo=" + categoryNo + ", grade=" + grade
				+ ", tution=" + tution + ", teacherNo=" + teacherNo + ", lectureStartTimes=" + lectureStartTimes + "]";
	}

}
