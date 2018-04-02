package com.kat.article.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kat.article.dao.Go_withDao;
import com.kat.article.model.Go_with;

public class GoWithService {

	@Autowired
    private SqlSessionTemplate sqlSessionTemplate;
	private Go_withDao dao;
	
	//동행 글 작성하기
	public void gowithInsert(Go_with go_with) {
System.out.println("[GoWithService gowithInsert()] ACCESS SUCESS");
        dao = sqlSessionTemplate.getMapper(Go_withDao.class);
        dao.go_withInsert(go_with);
System.out.println("[GoWithService gowithInsert()] go_with :" + go_with.toString());	
	}

}
