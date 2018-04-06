package com.kat.article.model;

import java.util.List;

public class CommentInfoListView {
	
	private List<Comment> commentList;
	private int pageTotalCount;
	private int PageNumber;
	public List<Comment> getCommentList() {
		return commentList;
	}
	public void setCommentList(List<Comment> commentList) {
		this.commentList = commentList;
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
		return "CommentInfoListView [commentList=" + commentList + ", pageTotalCount=" + pageTotalCount
				+ ", PageNumber=" + PageNumber + "]";
	}
	
	

}
