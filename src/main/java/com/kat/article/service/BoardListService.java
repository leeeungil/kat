package com.kat.article.service;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import com.kat.article.dao.BoardDao;
import com.kat.article.model.Board;
import com.kat.article.model.BoardInfoListView;


public class BoardListService {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	private BoardDao dao;
	private static final int MESSAGE_COUNT_PER_PAGE = 5;
	
	public BoardInfoListView getboardList(String user_id, int pageNumber) {
		
		dao = sqlSessionTemplate.getMapper(BoardDao.class);
		
		BoardInfoListView view = new BoardInfoListView();
		List<Board> boardList = null;
		int PageNumber;
		int firstRow = 0;
		
		int TotalCount = dao.boardselectCount_id(user_id);
		
		firstRow = (pageNumber - 1) * MESSAGE_COUNT_PER_PAGE;
		
		boardList = dao.boardList(user_id, firstRow, MESSAGE_COUNT_PER_PAGE);
		
		for (Board board : boardList) {
			System.out.println(board);
		}
		
		PageNumber = TotalCount / MESSAGE_COUNT_PER_PAGE;
		
		if(TotalCount % MESSAGE_COUNT_PER_PAGE != 0) {
			PageNumber += 1;
		}
		
		view.setBoardList(boardList);
		view.setPageTotalCount(TotalCount);
		view.setPageNumber(PageNumber);
		
		return view;
	}

	//내용가져오기
	public Board getinfo(int no) {
		
		dao = sqlSessionTemplate.getMapper(BoardDao.class);
		
		Board info = dao.info(no);
					
		return info;
	}

	//수정할 데이터 가져오기
	public Board getinfoUpdate(int no) {
		
		dao = sqlSessionTemplate.getMapper(BoardDao.class);
		Board info = dao.getinfo(no);
		return info;
	}

	//삭제하기
	public void delete(Board board) {
		dao = sqlSessionTemplate.getMapper(BoardDao.class);
		dao.boarddelete(board);
	}


	

}
