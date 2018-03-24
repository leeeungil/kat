package com.kat.seat.model;

import java.util.List;

public class InfoShopSearchListView {

	private List<InfoShopSearch> shopInfoList;
	private int pageTotalCount;
	private int PageNumber;
	private int resultCode;

	public List<InfoShopSearch> getShopInfoList() {
		return shopInfoList;
	}

	public void setShopInfoList(List<InfoShopSearch> shopInfoList) {
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

	public int getResultCode() {
		return resultCode;
	}

	public void setResultCode(int resultCode) {
		this.resultCode = resultCode;
	}

	@Override
	public String toString() {
		return "InfoShopSearchListView [shopInfoList=" + shopInfoList + ", pageTotalCount=" + pageTotalCount
				+ ", PageNumber=" + PageNumber + ", resultCode=" + resultCode + "]";
	}

}
