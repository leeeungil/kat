package com.kat.seat.model;

public class InfoShop {

	private int shop_no; // 혹시 몰라 일단생성
	private String shop_photo; // 매장 사진 *
	private String shop_name; // 매장이름
	private String shop_location; // 매장위치
	private String shop_category; // 메뉴 종류
	private String user_id; // 매장 아이디
	private String menu_loc;

	public int getShop_no() {
		return shop_no;
	}

	public void setShop_no(int shop_no) {
		this.shop_no = shop_no;
	}

	public String getShop_photo() {
		return shop_photo;
	}

	public void setShop_photo(String shop_photo) {
		this.shop_photo = shop_photo;
	}

	public String getShop_name() {
		return shop_name;
	}

	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}

	public String getShop_location() {
		return shop_location;
	}

	public void setShop_location(String shop_location) {
		this.shop_location = shop_location;
	}

	public String getShop_category() {
		return shop_category;
	}

	public void setShop_category(String shop_category) {
		this.shop_category = shop_category;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	public String getMenu_loc() {
		return menu_loc;
	}

	public void setMenu_loc(String menu_loc) {
		this.menu_loc = menu_loc;
	}

	@Override
	public String toString() {
		return "InfoShop [shop_no=" + shop_no + ", shop_photo=" + shop_photo + ", shop_name=" + shop_name
				+ ", shop_location=" + shop_location + ", shop_category=" + shop_category + ", user_id=" + user_id
				+ ", menu_loc=" + menu_loc + "]";
	}
	

	
}
