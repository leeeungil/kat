package com.kat.product.model;

public class FavoriteProduct {
	private int favorite_no;
	private int product_no;
	private String user_id;
	private int member_no;
	private String create_date;
	private int delete_flag;
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getFavorite_no() {
		return favorite_no;
	}
	public void setFavorite_no(int favorite_no) {
		this.favorite_no = favorite_no;
	}
	public int getProduct_no() {
		return product_no;
	}
	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
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
		return "FavoriteProduct [favorite_no=" + favorite_no + ", product_no=" + product_no + ", user_id=" + user_id
				+ ", member_no=" + member_no + ", create_date=" + create_date + ", delete_flag=" + delete_flag + "]";
	}
	
	
}
