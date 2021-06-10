package com.admin.firstedu.member.model.dto;

import java.io.Serializable;
import java.sql.Date;

/*teacher(선생님)1 : N job(직급)*/

public class TeacherAndJobDTO implements Serializable{
	
	private static final long serialVersionUID = 660147674416898167L;
	private int no;
	private String jobCode;
	private String id;
	private String pwd;
	private String name;
	private String email;
	private String gender;
	private String phone;
	private String address;
	private String role;
	private java.sql.Date hireDate;
	private java.sql.Date endDate;
	private JobDTO job;
	private String status;
	
	public TeacherAndJobDTO() {
		
	}

	public TeacherAndJobDTO(int no, String jobCode, String id, String pwd, String name, String email, String gender,
			String phone, String address, String role, Date hireDate, Date endDate, JobDTO job, String status) {
		super();
		this.no = no;
		this.jobCode = jobCode;
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.gender = gender;
		this.phone = phone;
		this.address = address;
		this.role = role;
		this.hireDate = hireDate;
		this.endDate = endDate;
		this.job = job;
		this.status = status;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getJobCode() {
		return jobCode;
	}

	public void setJobCode(String jobCode) {
		this.jobCode = jobCode;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public java.sql.Date getHireDate() {
		return hireDate;
	}

	public void setHireDate(java.sql.Date hireDate) {
		this.hireDate = hireDate;
	}

	public java.sql.Date getEndDate() {
		return endDate;
	}

	public void setEndDate(java.sql.Date endDate) {
		this.endDate = endDate;
	}

	public JobDTO getJob() {
		return job;
	}

	public void setJob(JobDTO job) {
		this.job = job;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "MemberAndJobDTO [no=" + no + ", jobCode=" + jobCode + ", id=" + id + ", pwd=" + pwd + ", name=" + name
				+ ", email=" + email + ", gender=" + gender + ", phone=" + phone + ", address=" + address + ", role="
				+ role + ", hireDate=" + hireDate + ", endDate=" + endDate + ", job=" + job + ", status=" + status
				+ "]";
	}
	

}
