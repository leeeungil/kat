package com.kat.review.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kat.review.dao.ReviewDao;
import com.kat.review.model.Review;
import com.kat.review.model.ReviewInfoListView;

public class ReviewListService {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	private ReviewDao dao;
	private static final int COUNT_PER_PAGE = 5;

	public ReviewInfoListView getReviewList(String SearchName, int pageNumber) {

		dao = sqlSessionTemplate.getMapper(ReviewDao.class);

		System.out.println("service 1번째" + SearchName);
		ReviewInfoListView view = new ReviewInfoListView();
		List<Review> reviewList = null;
		int PageNumber;
		int firstRow = 0;

		int TotalCount = dao.reviewselectcount(SearchName);

		firstRow = (pageNumber - 1) * COUNT_PER_PAGE;

		reviewList = dao.reviewList (SearchName, firstRow, COUNT_PER_PAGE);

		PageNumber = TotalCount / COUNT_PER_PAGE;

		if (TotalCount % COUNT_PER_PAGE != 0) {
			PageNumber += 1;
		}

		System.out.println("reviewList갯수" + reviewList);
		System.out.println("전체메세지수 :" + TotalCount);
		System.out.println("페이지수:" + PageNumber);
		System.out.println("업체아이디" + SearchName);

		view.setCompanyId(SearchName);
		view.setReviewList(reviewList);
		view.setPageTotalCount(TotalCount);
		view.setPageNumber(PageNumber);

		return view;
	}

	// 리뷰 내용가져오기
	public Review getinfo(int no) {

		dao = sqlSessionTemplate.getMapper(ReviewDao.class);

		Review info = dao.info(no);

		return info;
	}

	// 수정할 리뷰 가져오기
	public Review getreviewInfoUpdate(int no) {

		dao = sqlSessionTemplate.getMapper(ReviewDao.class);
		Review info = dao.getinfo(no);

		return info;
	}

	public ReviewInfoListView getMainReviewList(int pageNumber) {
				dao = sqlSessionTemplate.getMapper(ReviewDao.class);
		
				ReviewInfoListView view = new ReviewInfoListView();
				List<Review> mainreviewList = null;
				int PageNumber = 0;
				int firstRow = 0;
		
				mainreviewList = dao.mainreviewList (firstRow, COUNT_PER_PAGE);
		
				
				view.setMainreviewList(mainreviewList);
			    view.setPageNumber(PageNumber);
				return view;
			}
	
}
