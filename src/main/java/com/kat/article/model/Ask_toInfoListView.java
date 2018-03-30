package com.kat.article.model;

import java.util.List;

public class Ask_toInfoListView {
	
	private List<Ask_to> asktoList;
	private int pageTotalCount;
	private int PageNumber;
	public Ask_toInfoListView() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Ask_toInfoListView(List<Ask_to> asktoList, int pageTotalCount, int pageNumber) {
		super();
		this.asktoList = asktoList;
		this.pageTotalCount = pageTotalCount;
		PageNumber = pageNumber;
	}
	public List<Ask_to> getAsktoList() {
		return asktoList;
	}
	public void setAsktoList(List<Ask_to> asktoList) {
		this.asktoList = asktoList;
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
		return "Ask_toInfoListView [asktoList=" + asktoList + ", pageTotalCount=" + pageTotalCount + ", PageNumber="
				+ PageNumber + "]";
	}
	
	

}
