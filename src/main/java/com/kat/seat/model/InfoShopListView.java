package com.kat.seat.model;

import java.util.List;

public class InfoShopListView {

	private List<InfoShop> shopInfoList;
	private int pageTotalCount;
	private int PageNumber;

	public List<InfoShop> getShopInfoList() {
		return shopInfoList;
	}

	public void setShopInfoList(List<InfoShop> shopInfoList) {
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
		return "InfoShopListView [shopInfoList=" + shopInfoList + ", pageTotalCount=" + pageTotalCount + ", PageNumber="
				+ PageNumber + "]";
	}

}
