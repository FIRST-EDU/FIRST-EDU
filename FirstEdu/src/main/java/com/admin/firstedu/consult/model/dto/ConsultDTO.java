package com.admin.firstedu.consult.model.dto;

import java.sql.Date;

public class ConsultDTO {

	private int consultNo;
	private Date consultDate;
	private String consultContent;
	private int teacherNo;
	private int studentNo;
	private int categoryNo;
	private String consultYn;

	public ConsultDTO() {
		super();
	}

	public ConsultDTO(int consultNo, Date consultDate, String consultContent, int teacherNo, int studentNo,
			int categoryNo, String consultYn) {
		super();
		this.consultNo = consultNo;
		this.consultDate = consultDate;
		this.consultContent = consultContent;
		this.teacherNo = teacherNo;
		this.studentNo = studentNo;
		this.categoryNo = categoryNo;
		this.consultYn = consultYn;
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

	public int getTeacherNo() {
		return teacherNo;
	}

	public void setTeacherNo(int teacherNo) {
		this.teacherNo = teacherNo;
	}

	public int getStudentNo() {
		return studentNo;
	}

	public void setStudentNo(int studentNo) {
		this.studentNo = studentNo;
	}

	public int getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}

	public String getConsultYn() {
		return consultYn;
	}

	public void setConsultYn(String consultYn) {
		this.consultYn = consultYn;
	}

	@Override
	public String toString() {
		return "ConsultDTO [consultNo=" + consultNo + ", consultDate=" + consultDate + ", consultContent="
				+ consultContent + ", teacherNo=" + teacherNo + ", studentNo=" + studentNo + ", categoryNo="
				+ categoryNo + ", consultYn=" + consultYn + "]";
	}

}
