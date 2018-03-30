package com.kat.article.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kat.article.dao.Ask_toDao;
import com.kat.article.model.Ask_to;
import com.kat.article.model.Ask_toInfoListView;

public class AskToListService {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private Ask_toDao dao;
	private static final int MESSAGE_COUNT_PER_PAGE = 5;

	public Ask_toInfoListView getAskToList(String user_id, int pageNumber) {
		
		dao = sqlSessionTemplate.getMapper(Ask_toDao.class);
		
		Ask_toInfoListView view = new Ask_toInfoListView();
		List<Ask_to> ask_toList = null;
		int PageNumber;
		int firstRow = 0;
		
		int TotalCount = dao.ask_toSelectCount_id(user_id);
System.out.println();		
		ask_toList = dao.ask_toList(user_id, firstRow, MESSAGE_COUNT_PER_PAGE);
		return null;
	}

}
