package com.kat.article.model;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

public class Comment {
	
	private int cmt_no; //댓글번호
	private int cmt_board; //게시글번호
	private String cmt_content;  //댓글내용
	private String cmt_user_id;  //댓글작성자
	private Date cmt_date; //댓글작성일
    private int cmt_parent; //부모글
    private int cmt_level; //댓글 - 답변글 깊이
	private int delete_flag;
	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Comment(int cmt_no, int cmt_board, String cmt_content, String cmt_user_id, Date cmt_date, int cmt_parent,
			int cmt_level, int delete_flag) {
		super();
		this.cmt_no = cmt_no;
		this.cmt_board = cmt_board;
		this.cmt_content = cmt_content;
		this.cmt_user_id = cmt_user_id;
		this.cmt_date = cmt_date;
		this.cmt_parent = cmt_parent;
		this.cmt_level = cmt_level;
		this.delete_flag = delete_flag;
	}
	public int getCmt_no() {
		return cmt_no;
	}
	public void setCmt_no(int cmt_no) {
		this.cmt_no = cmt_no;
	}
	public int getCmt_board() {
		return cmt_board;
	}
	public void setCmt_board(int cmt_board) {
		this.cmt_board = cmt_board;
	}
	public String getCmt_content() {
		return cmt_content;
	}
	public void setCmt_content(String cmt_content) {
		this.cmt_content = cmt_content;
	}
	public String getCmt_user_id() {
		return cmt_user_id;
	}
	public void setCmt_user_id(String cmt_user_id) {
		this.cmt_user_id = cmt_user_id;
	}
	public Date getCmt_date() {
		return cmt_date;
	}
	public void setCmt_date(Date cmt_date) {
		this.cmt_date = cmt_date;
	}
	public int getCmt_parent() {
		return cmt_parent;
	}
	public void setCmt_parent(int cmt_parent) {
		this.cmt_parent = cmt_parent;
	}
	public int getCmt_level() {
		return cmt_level;
	}
	public void setCmt_level(int cmt_level) {
		this.cmt_level = cmt_level;
	}
	public int getDelete_flag() {
		return delete_flag;
	}
	public void setDelete_flag(int delete_flag) {
		this.delete_flag = delete_flag;
	}
	@Override
	public String toString() {
		return "Comment [cmt_no=" + cmt_no + ", cmt_board=" + cmt_board + ", cmt_content=" + cmt_content
				+ ", cmt_user_id=" + cmt_user_id + ", cmt_date=" + cmt_date + ", cmt_parent=" + cmt_parent
				+ ", cmt_level=" + cmt_level + ", delete_flag=" + delete_flag + "]";
	}

    
	
}
