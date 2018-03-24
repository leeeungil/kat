package com.kat.master.service;

import java.util.Date;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;


import com.kat.master.dao.NoticeDao;
import com.kat.master.model.Notice;

public class NoticeService {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private NoticeDao dao; 
	

	public void noticeinsert(Notice notice) {
		
		dao = sqlSessionTemplate.getMapper(NoticeDao.class);
		
		notice.setRegdate(new Date());
		
		dao.noticeinsert(notice);
	}


	public void noticeUpdate(Notice notice) {
		dao = sqlSessionTemplate.getMapper(NoticeDao.class);
		
		dao.noticeUpdate(notice);
		
	}

}
