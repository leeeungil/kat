package com.kat.seat.model;

import java.util.List;

public class BreakdownListView {

	private List<Breakdown> shopInfoList;
	private int pageTotalCount;
	private int PageNumber;

	public List<Breakdown> getShopInfoList() {
		return shopInfoList;
	}

	public void setShopInfoList(List<Breakdown> shopInfoList) {
		this.shopInfoList = shopInfoList;
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
		return "BreakdownListView [shopInfoList=" + shopInfoList + ", pageTotalCount=" + pageTotalCount
				+ ", PageNumber=" + PageNumber + "]";
	}

}
