package com.kat.article.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kat.article.dao.MarketDao;
import com.kat.article.model.Market;

public class MarketService {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTmeplate;
	private MarketDao dao;

	public void marketInsert(Market market) {
System.out.println("[MarketService marketInsert] ACCESS SUCCESS");		
		dao = sqlSessionTmeplate.getMapper(MarketDao.class);
System.out.println("[MarketService marketInsert] market :" + market);		
		dao.marketInsert(market);
	}
	
	

}
