package com.kat.article.model;

import java.util.Date;

public class Board {
	private int board_no;
	private String board_title;
	private String board_content;
	private Date regdate;
	private String user_id;
	private String writer_name;
	private String password;
	private String board_reply;

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
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

	public String getBoard_reply() {
		return board_reply;
	}

	public void setBoard_reply(String board_reply) {
		this.board_reply = board_reply;
	}

	@Override
	public String toString() {
		return "Board [board_no=" + board_no + ", board_title=" + board_title + ", board_content=" + board_content
				+ ", regdate=" + regdate + ", user_id=" + user_id + ", writer_name=" + writer_name + ", password="
				+ password + ", board_reply=" + board_reply + "]";
	}

}