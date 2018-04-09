package com.kat.product.model;

public class AdminProductList {
	private int product_no;
	private int product_type;
	private String product_type_name;
	private int country_no;
	private String country;
	private int city_no;
	private String city;
	private String product_title;
	private int member_no;
	private String user_id;
	private String product_name;
	private String cost;
	private String user_profile;
	private int delete_flag;
	private String content;
	private String create_date;
	private int use_flag;
	private String product_info;
	private String course;
	private String sales_start_date;
	
	
	public int getUse_flag() {
		return use_flag;
	}
	public void setUse_flag(int use_flag) {
		this.use_flag = use_flag;
	}
	public int getProduct_no() {
		return product_no;
	}
	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}
	public int getProduct_type() {
		return product_type;
	}
	public void setProduct_type(int product_type) {
		this.product_type = product_type;
	}
	public String getProduct_type_name() {
		return product_type_name;
	}
	public void setProduct_type_name(String product_type_name) {
		this.product_type_name = product_type_name;
	}
	public int getCountry_no() {
		return country_no;
	}
	public void setCountry_no(int country_no) {
		this.country_no = country_no;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public int getCity_no() {
		return city_no;
	}
	public void setCity_no(int city_no) {
		this.city_no = city_no;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getProduct_title() {
		return product_title;
	}
	public void setProduct_title(String product_title) {
		this.product_title = product_title;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
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
	public String getUser_profile() {
		return user_profile;
	}
	public void setUser_profile(String user_profile) {
		this.user_profile = user_profile;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getProduct_info() {
		return product_info;
	}
	public void setProduct_info(String product_info) {
		this.product_info = product_info;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
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
	public String getSales_start_date() {
		return sales_start_date;
	}
	public void setSales_start_date(String sales_start_date) {
		this.sales_start_date = sales_start_date;
	}
	@Override
	public String toString() {
		return "AdminProductList [product_no=" + product_no + ", product_type=" + product_type + ", product_type_name="
				+ product_type_name + ", country_no=" + country_no + ", country=" + country + ", city_no=" + city_no
				+ ", city=" + city + ", product_title=" + product_title + ", member_no=" + member_no + ", user_id="
				+ user_id + ", product_name=" + product_name + ", cost=" + cost + ", user_profile=" + user_profile
				+ ", delete_flag=" + delete_flag + ", content=" + content + ", create_date=" + create_date
				+ ", use_flag=" + use_flag + ", product_info=" + product_info + ", course=" + course
				+ ", sales_start_date=" + sales_start_date + "]";
	}
}
