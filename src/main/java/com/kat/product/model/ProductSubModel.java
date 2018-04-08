package com.kat.product.model;

public class ProductSubModel {
	private int product_sub_no;
	private int product_no;
	private String product_name;
	private String cost;
	private String max_people;
	private int delete_flag;
	
	private String user_id;
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getProduct_sub_no() {
		return product_sub_no;
	}
	public void setProduct_sub_no(int product_sub_no) {
		this.product_sub_no = product_sub_no;
	}
	public int getProduct_no() {
		return product_no;
	}
	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}
	public String getMax_people() {
		return max_people;
	}
	public void setMax_people(String max_people) {
		this.max_people = max_people;
	}
	public int getDelete_flag() {
		return delete_flag;
	}
	public void setDelete_flag(int delete_flag) {
		this.delete_flag = delete_flag;
	}
	@Override
	public String toString() {
		return "ProductSubModel [product_sub_no=" + product_sub_no + ", product_no=" + product_no + ", product_name="
				+ product_name + ", cost=" + cost + ", max_people=" + max_people + ", delete_flag=" + delete_flag
				+ ", user_id=" + user_id + "]";
	}
	
}
