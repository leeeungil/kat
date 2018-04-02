package com.kat.article.model;

import java.util.Date;

public class Go_with {
	
	private int go_with_no;
	private String go_with_content;
	private String go_with_title;
	private String user_id;
	private Date create_date;
	private int read_count;
	private int delete_flag;
	public Go_with() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Go_with(int go_with_no, String go_with_content, String go_with_title, String user_id, Date create_date,
			int read_count, int delete_flag) {
		super();
		this.go_with_no = go_with_no;
		this.go_with_content = go_with_content;
		this.go_with_title = go_with_title;
		this.user_id = user_id;
		this.create_date = create_date;
		this.read_count = read_count;
		this.delete_flag = delete_flag;
	}
	public int getGo_with_no() {
		return go_with_no;
	}
	public void setGo_with_no(int go_with_no) {
		this.go_with_no = go_with_no;
	}
	public String getGo_with_content() {
		return go_with_content;
	}
	public void setGo_with_content(String go_with_content) {
		this.go_with_content = go_with_content;
	}
	public String getGo_with_title() {
		return go_with_title;
	}
	public void setGo_with_title(String go_with_title) {
		this.go_with_title = go_with_title;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
	public int getRead_count() {
		return read_count;
	}
	public void setRead_count(int read_count) {
		this.read_count = read_count;
	}
	public int getDelete_flag() {
		return delete_flag;
	}
	public void setDelete_flag(int delete_flag) {
		this.delete_flag = delete_flag;
	}
	@Override
	public String toString() {
		return "Go_with [go_with_no=" + go_with_no + ", go_with_content=" + go_with_content + ", go_with_title="
				+ go_with_title + ", user_id=" + user_id + ", create_date=" + create_date + ", read_count=" + read_count
				+ ", delete_flag=" + delete_flag + "]";
	}
	
	

}
