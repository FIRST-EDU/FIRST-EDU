package com.admin.firstedu.consult.model.dto;

public class ConsultCategoryDTO {

	private int categoryNo;
	private String consultOption;

	public ConsultCategoryDTO() {
		super();
	}

	public ConsultCategoryDTO(int categoryNo, String consultOption) {
		super();
		this.categoryNo = categoryNo;
		this.consultOption = consultOption;
	}

	public int getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}

	public String getConsultOption() {
		return consultOption;
	}

	public void setConsultOption(String consultOption) {
		this.consultOption = consultOption;
	}

	@Override
	public String toString() {
		return "ConsultCategoryDTO [categoryNo=" + categoryNo + ", consultOption=" + consultOption + "]";
	}

}
