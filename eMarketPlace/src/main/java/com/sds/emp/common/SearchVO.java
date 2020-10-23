package com.sds.emp.common;

import java.io.Serializable;

public class SearchVO implements Serializable {
	private static final long serialVersionUID = 1L;

	private String searchCondition="";	
	private String searchKeyword="";
	private int pageIndex = 1;
	private String searchUseYn;
	private String searchTranStatusCode;
	private String searchSellerId;
	private String searchAsYn;
	private String searchBuyerId;
	
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	public int getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	public String getSearchUseYn() {
		return searchUseYn;
	}
	public void setSearchUseYn(String searchUseYn) {
		this.searchUseYn = searchUseYn;
	}
	public String getSearchTranStatusCode() {
		return searchTranStatusCode;
	}
	public void setSearchTranStatusCode(String searchTranStatusCode) {
		this.searchTranStatusCode = searchTranStatusCode;
	}
	public String getSearchSellerId() {
		return searchSellerId;
	}
	public void setSearchSellerId(String searchSellerId) {
		this.searchSellerId = searchSellerId;
	}
	public String getSearchAsYn() {
		return searchAsYn;
	}
	public void setSearchAsYn(String searchAsYn) {
		this.searchAsYn = searchAsYn;
	}
	public String getSearchBuyerId() {
		return searchBuyerId;
	}
	public void setSearchBuyerId(String searchBuyerId) {
		this.searchBuyerId = searchBuyerId;
	}
	
	@Override
	public String toString() {
		return "SearchVO [pageIndex=" + pageIndex + ", searchAsYn="
				+ searchAsYn + ", searchBuyerId=" + searchBuyerId
				+ ", searchCondition=" + searchCondition + ", searchKeyword="
				+ searchKeyword + ", searchSellerId=" + searchSellerId
				+ ", searchTranStatusCode=" + searchTranStatusCode
				+ ", searchUseYn=" + searchUseYn + "]";
	}	
}
