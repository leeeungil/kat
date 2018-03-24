package com.kat.seat.model;

import java.util.Date;

public class UserBreakdown {

	private String shop_id; // 매장 주인 아이디
	private int file_no; // 예약한 좌석 키
	private int file_seat; // 예약좌석 인원수
	private Date shop_re_time; // 예약한 시간
	private String user_id; // 예약자
	private String shop_name; // 매장 이름
	private String shop_phone; // 매장 전화번호

	public String getShop_id() {
		return shop_id;
	}

	public void setShop_id(String shop_id) {
		this.shop_id = shop_id;
	}

	public int getFile_no() {
		return file_no;
	}

	public void setFile_no(int file_no) {
		this.file_no = file_no;
	}

	public int getFile_seat() {
		return file_seat;
	}

	public void setFile_seat(int file_seat) {
		this.file_seat = file_seat;
	}

	public Date getShop_re_time() {
		return shop_re_time;
	}

	public void setShop_re_time(Date shop_re_time) {
		this.shop_re_time = shop_re_time;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getShop_name() {
		return shop_name;
	}

	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}

	public String getShop_phone() {
		return shop_phone;
	}

	public void setShop_phone(String shop_phone) {
		this.shop_phone = shop_phone;
	}

	@Override
	public String toString() {
		return "UserBreakdown [shop_id=" + shop_id + ", file_no=" + file_no + ", file_seat=" + file_seat
				+ ", shop_re_time=" + shop_re_time + ", user_id=" + user_id + ", shop_name=" + shop_name
				+ ", shop_phone=" + shop_phone + "]";
	}

}
