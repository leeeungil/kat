package com.kat.seat.model;

import java.util.List;

public class UserBreakdownListView {

	private List<UserBreakdown> shopInfoList;
	private int pageTotalCount;
	private int PageNumber;

	public List<UserBreakdown> getShopInfoList() {
		return shopInfoList;
	}

	public void setShopInfoList(List<UserBreakdown> shopInfoList) {
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
		return "UserBreakdownListView [shopInfoList=" + shopInfoList + ", pageTotalCount=" + pageTotalCount
				+ ", PageNumber=" + PageNumber + "]";
	}

}
