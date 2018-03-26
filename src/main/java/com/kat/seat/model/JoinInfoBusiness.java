package com.kat.seat.model;

public class JoinInfoBusiness {
	private int business_no; // 회원 번호
	private String user_id; // 회원 아이디
	private String name; // 회원 이름
	private String password; // 회원 비밀번호
	private String phone; // 회원 전화번호
	private String email; // 회원 이메일
	private String company; // 매장 이름
	private String zip_code; // 우편번호
	private String address1; // 주소
	private String address2; // 상세주소
	private String business_phone; // 매장 전화번호
	private String business_number; // 매장 사업장등록 번호
	private String create_date;
	private int delete_flag; // 회원 구분

	public int getBusiness_no() {
		return business_no;
	}
	public void setBusiness_no(int business_no) {
		this.business_no = business_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getZip_code() {
		return zip_code;
	}
	public void setZip_code(String zip_code) {
		this.zip_code = zip_code;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getBusiness_phone() {
		return business_phone;
	}
	public void setBusiness_phone(String business_phone) {
		this.business_phone = business_phone;
	}
	public String getBusiness_number() {
		return business_number;
	}
	public void setBusiness_number(String business_number) {
		this.business_number = business_number;
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
		return "JoinInfoBusiness [business_no=" + business_no + ", user_id=" + user_id + ", name=" + name
				+ ", password=" + password + ", phone=" + phone + ", email=" + email + ", company=" + company
				+ ", zip_code=" + zip_code + ", address1=" + address1 + ", address2=" + address2 + ", business_phone="
				+ business_phone + ", business_number=" + business_number + ", create_date=" + create_date
				+ ", delete_flag=" + delete_flag + "]";
	}
}
