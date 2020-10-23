package com.sds.emp.view.paging;

import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;

public class Page implements Serializable {
	public static final Page EMPTY_PAGE;
	private Collection objects;
	private int currentPage;
	private int totalCount;
	private int pageunit;
	private int pagesize;
	private int maxPage;
	private int beginUnitPage;
	private int endUnitPage;
	private String search;
	private String condition;

	static {
		EMPTY_PAGE = new Page(Collections.EMPTY_LIST, 1, 0, "", "");
	}
	
	public Page(Collection objects, int currentPage, int totalCount) {
		pageunit = 10;
		pagesize = 10;
		search = "";
		condition = "";
		this.objects = objects;
		this.totalCount = totalCount;
		maxPage = pagesize != 0 ? (totalCount - 1) / pagesize + 1
				: this.totalCount;
		this.currentPage = currentPage <= maxPage ? currentPage : maxPage;
		beginUnitPage = ((currentPage - 1) / pageunit) * pageunit + 1;
		endUnitPage = beginUnitPage + (pageunit - 1);
	}

	public Page(Collection objects, int currentPage, int totalCount,
			String condition, String search) {
		this(objects, currentPage, totalCount);
		this.condition = condition;
		this.search = search;
	}

	public Page(Collection objects, int currentPage, int totalCount,
			int pageunit, int pagesize) {
		this.pageunit = 10;
		this.pagesize = 10;
		search = "";
		condition = "";
		this.pageunit = pageunit;
		this.pagesize = pagesize;
		this.objects = objects;
		this.totalCount = totalCount;
		maxPage = pagesize != 0 ? (totalCount - 1) / pagesize + 1
				: this.totalCount;
		this.currentPage = currentPage <= maxPage ? currentPage : maxPage;
		beginUnitPage = ((currentPage - 1) / pageunit) * pageunit + 1;
		endUnitPage = beginUnitPage + (pageunit - 1);
	}

	public Collection getList() {
		return objects;
	}

	public boolean hasNextPage() {
		return currentPage < maxPage;
	}

	public boolean hasPreviousPage() {
		return currentPage > 1;
	}

	public int getNextPage() {
		return currentPage + 1;
	}

	public int getPreviousPage() {
		return currentPage - 1;
	}

	public boolean hasNextPageUnit() {
		return endUnitPage < maxPage;
	}

	public boolean hasPreviousPageUnit() {
		return currentPage >= pageunit + 1;
	}

	public int getStartOfNextPageUnit() {
		return endUnitPage + 1;
	}

	public int getStartOfPreviousPageUnit() {
		return beginUnitPage - 1;
	}

	public int getPageOfNextPageUnit() {
		return currentPage + pageunit >= maxPage ? maxPage : currentPage
				+ pageunit;
	}

	public int getPageOfPreviousPageUnit() {
		return currentPage - pageunit <= 1 ? 1 : currentPage - pageunit;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public int getBeginUnitPage() {
		return beginUnitPage;
	}

	public int getEndListPage() {
		return endUnitPage <= maxPage ? endUnitPage : maxPage;
	}

	public int getSize() {
		return objects.size();
	}

	public boolean isEmptyPage() {
		return getSize() == 0;
	}

	public int getTotal() {
		return totalCount;
	}

	public String getCurrentPageStr() {
		return (new Integer(currentPage)).toString();
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}
}
