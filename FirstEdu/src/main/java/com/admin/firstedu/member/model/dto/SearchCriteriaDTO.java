package com.admin.firstedu.member.model.dto;

import java.io.Serializable;

public class SearchCriteriaDTO implements Serializable{

	private static final long serialVersionUID = -7143943739636681172L;
	private String searchCondition;
	private String searchValue;
	
	public SearchCriteriaDTO() {
	}

	public SearchCriteriaDTO(String searchCondition, String searchValue) {
		super();
		this.searchCondition = searchCondition;
		this.searchValue = searchValue;
	}

	public String getSearchCondition() {
		return searchCondition;
	}

	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}

	public String getSearchValue() {
		return searchValue;
	}

	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "SearchCriteriaDTO [searchCondition=" + searchCondition + ", searchValue=" + searchValue + "]";
	}

	

}
