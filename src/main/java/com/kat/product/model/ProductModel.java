package com.kat.product.model;

import org.springframework.web.multipart.MultipartFile;

public class ProductModel {
	private int product_no;
	private String product_title;
	private int product_type;
	private String create_date;
	private String continent;
	private String country;
	private String city;
	private int member_no;
	private String user_profile;
	private String business_number;
	private String product_main_photo;				// 메인 사진
	private MultipartFile file;
	private int use_flag;
	private int delete_flag;
	
	private String user_id;
	
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getProduct_no() {
		return product_no;
	}
	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}
	public String getProduct_title() {
		return product_title;
	}
	public void setProduct_title(String product_title) {
		this.product_title = product_title;
	}
	public int getProduct_type() {
		return product_type;
	}
	public void setProduct_type(int product_type) {
		this.product_type = product_type;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public String getContinent() {
		return continent;
	}
	public void setContinent(String continent) {
		this.continent = continent;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getUser_profile() {
		return user_profile;
	}
	public void setUser_profile(String user_profile) {
		this.user_profile = user_profile;
	}
	public String getBusiness_number() {
		return business_number;
	}
	public void setBusiness_number(String business_number) {
		this.business_number = business_number;
	}
	public String getProduct_main_photo() {
		return product_main_photo;
	}
	public void setProduct_main_photo(String product_main_photo) {
		this.product_main_photo = product_main_photo;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public int getUse_flag() {
		return use_flag;
	}
	public void setUse_flag(int use_flag) {
		this.use_flag = use_flag;
	}
	public int getDelete_flag() {
		return delete_flag;
	}
	public void setDelete_flag(int delete_flag) {
		this.delete_flag = delete_flag;
	}

	@Override
	public String toString() {
		return "ProductModel [product_no=" + product_no + ", product_title=" + product_title + ", product_type="
				+ product_type + ", create_date=" + create_date + ", continent=" + continent + ", country=" + country
				+ ", city=" + city + ", member_no=" + member_no + ", user_profile=" + user_profile
				+ ", business_number=" + business_number + ", product_main_photo=" + product_main_photo + ", file="
				+ file + ", use_flag=" + use_flag + ", delete_flag=" + delete_flag + ", user_id=" + user_id + "]";
	}
}
