package com.kat.review.model;

import java.util.List;

public class ReviewInfoListView {
	
	private List<Review> reviewList;
	private List<Review> mainreviewList;
	private int pageTotalCount;
	private int PageNumber;
	private String CompanyId;
	public ReviewInfoListView() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReviewInfoListView(List<Review> reviewList, List<Review> mainreviewList, int pageTotalCount, int pageNumber,
			String companyId) {
		super();
		this.reviewList = reviewList;
		this.mainreviewList = mainreviewList;
		this.pageTotalCount = pageTotalCount;
		PageNumber = pageNumber;
		CompanyId = companyId;
	}
	public List<Review> getReviewList() {
		return reviewList;
	}
	public void setReviewList(List<Review> reviewList) {
		this.reviewList = reviewList;
	}
	public List<Review> getMainreviewList() {
		return mainreviewList;
	}
	public void setMainreviewList(List<Review> mainreviewList) {
		this.mainreviewList = mainreviewList;
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
	public String getCompanyId() {
		return CompanyId;
	}
	public void setCompanyId(String companyId) {
		CompanyId = companyId;
	}
	@Override
	public String toString() {
		return "ReviewInfoListView [reviewList=" + reviewList + ", mainreviewList=" + mainreviewList
				+ ", pageTotalCount=" + pageTotalCount + ", PageNumber=" + PageNumber + ", CompanyId=" + CompanyId
				+ "]";
	}

	
	
}