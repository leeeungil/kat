package com.kat.master.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kat.article.dao.BoardDao;
import com.kat.article.model.Board;
import com.kat.article.model.BoardInfoListView;


public class MasterBoardListService {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private BoardDao dao;
	private static final int MESSAGE_COUNT_PER_PAGE = 5;
	
	public BoardInfoListView getmasterboardList(String user_id, int pageNumber) {
		
		dao = sqlSessionTemplate.getMapper(BoardDao.class);
		
		BoardInfoListView view = new BoardInfoListView();
		List<Board> boardList = null;
		int PageNumber;
		int firstRow = 0;
		
		int TotalCount = dao.boardselectCount();
		
		firstRow = (pageNumber - 1) * MESSAGE_COUNT_PER_PAGE;
		
		boardList = dao.mboardList(firstRow, MESSAGE_COUNT_PER_PAGE);
		
		PageNumber = TotalCount / MESSAGE_COUNT_PER_PAGE;
		
		if(TotalCount % MESSAGE_COUNT_PER_PAGE != 0) {
			PageNumber += 1;
		}
		
		view.setBoardList(boardList);
		view.setPageTotalCount(TotalCount);
		view.setPageNumber(PageNumber);
		
		return view;
	}

}
