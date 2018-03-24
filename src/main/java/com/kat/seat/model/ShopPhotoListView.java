package com.kat.seat.model;

import java.util.List;

public class ShopPhotoListView {

	private List<ShopPhoto> photoInfoList;
	private int pageTotalCount;
	private int PageNumber;
	private String user_id;

	public List<ShopPhoto> getPhotoInfoList() {
		return photoInfoList;
	}

	public void setPhotoInfoList(List<ShopPhoto> photoInfoList) {
		this.photoInfoList = photoInfoList;
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

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "ShopPhotoListView [photoInfoList=" + photoInfoList + ", pageTotalCount=" + pageTotalCount
				+ ", PageNumber=" + PageNumber + ", user_id=" + user_id + "]";
	}

}
