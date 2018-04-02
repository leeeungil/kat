package com.kat.article.model;

import java.util.Date;

public class Ask_to {
	
	private int ask_no;
	private String ask_title;
	private String ask_content;
	private String user_id;
	private String writer_name;
	private String password;
	private String ask_reply;
	private Date create_date;
	private int delete_flag;
	public Ask_to() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Ask_to(int ask_no, String ask_title, String ask_content, String user_id, String writer_name, String password,
			String ask_reply, Date create_date, int delete_flag) {
		super();
		this.ask_no = ask_no;
		this.ask_title = ask_title;
		this.ask_content = ask_content;
		this.user_id = user_id;
		this.writer_name = writer_name;
		this.password = password;
		this.ask_reply = ask_reply;
		this.create_date = create_date;
		this.delete_flag = delete_flag;
	}
	public int getAsk_no() {
		return ask_no;
	}
	public void setAsk_no(int ask_no) {
		this.ask_no = ask_no;
	}
	public String getAsk_title() {
		return ask_title;
	}
	public void setAsk_title(String ask_title) {
		this.ask_title = ask_title;
	}
	public String getAsk_content() {
		return ask_content;
	}
	public void setAsk_content(String ask_content) {
		this.ask_content = ask_content;
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
	public String getAsk_reply() {
		return ask_reply;
	}
	public void setAsk_reply(String ask_reply) {
		this.ask_reply = ask_reply;
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
	@Override
	public String toString() {
		return "Ask_to [ask_no=" + ask_no + ", ask_title=" + ask_title + ", ask_content=" + ask_content + ", user_id="
				+ user_id + ", writer_name=" + writer_name + ", password=" + password + ", ask_reply=" + ask_reply
				+ ", create_date=" + create_date + ", delete_flag=" + delete_flag + "]";
	}
	
	

}
