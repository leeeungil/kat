package com.kat.article.service;

import java.util.Date;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kat.article.dao.Ask_toDao;
import com.kat.article.model.Ask_to;

public class AskToService {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	private Ask_toDao dao;

	//고객문의하기 작성
	public void askWriteInsert(Ask_to ask_to) {
System.out.println("[AskToService askWriteInsert] ACCESS SUCCESS");
System.out.println("[AskToService askWriteInsert] " + ask_to.toString());
		dao = sqlSessionTemplate.getMapper(Ask_toDao.class);
		ask_to.setCreate_date(new Date());
		dao.askInsert(ask_to);
System.out.println("[AskToService askWriteInsert] MAPPER(askInsert) FINISH");		
	}

}
