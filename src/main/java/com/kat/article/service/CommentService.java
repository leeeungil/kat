package com.kat.article.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kat.article.dao.CommentDao;
import com.kat.article.model.Comment;

public class CommentService {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	private CommentDao dao;

	public void commentInsert(Comment comment) {
System.out.println("[CommentService commentInsert] ACCESS SUCCESS");		
		dao = sqlSessionTemplate.getMapper(CommentDao.class);
System.out.println("[CommentService commentInsert] comment : "+ comment.toString());		
		dao.commentInsert(comment);
	}

}
