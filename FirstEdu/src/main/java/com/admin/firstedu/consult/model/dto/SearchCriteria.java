package com.admin.firstedu.consult.model.dto;

public class SearchCriteria {

	private String searchOption;
	private String searchValue;

	public SearchCriteria() {
		super();
	}

	public SearchCriteria(String searchOption, String searchValue) {
		super();
		this.searchOption = searchOption;
		this.searchValue = searchValue;
	}

	public String getSearchOption() {
		return searchOption;
	}

	public void setSearchOption(String searchOption) {
		this.searchOption = searchOption;
	}

	public String getSearchValue() {
		return searchValue;
	}

	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}

	@Override
	public String toString() {
		return "SearchCriteria [searchOption=" + searchOption + ", searchValue=" + searchValue + "]";
	}

}
