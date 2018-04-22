package com.kat.article.model;

import java.util.Date;

public class Go_with {
	
	private int bno;
	private String go_with_content;
	private String go_with_title;
	private String user_id;
	private Date create_date;
	private int delete_flag;
	private int viewcnt;
	private String username;
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
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
	public int getDelete_flag() {
		return delete_flag;
	}
	public void setDelete_flag(int delete_flag) {
		this.delete_flag = delete_flag;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	@Override
	public String toString() {
		return "Go_with [bno=" + bno + ", go_with_content=" + go_with_content + ", go_with_title=" + go_with_title
				+ ", user_id=" + user_id + ", create_date=" + create_date + ", viewcount=" +
				delete_flag + ", viewcnt=" + viewcnt + ", username=" + username + "]";
	}
	
	
	
}
