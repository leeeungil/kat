package com.kat.seat.model;

import org.springframework.web.multipart.MultipartFile;

public class MenuInfo {
	private int product_no; // 상품 번호
	private String product_name; // 상품 이름
	private int product_type; // 상품 종류
	private int cost; // 상품 가격
	private int business_number; // 사업자 번호
	private String user_id; // 상품 등록 아이디
	private String file_menu_photo; // db 저장용 상품 사진
	private MultipartFile multipart_product_file; // 서버 파일 저장용
	private String continent; // 대륙구분
    private String country; // 나라구분
    private String city; // 도시구분
    private String product_content;
    
	public String getProduct_content() {
		return product_content;
	}
	public void setProduct_content(String product_content) {
		this.product_content = product_content;
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
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public int getProduct_type() {
		return product_type;
	}
	public void setProduct_type(int product_type) {
		this.product_type = product_type;
	}
	public int getBusiness_number() {
		return business_number;
	}
	public void setBusiness_number(int business_number) {
		this.business_number = business_number;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getFile_menu_photo() {
		return file_menu_photo;
	}
	public void setFile_menu_photo(String file_menu_photo) {
		this.file_menu_photo = file_menu_photo;
	}
	public MultipartFile getMultipart_product_file() {
		return multipart_product_file;
	}
	public void setMultipart_product_file(MultipartFile multipart_product_file) {
		this.multipart_product_file = multipart_product_file;
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
	
	@Override
	public String toString() {
		return "MenuInfo [product_no=" + product_no + ", product_name=" + product_name + ", product_type="
				+ product_type + ", cost=" + cost + ", business_number=" + business_number + ", user_id=" + user_id
				+ ", file_menu_photo=" + file_menu_photo + ", multipart_product_file=" + multipart_product_file
				+ ", continent=" + continent + ", country=" + country + ", city=" + city + "]";
	}
	
	
}
