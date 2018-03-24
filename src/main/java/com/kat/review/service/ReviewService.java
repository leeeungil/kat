package com.kat.review.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import com.kat.review.dao.ReviewDao;
import com.kat.review.model.Review;

public class ReviewService {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private ReviewDao dao;
	
	public void reviewinsert(String SearchName,Review review) {
		dao = sqlSessionTemplate.getMapper(ReviewDao.class);
		
		review.setBusiness_number(SearchName);
		System.out.println("서비스 SearchName : " + SearchName);
		System.out.println("서비스 review : " + review);
		dao.reviewinsert(review);
	}

	public void reviewUpdate(Review review) {
		dao = sqlSessionTemplate.getMapper(ReviewDao.class);
		dao.reviewupdate(review);
	}
}
