package com.kat.article.service;

import java.util.Date;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import com.kat.article.dao.BoardDao;
import com.kat.article.model.Board;


public class BoardService {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private BoardDao dao;
	
	
	public void boardinsert(Board board) {
		
		dao = sqlSessionTemplate.getMapper(BoardDao.class);
		
		board.setRegdate(new Date());
		
		dao.boardinsert(board);
	}


	public void boardUpdate(Board board) {
		
		dao = sqlSessionTemplate.getMapper(BoardDao.class);
		
	    dao.boardupdate(board);
			
	}
	
}
