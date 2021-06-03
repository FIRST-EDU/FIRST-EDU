package com.admin.firstedu.consult.model.dto;

public class GradeDTO {

	private String gradeCode;
	private String gradeName;

	public GradeDTO() {
		super();
	}

	public GradeDTO(String gradeCode, String gradeName) {
		super();
		this.gradeCode = gradeCode;
		this.gradeName = gradeName;
	}

	public String getGradeCode() {
		return gradeCode;
	}

	public void setGradeCode(String gradeCode) {
		this.gradeCode = gradeCode;
	}

	public String getGradeName() {
		return gradeName;
	}

	public void setGradeName(String gradeName) {
		this.gradeName = gradeName;
	}

	@Override
	public String toString() {
		return "GradeDTO [gradeCode=" + gradeCode + ", gradeName=" + gradeName + "]";
	}

}
