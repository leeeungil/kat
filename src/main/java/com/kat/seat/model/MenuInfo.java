package com.kat.seat.model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class MenuInfo {
	private int product_no; // 상품 번호
	private String product_name; // 상품 이름
	private int cost; // 상품 가격
	private String catagory; // 상품 종류
	private int business_number; // 사업자 번호
	private String user_id; // 상품 등록 아이디
	private String menu_photo_file; // db 저장용 상품 사진
	private MultipartFile multipart_product_file; // 서버 파일 저장용
	private Date create_date; // 상품 등록 시간 
	private String continent; // 대륙구분
    private String country; // 나라구분
    private String city; // 도시구분
	public MenuInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MenuInfo(int product_no, String product_name, int cost, String catagory, int business_number, String user_id,
			String menu_photo_file, MultipartFile multipart_product_file, Date create_date, String continent,
			String country, String city) {
		super();
		this.product_no = product_no;
		this.product_name = product_name;
		this.cost = cost;
		this.catagory = catagory;
		this.business_number = business_number;
		this.user_id = user_id;
		this.menu_photo_file = menu_photo_file;
		this.multipart_product_file = multipart_product_file;
		this.create_date = create_date;
		this.continent = continent;
		this.country = country;
		this.city = city;
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
	public String getCatagory() {
		return catagory;
	}
	public void setCatagory(String catagory) {
		this.catagory = catagory;
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
	public String getMenu_photo_file() {
		return menu_photo_file;
	}
	public void setMenu_photo_file(String menu_photo_file) {
		this.menu_photo_file = menu_photo_file;
	}
	public MultipartFile getMultipart_product_file() {
		return multipart_product_file;
	}
	public void setMultipart_product_file(MultipartFile multipart_product_file) {
		this.multipart_product_file = multipart_product_file;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
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
	@Override
	public String toString() {
		return "MenuInfo [product_no=" + product_no + ", product_name=" + product_name + ", cost=" + cost
				+ ", catagory=" + catagory + ", business_number=" + business_number + ", user_id=" + user_id
				+ ", menu_photo_file=" + menu_photo_file + ", multipart_product_file=" + multipart_product_file
				+ ", create_date=" + create_date + ", continent=" + continent + ", country=" + country + ", city="
				+ city + "]";
	}

	
}
