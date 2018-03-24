package com.kat.review.model;

public class Review {
	private int review_no;
	private String review_title;
	private String review_content;
	private String user_id;
	private String writer_name;
	private String password;
	private String business_number;
	private int review_point;
	
	public int getReview_no() {
		return review_no;
	}
	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}
	public String getReview_title() {
		return review_title;
	}
	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getWriter_name() {
		return writer_name;
	}
	public void setWriter_name(String writer_name) {
		this.writer_name = writer_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getBusiness_number() {
		return business_number;
	}
	public void setBusiness_number(String business_number) {
		this.business_number = business_number;
	}
	public int getReview_point() {
		return review_point;
	}
	public void setReview_point(int review_point) {
		this.review_point = review_point;
	}
	
	@Override
	public String toString() {
		return "Review [review_no=" + review_no + ", review_title=" + review_title + ", review_content="
				+ review_content + ", user_id=" + user_id + ", writer_name=" + writer_name + ", password=" + password
				+ ", business_number=" + business_number + ", review_point=" + review_point + "]";
	}

	
}	