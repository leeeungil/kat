package com.kat.article.model;

public class Comment {
	private int cmt_no; //댓글번호
	private int cmt_parent; //부모글
	private String cmt_content;  //댓글내용
	private String cmt_user_id;  //댓글작성자
	private String cmt_password;  //댓글 비밀번호
	private String cmt_create_date; //댓글작성일
    private int cmt_del; //댓글 삭제여부
    private int cmt_ip; //댓글 아이피
	private int delete_flag;
	
	public int getCmt_no() {
		return cmt_no;
	}
	public void setCmt_no(int cmt_no) {
		this.cmt_no = cmt_no;
	}
	public int getCmt_parent() {
		return cmt_parent;
	}
	public void setCmt_parent(int cmt_parent) {
		this.cmt_parent = cmt_parent;
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
	public String getCmt_password() {
		return cmt_password;
	}
	public void setCmt_password(String cmt_password) {
		this.cmt_password = cmt_password;
	}
	public String getCmt_create_date() {
		return cmt_create_date;
	}
	public void setCmt_create_date(String cmt_create_date) {
		this.cmt_create_date = cmt_create_date;
	}
	public int getCmt_del() {
		return cmt_del;
	}
	public void setCmt_del(int cmt_del) {
		this.cmt_del = cmt_del;
	}
	public int getCmt_ip() {
		return cmt_ip;
	}
	public void setCmt_ip(int cmt_ip) {
		this.cmt_ip = cmt_ip;
	}
	public int getDelete_flag() {
		return delete_flag;
	}
	public void setDelete_flag(int delete_flag) {
		this.delete_flag = delete_flag;
	}
	@Override
	public String toString() {
		return "Comment [cmt_no=" + cmt_no + ", cmt_parent=" + cmt_parent + ", cmt_content=" + cmt_content
				+ ", cmt_user_id=" + cmt_user_id + ", cmt_password=" + cmt_password + ", cmt_create_date="
				+ cmt_create_date + ", cmt_del=" + cmt_del + ", cmt_ip=" + cmt_ip + ", delete_flag=" + delete_flag
				+ "]";
	}
}
