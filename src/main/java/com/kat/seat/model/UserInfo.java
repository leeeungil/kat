package com.kat.seat.model;

public class UserInfo {

	private String user_id; // 아이디 세션
	private String category; // 아이디 분류

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "UserInfo [user_id=" + user_id + ", category=" + category + "]";
	}

}
