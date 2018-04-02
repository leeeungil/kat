package com.kat.article.model;

import java.util.List;

public class Go_withInfoListView {

	private List<Go_with> goWithList;
	private int pageTotalCount;
	private int PageNumber;
	public List<Go_with> getGoWithList() {
		return goWithList;
	}
	public void setGoWithList(List<Go_with> goWithList) {
		this.goWithList = goWithList;
	}
	public int getPageTotalCount() {
		return pageTotalCount;
	}
	public void setPageTotalCount(int pageTotalCount) {
		this.pageTotalCount = pageTotalCount;
	}
	public int getPageNumber() {
		return PageNumber;
	}
	public void setPageNumber(int pageNumber) {
		PageNumber = pageNumber;
	}
	@Override
	public String toString() {
		return "Go_withInfoListView [goWithList=" + goWithList + ", pageTotalCount=" + pageTotalCount + ", PageNumber="
				+ PageNumber + "]";
	}
	
	
	
}
