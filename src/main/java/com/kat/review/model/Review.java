package com.kat.review.model;

import java.util.Date;

public class Review {
	
	private int review_no;
	private String review_title;
	private String review_content;
	private Date regdate;
	private String user_id;
	private String writer_name;
	private String password;
	private String business_name;
	private int review_point;
	public Review() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Review(int review_no, String review_title, String review_content, Date regdate, String user_id,
			String writer_name, String password, String business_name, int review_point) {
		super();
		this.review_no = review_no;
		this.review_title = review_title;
		this.review_content = review_content;
		this.regdate = regdate;
		this.user_id = user_id;
		this.writer_name = writer_name;
		this.password = password;
		this.business_name = business_name;
		this.review_point = review_point;
	}
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
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
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
	public String getBusiness_name() {
		return business_name;
	}
	public void setBusiness_name(String business_name) {
		this.business_name = business_name;
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
				+ review_content + ", regdate=" + regdate + ", user_id=" + user_id + ", writer_name=" + writer_name
				+ ", password=" + password + ", business_name=" + business_name + ", review_point=" + review_point
				+ "]";
	}
	
}	