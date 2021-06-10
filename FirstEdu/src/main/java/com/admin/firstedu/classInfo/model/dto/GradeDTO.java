package com.admin.firstedu.classInfo.model.dto;

import java.io.Serializable;

public class GradeDTO implements Serializable{
	
	private static final long serialVersionUID = -6862969231491713277L;
	private String gradeCode;
	private String gradeName;
	
	public GradeDTO() {
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
