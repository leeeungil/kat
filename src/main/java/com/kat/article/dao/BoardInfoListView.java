package com.kat.article.dao;

import java.util.List;

import com.kat.article.model.Board;



public class BoardInfoListView {
	
	private List<Board> boardList;
	private int pageTotalCount;
	private int PageNumber;

	public List<Board> getBoardList() {
		return boardList;
	}

	public void setBoardList(List<Board> boardList) {
		this.boardList = boardList;
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

}
