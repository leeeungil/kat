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
System.out.println("[AskToListService getAskToList] ASK_TO_LIST ACCESS");		
		dao = sqlSessionTemplate.getMapper(Ask_toDao.class);
		
		Ask_toInfoListView ask_toInfoListView = new Ask_toInfoListView();
		List<Ask_to> asktoList = null;
		int PageNumber;
		int firstRow = 0;
		
		int TotalCount = dao.ask_toSelectCount_id(user_id);
		firstRow = (pageNumber - 1) * MESSAGE_COUNT_PER_PAGE;
System.out.println("[AskToListService getAskToList()] user_id :" + user_id);		
System.out.println("[AskToListService getAskToList()] TotalCount :" + TotalCount);		
		
        asktoList = dao.ask_toList(user_id, firstRow, MESSAGE_COUNT_PER_PAGE);
System.out.println("[AskToListService getAskToList()] asktoList :" + asktoList);

        PageNumber = TotalCount / MESSAGE_COUNT_PER_PAGE;
System.out.println("[AskToListService getAskToList()] PageNumber :" + PageNumber);        
        if(TotalCount % MESSAGE_COUNT_PER_PAGE != 0) {
        	PageNumber += 1;
        }
System.out.println("[AskToListService getAskToList()] ask_toInfoListView : " + ask_toInfoListView.toString());        
        ask_toInfoListView.setAsktoList(asktoList);
        ask_toInfoListView.setPageTotalCount(TotalCount);
        ask_toInfoListView.setPageNumber(PageNumber);
System.out.println("=============================================================");
        return ask_toInfoListView;
	}

}
