package com.admin.firstedu.pay.model.dto;

public class StudentAndClassDTO {

	private int no;
	private ClassDTO classDTO;

	public StudentAndClassDTO() {
		super();
	}

	public StudentAndClassDTO(int no, ClassDTO classDTO) {
		super();
		this.no = no;
		this.classDTO = classDTO;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public ClassDTO getClassDTO() {
		return classDTO;
	}

	public void setClassDTO(ClassDTO classDTO) {
		this.classDTO = classDTO;
	}

	@Override
	public String toString() {
		return "StudentAndClassDTO [no=" + no + ", classDTO=" + classDTO + "]";
	}

}
