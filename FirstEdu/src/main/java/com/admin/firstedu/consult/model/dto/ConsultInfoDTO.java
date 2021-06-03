package com.admin.firstedu.consult.model.dto;

public class ConsultInfoDTO {

	private int no;
	private String name;
	private String school;
	private String phone;
	private String status;
	private GradeDTO grade;
	private ConsultDTO consult;

	public ConsultInfoDTO() {
		super();
	}

	public ConsultInfoDTO(int no, String name, String school, String phone, String status, GradeDTO grade,
			ConsultDTO consult) {
		super();
		this.no = no;
		this.name = name;
		this.school = school;
		this.phone = phone;
		this.status = status;
		this.grade = grade;
		this.consult = consult;
		
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public GradeDTO getGrade() {
		return grade;
	}

	public void setGrade(GradeDTO grade) {
		this.grade = grade;
	}

	public ConsultDTO getConsult() {
		return consult;
	}

	public void setConsult(ConsultDTO consult) {
		this.consult = consult;
	}

	@Override
	public String toString() {
		return "ConsultInfoDTO [no=" + no + ", name=" + name + ", school=" + school + ", phone=" + phone + ", status="
				+ status + ", grade=" + grade + ", consult=" + consult + "]";
	}

	

	

}
