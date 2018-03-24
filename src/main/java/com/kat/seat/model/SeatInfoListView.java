package com.kat.seat.model;

import java.util.List;

public class SeatInfoListView {

	private List<SeatInfo> SeatInfoList;
	private int pageTotalCount;
	private int PageNumber;

	public List<SeatInfo> getSeatInfoList() {
		return SeatInfoList;
	}

	public void setSeatInfoList(List<SeatInfo> seatInfoList) {
		SeatInfoList = seatInfoList;
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
		return "SeatInfoListView [SeatInfoList=" + SeatInfoList + ", pageTotalCount=" + pageTotalCount + ", PageNumber="
				+ PageNumber + "]";
	}

}
