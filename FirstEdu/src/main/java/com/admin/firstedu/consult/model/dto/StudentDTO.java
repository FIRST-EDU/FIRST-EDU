package com.admin.firstedu.consult.model.dto;

import java.sql.Date;

public class StudentDTO {

	private int no;
	private String grade;
	private String studentName;
	private String parentsName;
	private String studentPhone;
	private String parentsPhone;
	private String gender;
	private String birth;
	private String school;
	private String address;
	private Date registrationDate;
	private String status;
	
	public StudentDTO() {
		super();
	}

	public StudentDTO(int no, String grade, String studentName, String parentsName, String studentPhone,
			String parentsPhone, String gender, String birth, String school, String address, Date registrationDate,
			String status) {
		super();
		this.no = no;
		this.grade = grade;
		this.studentName = studentName;
		this.parentsName = parentsName;
		this.studentPhone = studentPhone;
		this.parentsPhone = parentsPhone;
		this.gender = gender;
		this.birth = birth;
		this.school = school;
		this.address = address;
		this.registrationDate = registrationDate;
		this.status = status;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getParentsName() {
		return parentsName;
	}

	public void setParentsName(String parentsName) {
		this.parentsName = parentsName;
	}

	public String getStudentPhone() {
		return studentPhone;
	}

	public void setStudentPhone(String studentPhone) {
		this.studentPhone = studentPhone;
	}

	public String getParentsPhone() {
		return parentsPhone;
	}

	public void setParentsPhone(String parentsPhone) {
		this.parentsPhone = parentsPhone;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getRegistrationDate() {
		return registrationDate;
	}

	public void setRegistrationDate(Date registrationDate) {
		this.registrationDate = registrationDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "StudentDTO [no=" + no + ", grade=" + grade + ", studentName=" + studentName + ", parentsName="
				+ parentsName + ", studentPhone=" + studentPhone + ", parentsPhone=" + parentsPhone + ", gender="
				+ gender + ", birth=" + birth + ", school=" + school + ", address=" + address + ", registrationDate="
				+ registrationDate + ", status=" + status + "]";
	}

	

	
	
	
	
}