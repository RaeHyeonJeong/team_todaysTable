package com.todaysTable.vo;

// 매장 검색을 위한 VO
public class SearchCriteriaVO extends CriteriaVO{
	private String searchType = "";
	private String keyword = "";
	
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	@Override
	public String toString() {
		return "SearchCriteriaVO [searchType=" + searchType + ", keyword=" + keyword + "]";
	}

}
