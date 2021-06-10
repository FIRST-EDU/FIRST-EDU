package com.admin.firstedu.classInfo.model.dto;

import java.io.Serializable;

public class SubjectCategoryDTO implements Serializable{
	

	private static final long serialVersionUID = -176055267491432010L;
	private int subjectNo;
	private String subjectName;
	private String subjectStatus;
	
	public SubjectCategoryDTO() {
	}

	public SubjectCategoryDTO(int subjectNo, String subjectName, String subjectStatus) {
		super();
		this.subjectNo = subjectNo;
		this.subjectName = subjectName;
		this.subjectStatus = subjectStatus;
	}

	public int getSubjectNo() {
		return subjectNo;
	}

	public void setSubjectNo(int subjectNo) {
		this.subjectNo = subjectNo;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public String getSubjectStatus() {
		return subjectStatus;
	}

	public void setSubjectStatus(String subjectStatus) {
		this.subjectStatus = subjectStatus;
	}

	@Override
	public String toString() {
		return "SubjectCategoryDTO [subjectNo=" + subjectNo + ", subjectName=" + subjectName + ", subjectStatus="
				+ subjectStatus + "]";
	}
	

}
