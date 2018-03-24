package com.kat.seat.model;

public class InfoShopSearch {

	private int company_no; // 기본키
	private String business_name; // 매장 이름
	private String address1; // 매장 주소
	private String menu_catagory; // 메뉴 종류
	private String menu_name; // 메뉴 이름
	private String user_id; // 매장 아이디
	private String menu_loc;

	public int getCompany_no() {
		return company_no;
	}

	public void setCompany_no(int company_no) {
		this.company_no = company_no;
	}

	public String getBusiness_name() {
		return business_name;
	}

	public void setBusiness_name(String business_name) {
		this.business_name = business_name;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getMenu_catagory() {
		return menu_catagory;
	}

	public void setMenu_catagory(String menu_catagory) {
		this.menu_catagory = menu_catagory;
	}

	public String getMenu_name() {
		return menu_name;
	}

	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
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
		return "InfoShopSearch [company_no=" + company_no + ", business_name=" + business_name + ", address1="
				+ address1 + ", menu_catagory=" + menu_catagory + ", menu_name=" + menu_name + ", user_id=" + user_id
				+ ", menu_loc=" + menu_loc + "]";
	}

	
}
