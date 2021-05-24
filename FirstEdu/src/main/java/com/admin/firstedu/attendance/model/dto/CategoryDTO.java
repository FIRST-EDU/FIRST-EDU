package com.admin.firstedu.attendance.model.dto;

import java.io.Serializable;

public class CategoryDTO implements Serializable{

	private static final long serialVersionUID = 367824378342312874L;
	
	private int categoryNo;
	private String attendanceCon;
	
	public CategoryDTO() {
	}

	
	
	public CategoryDTO(int categoryNo, String attendanceCon) {
		this.categoryNo = categoryNo;
		this.attendanceCon = attendanceCon;
	}



	public int getCategoryNo() {
		return categoryNo;
	}



	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}



	public String getAttendanceCon() {
		return attendanceCon;
	}



	public void setAttendanceCon(String attendanceCon) {
		this.attendanceCon = attendanceCon;
	}



	@Override
	public String toString() {
		return "CategoryDTO [categoryNo=" + categoryNo + ", attendanceCon=" + attendanceCon + "]";
	}
	
	
}
