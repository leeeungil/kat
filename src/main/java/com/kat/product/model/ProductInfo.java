package com.kat.product.model;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class ProductInfo {
	private String product_main_photo;				// 메인 사진
	private int product_type;
	private String user_profile;
	private String continent;
	private String country;
	private String city;
	private String product_title;
	private String sell_start;
	private String sell_end;
	private int cost;
	private String product_content;
	private String product_photo1;
	private String product_photo2;
	private String product_photo3;
	private String product_photo4;
	private String product_photo5;
	private String product_photo6;
	private String product_photo7;
	private String product_photo8;
	private String product_photo9;
	private String product_photo10;
	private String course;
	private String user_id;
	private String business_number;
	private String delete_flag;
	private String create_date;

	private List<MultipartFile> file;
	
	public String getUser_profile() {
		return user_profile;
	}
	public void setUser_profile(String user_profile) {
		this.user_profile = user_profile;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getBusiness_number() {
		return business_number;
	}
	public void setBusiness_number(String business_number) {
		this.business_number = business_number;
	}
	public String getDelete_flag() {
		return delete_flag;
	}
	public void setDelete_flag(String delete_flag) {
		this.delete_flag = delete_flag;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public String getProduct_main_photo() {
		return product_main_photo;
	}
	public void setProduct_main_photo(String product_main_photo) {
		this.product_main_photo = product_main_photo;
	}
	public int getProduct_type() {
		return product_type;
	}
	public void setProduct_type(int product_type) {
		this.product_type = product_type;
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
	public String getProduct_title() {
		return product_title;
	}
	public void setProduct_title(String product_title) {
		this.product_title = product_title;
	}
	public String getSell_start() {
		return sell_start;
	}
	public void setSell_start(String sell_start) {
		this.sell_start = sell_start;
	}
	public String getSell_end() {
		return sell_end;
	}
	public void setSell_end(String sell_end) {
		this.sell_end = sell_end;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public String getProduct_content() {
		return product_content;
	}
	public void setProduct_content(String product_content) {
		this.product_content = product_content;
	}
	public String getProduct_photo1() {
		return product_photo1;
	}
	public void setProduct_photo1(String product_photo1) {
		this.product_photo1 = product_photo1;
	}
	public String getProduct_photo2() {
		return product_photo2;
	}
	public void setProduct_photo2(String product_photo2) {
		this.product_photo2 = product_photo2;
	}
	public String getProduct_photo3() {
		return product_photo3;
	}
	public void setProduct_photo3(String product_photo3) {
		this.product_photo3 = product_photo3;
	}
	public String getProduct_photo4() {
		return product_photo4;
	}
	public void setProduct_photo4(String product_photo4) {
		this.product_photo4 = product_photo4;
	}
	public String getProduct_photo5() {
		return product_photo5;
	}
	public void setProduct_photo5(String product_photo5) {
		this.product_photo5 = product_photo5;
	}
	public String getProduct_photo6() {
		return product_photo6;
	}
	public void setProduct_photo6(String product_photo6) {
		this.product_photo6 = product_photo6;
	}
	public String getProduct_photo7() {
		return product_photo7;
	}
	public void setProduct_photo7(String product_photo7) {
		this.product_photo7 = product_photo7;
	}
	public String getProduct_photo8() {
		return product_photo8;
	}
	public void setProduct_photo8(String product_photo8) {
		this.product_photo8 = product_photo8;
	}
	public String getProduct_photo9() {
		return product_photo9;
	}
	public void setProduct_photo9(String product_photo9) {
		this.product_photo9 = product_photo9;
	}
	public String getProduct_photo10() {
		return product_photo10;
	}
	public void setProduct_photo10(String product_photo10) {
		this.product_photo10 = product_photo10;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	
	public List<MultipartFile> getFile() {
		return file;
	}
	public void setFile(List<MultipartFile> file) {
		this.file = file;
	}
	@Override
	public String toString() {
		return "ProductInfo [product_main_photo=" + product_main_photo + ", product_type=" + product_type
				+ ", continent=" + continent + ", country=" + country + ", city=" + city + ", product_title="
				+ product_title + ", sell_start=" + sell_start + ", sell_end=" + sell_end + ", cost=" + cost
				+ ", product_content=" + product_content + ", product_photo1=" + product_photo1 + ", product_photo2="
				+ product_photo2 + ", product_photo3=" + product_photo3 + ", product_photo4=" + product_photo4
				+ ", product_photo5=" + product_photo5 + ", product_photo6=" + product_photo6 + ", product_photo7="
				+ product_photo7 + ", product_photo8=" + product_photo8 + ", product_photo9=" + product_photo9
				+ ", product_photo10=" + product_photo10 + ", course=" + course + ", user_id=" + user_id
				+ ", business_number=" + business_number + ", delete_flag=" + delete_flag + ", create_date="
				+ create_date + ", file=" + file + "]";
	}
	
	
}
