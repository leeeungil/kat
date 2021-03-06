package com.kat.product.model;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class ProductCourseModel {
	private int product_no;
	private String product_main_photo;				// 메인 사진
	private int product_type;
	private String user_profile;
	private String continent;
	private String country;
	private String city;
	private String product_title;
	private String product_content;
	private int product_content_no;
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
	private String course_photo_dir;
	private String product_info;
	private String user_id;
	private String business_number;
	private String delete_flag;
	private String create_date;
	private List<MultipartFile> file;
	
	
	public String getCourse_photo_dir() {
		return course_photo_dir;
	}
	public void setCourse_photo_dir(String course_photo_dir) {
		this.course_photo_dir = course_photo_dir;
	}
	public String getProduct_info() {
		return product_info;
	}
	public void setProduct_info(String product_info) {
		this.product_info = product_info;
	}
	public int getProduct_content_no() {
		return product_content_no;
	}
	public void setProduct_content_no(int product_content_no) {
		this.product_content_no = product_content_no;
	}
	public int getProduct_no() {
		return product_no;
	}
	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}
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
		return "ProductInfo [product_no=" + product_no + ", product_main_photo=" + product_main_photo
				+ ", product_type=" + product_type + ", user_profile=" + user_profile + ", continent=" + continent
				+ ", country=" + country + ", city=" + city + ", product_title=" + product_title + ", product_content="
				+ product_content + ", product_content_no=" + product_content_no + ", product_photo1=" + product_photo1
				+ ", product_photo2=" + product_photo2 + ", product_photo3=" + product_photo3 + ", product_photo4="
				+ product_photo4 + ", product_photo5=" + product_photo5 + ", product_photo6=" + product_photo6
				+ ", product_photo7=" + product_photo7 + ", product_photo8=" + product_photo8 + ", product_photo9="
				+ product_photo9 + ", product_photo10=" + product_photo10 + ", course=" + course + ", course_photo_dir="
				+ course_photo_dir + ", product_info=" + product_info + ", user_id=" + user_id + ", business_number="
				+ business_number + ", delete_flag=" + delete_flag + ", create_date=" + create_date + ", file=" + file
				+ "]";
	}
	
	
}
