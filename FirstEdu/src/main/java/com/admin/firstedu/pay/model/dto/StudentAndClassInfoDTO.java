package com.admin.firstedu.pay.model.dto;

public class StudentAndClassInfoDTO {

	private int no;
	private int grade;
	private String studentName;
	private String studentPhone;
	private String status;
	private ClassInfoDTO classInfo;
	private ClassDTO classDTO;

	public StudentAndClassInfoDTO() {
		super();
	}

	public StudentAndClassInfoDTO(int no, int grade, String studentName, String studentPhone, String status,
			ClassInfoDTO classInfo, ClassDTO classDTO) {
		super();
		this.no = no;
		this.grade = grade;
		this.studentName = studentName;
		this.studentPhone = studentPhone;
		this.status = status;
		this.classInfo = classInfo;
		this.classDTO = classDTO;
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

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getStudentPhone() {
		return studentPhone;
	}

	public void setStudentPhone(String studentPhone) {
		this.studentPhone = studentPhone;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public ClassInfoDTO getClassInfo() {
		return classInfo;
	}

	public void setClassInfo(ClassInfoDTO classInfo) {
		this.classInfo = classInfo;
	}

	public ClassDTO getClassDTO() {
		return classDTO;
	}

	public void setClassDTO(ClassDTO classDTO) {
		this.classDTO = classDTO;
	}

	@Override
	public String toString() {
		return "StudentAndClassInfoDTO [no=" + no + ", grade=" + grade + ", studentName=" + studentName
				+ ", studentPhone=" + studentPhone + ", status=" + status + ", classInfo=" + classInfo + ", classDTO="
				+ classDTO + "]";
	}

}
