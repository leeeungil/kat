package com.kat.article.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kat.article.dao.Go_withDao;
import com.kat.article.model.Go_with;
import com.kat.article.model.Go_withInfoListView;

@Service
public class GoWithListService {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private Go_withDao dao;
	private static final int MESSAGE_COUNT_PER_PAGE = 10;
		
	public Go_withInfoListView findGoWithList(String user_id, int pageNumber) {
System.out.println("[GoWithListService findGoWithList()] ACCESS");
System.out.println("[GoWithListService findGoWithList()] user_id : " + user_id);
System.out.println("[GoWithListService findGoWithList()] pageNumber : " + pageNumber);
		dao = sqlSessionTemplate.getMapper(Go_withDao.class);
		
		Go_withInfoListView view = new Go_withInfoListView();
		List<Go_with> goWithList = null;
		
		int PageNumber;
		int firstRow = 0;
		
		int TotalCount = dao.goWithSelectCount();
System.out.println("[GoWithListService findGoWithList()] TotalCount : " + TotalCount);		
		firstRow = (pageNumber -1) * MESSAGE_COUNT_PER_PAGE;
		
		goWithList = dao.goWithList(firstRow,MESSAGE_COUNT_PER_PAGE);
System.out.println("[GoWithListService findGoWithList()] goWithList : " + goWithList);		
		PageNumber = TotalCount / MESSAGE_COUNT_PER_PAGE;
System.out.println("[GoWithListService findGoWithList()] view : " + view.toString());		
		if(TotalCount % MESSAGE_COUNT_PER_PAGE != 0) {
			PageNumber += 1;
		}
		
		view.setGoWithList(goWithList);
		view.setPageTotalCount(TotalCount);
		view.setPageNumber(PageNumber);
System.out.println("[GoWithListService findGoWithList()] FINESH");			
		return view;
	}

	
}
