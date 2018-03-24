package com.kat.master.model;

import java.util.Date;

public class Master {
	
	private String master_id;
	private String master_pw;
	Date create_date;
    private String category;
    private int master_no;
	private int user_chk;
	public Master() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Master(String master_id, String master_pw, Date create_date, String category, int master_no, int user_chk) {
		super();
		this.master_id = master_id;
		this.master_pw = master_pw;
		this.create_date = create_date;
		this.category = category;
		this.master_no = master_no;
		this.user_chk = user_chk;
	}
	public String getMaster_id() {
		return master_id;
	}
	public void setMaster_id(String master_id) {
		this.master_id = master_id;
	}
	public String getMaster_pw() {
		return master_pw;
	}
	public void setMaster_pw(String master_pw) {
		this.master_pw = master_pw;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getMaster_no() {
		return master_no;
	}
	public void setMaster_no(int master_no) {
		this.master_no = master_no;
	}
	public int getUser_chk() {
		return user_chk;
	}
	public void setUser_chk(int user_chk) {
		this.user_chk = user_chk;
	}
	@Override
	public String toString() {
		return "Master [master_id=" + master_id + ", master_pw=" + master_pw + ", create_date=" + create_date
				+ ", category=" + category + ", master_no=" + master_no + ", user_chk=" + user_chk + "]";
	}
	
	

}
