package com.admin.firstedu.pay.model.dto;

public class SubjectCategoryDTO {

	private int categoryNo;
	private String subjectName;

	public SubjectCategoryDTO() {
		super();
	}

	public SubjectCategoryDTO(int categoryNo, String subjectName) {
		super();
		this.categoryNo = categoryNo;
		this.subjectName = subjectName;
	}

	public int getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	@Override
	public String toString() {
		return "SubjectCategoryDTO [categoryNo=" + categoryNo + ", subjectName=" + subjectName + "]";
	}

}
