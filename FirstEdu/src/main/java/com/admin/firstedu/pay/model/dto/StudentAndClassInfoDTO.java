package com.admin.firstedu.pay.model.dto;

public class StudentAndClassInfoDTO {

	private int no;
	private String studentName;
	private String studentPhone;
	private String parentsPhone;
	private String status;
	private String school;
	private ClassInfoDTO classInfo;
	private ClassDTO classDTO;
	private GradeDTO grade;

	public StudentAndClassInfoDTO() {
		super();
	}

	public StudentAndClassInfoDTO(int no, String studentName, String studentPhone, String parentsPhone, String status,
			String school, ClassInfoDTO classInfo, ClassDTO classDTO, GradeDTO grade) {
		super();
		this.no = no;
		this.studentName = studentName;
		this.studentPhone = studentPhone;
		this.parentsPhone = parentsPhone;
		this.status = status;
		this.school = school;
		this.classInfo = classInfo;
		this.classDTO = classDTO;
		this.grade = grade;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
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

	public String getParentsPhone() {
		return parentsPhone;
	}

	public void setParentsPhone(String parentsPhone) {
		this.parentsPhone = parentsPhone;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
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

	public GradeDTO getGrade() {
		return grade;
	}

	public void setGrade(GradeDTO grade) {
		this.grade = grade;
	}

	@Override
	public String toString() {
		return "StudentAndClassInfoDTO [no=" + no + ", studentName=" + studentName + ", studentPhone=" + studentPhone
				+ ", parentsPhone=" + parentsPhone + ", status=" + status + ", school=" + school + ", classInfo="
				+ classInfo + ", classDTO=" + classDTO + ", grade=" + grade + "]";
	}

}
