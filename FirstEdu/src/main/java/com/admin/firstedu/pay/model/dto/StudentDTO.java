package com.admin.firstedu.pay.model.dto;

import java.sql.Date;

public class StudentDTO {

	private int no;
	private int grade;
	private String name;
	private String phone;
	private String parentsPhone;
	private String gender;
	private String school;
	private String parentsName;
	private Date registrationDate;
	private String status;

	public StudentDTO() {
		super();
	}

	public StudentDTO(int no, int grade, String name, String phone, String parentsPhone, String gender, String school,
			String parentsName, Date registrationDate, String status) {
		super();
		this.no = no;
		this.grade = grade;
		this.name = name;
		this.phone = phone;
		this.parentsPhone = parentsPhone;
		this.gender = gender;
		this.school = school;
		this.parentsName = parentsName;
		this.registrationDate = registrationDate;
		this.status = status;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
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

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getParentsName() {
		return parentsName;
	}

	public void setParentsName(String parentsName) {
		this.parentsName = parentsName;
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
		return "StudentDTO [no=" + no + ", grade=" + grade + ", name=" + name + ", phone=" + phone + ", parentsPhone="
				+ parentsPhone + ", gender=" + gender + ", school=" + school + ", parentsName=" + parentsName
				+ ", registrationDate=" + registrationDate + ", status=" + status + "]";
	}

}
