package com.admin.firstedu.pay.model.dto;

public class StudentAndClassDTO {

	private StudentDTO student;
	private ClassDTO classDTO;

	public StudentAndClassDTO() {
		super();
	}

	public StudentAndClassDTO(StudentDTO student, ClassDTO classDTO) {
		super();
		this.student = student;
		this.classDTO = classDTO;
	}

	public StudentDTO getStudent() {
		return student;
	}

	public void setStudent(StudentDTO student) {
		this.student = student;
	}

	public ClassDTO getClassDTO() {
		return classDTO;
	}

	public void setClassDTO(ClassDTO classDTO) {
		this.classDTO = classDTO;
	}

	@Override
	public String toString() {
		return "StudentAndClassDTO [student=" + student + ", classDTO=" + classDTO + "]";
	}

}
