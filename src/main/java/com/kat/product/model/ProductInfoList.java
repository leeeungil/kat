package com.kat.product.model;

import java.util.List;

import com.kat.seat.model.MenuInfo;

public class ProductInfoList {

	private List<MenuInfo> MenuInfoList;
	private int pageTotalCount;
	private int PageNumber;

	public List<MenuInfo> getMenuInfoList() {
		return MenuInfoList;
	}

	public void setMenuInfoList(List<MenuInfo> menuInfoList) {
		MenuInfoList = menuInfoList;
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
		return "MenuInfoListView [MenuInfoList=" + MenuInfoList + ", pageTotalCount=" + pageTotalCount + ", PageNumber="
				+ PageNumber + "]";
	}

}
