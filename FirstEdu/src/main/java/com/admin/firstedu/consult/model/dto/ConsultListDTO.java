package com.admin.firstedu.consult.model.dto;

import java.sql.Date;

public class ConsultListDTO {

	private int consultNo;
	private Date consultDate;
	private String consultContent;
	private String consultYn;
	private TeacherDTO teacher;
	private StudentDTO student;
	private ConsultCategoryDTO category;

	public ConsultListDTO() {
		super();
	}

	public ConsultListDTO(int consultNo, Date consultDate, String consultContent, String consultYn,
			TeacherDTO teacher, StudentDTO student, ConsultCategoryDTO category) {
		super();
		this.consultNo = consultNo;
		this.consultDate = consultDate;
		this.consultContent = consultContent;
		this.consultYn = consultYn;
		this.teacher = teacher;
		this.student = student;
		this.category = category;
	}

	public int getConsultNo() {
		return consultNo;
	}

	public void setConsultNo(int consultNo) {
		this.consultNo = consultNo;
	}

	public Date getConsultDate() {
		return consultDate;
	}

	public void setConsultDate(Date consultDate) {
		this.consultDate = consultDate;
	}

	public String getConsultContent() {
		return consultContent;
	}

	public void setConsultContent(String consultContent) {
		this.consultContent = consultContent;
	}

	public String getConsultYn() {
		return consultYn;
	}

	public void setConsultYn(String consultYn) {
		this.consultYn = consultYn;
	}

	public TeacherDTO getTeacher() {
		return teacher;
	}

	public void setTeacher(TeacherDTO teacher) {
		this.teacher = teacher;
	}

	public StudentDTO getStudent() {
		return student;
	}

	public void setStudent(StudentDTO student) {
		this.student = student;
	}

	public ConsultCategoryDTO getCategory() {
		return category;
	}

	public void setCategory(ConsultCategoryDTO category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "ConsultListDTO [consultNo=" + consultNo + ", consultDate=" + consultDate + ", consultContent="
				+ consultContent + ", consultYn=" + consultYn + ", teacher=" + teacher + ", student=" + student
				+ ", category=" + category + "]";
	}

}
