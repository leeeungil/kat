package com.kat.review.dao;

import java.util.List;
import com.kat.review.model.Review;

public interface ReviewDao {

	public void reviewinsert(Review review);

	public int reviewselectcount(String SearchName);

	public List<Review> reviewList(String SearchName, int firstRow, int CountPerPage);

	public Review info(int no);

	public Review getinfo(int no);

	public void reviewupdate(Review review);

	public List<Review> mainreviewList(int firstRow, int countPerPage);

}
