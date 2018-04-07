package com.kat.article.model;

import java.util.Date;

public class Market {
	
	private int market_no;
	private String market_title;
	private String market_type;
	private String market_content;
	private String user_id;
	private Date create_date;
	private String read_count;
	private int delete_flag;
	private int photo_no;
	public int getMarket_no() {
		return market_no;
	}
	public void setMarket_no(int market_no) {
		this.market_no = market_no;
	}
	public String getMarket_title() {
		return market_title;
	}
	public void setMarket_title(String market_title) {
		this.market_title = market_title;
	}
	public String getMarket_type() {
		return market_type;
	}
	public void setMarket_type(String market_type) {
		this.market_type = market_type;
	}
	public String getMarket_content() {
		return market_content;
	}
	public void setMarket_content(String market_content) {
		this.market_content = market_content;
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
	public String getRead_count() {
		return read_count;
	}
	public void setRead_count(String read_count) {
		this.read_count = read_count;
	}
	public int getDelete_flag() {
		return delete_flag;
	}
	public void setDelete_flag(int delete_flag) {
		this.delete_flag = delete_flag;
	}
	public int getPhoto_no() {
		return photo_no;
	}
	public void setPhoto_no(int photo_no) {
		this.photo_no = photo_no;
	}
	@Override
	public String toString() {
		return "Market [market_no=" + market_no + ", market_title=" + market_title + ", market_type=" + market_type
				+ ", market_content=" + market_content + ", user_id=" + user_id + ", create_date=" + create_date
				+ ", read_count=" + read_count + ", delete_flag=" + delete_flag + ", photo_no=" + photo_no + "]";
	}

	
}
