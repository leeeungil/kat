package com.kat.seat.model;

import java.util.Date;

public class JoinInfo {

	// 기본 회원 정보
	private int member_no; // 회원 번호
	private String user_id; // 회원 아이디
	private String name; // 회원 이름
	private String password; // 회원 비밀번호
	private String phone; // 회원 전화번호
	private String email; // 회원 이메일
	private String level; // 회원 구분
	private int delete_flag; // 회원 구분
	private Date create_date;
	
	// 사업자 추가 정보
	private String company; // 매장 이름
	private String postcode; // 우편번호
	private String address1; // 주소
	private String address2; // 상세주소
	private String business_phone; // 매장 전화번호
	private String business_number; // 매장 사업장등록 번호
	private int com_delete_flag; // 매장 삭제 

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
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public int getDelete_flag() {
		return delete_flag;
	}
	public void setDelete_flag(int delete_flag) {
		this.delete_flag = delete_flag;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
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
	public int getCom_delete_flag() {
		return com_delete_flag;
	}
	public void setCom_delete_flag(int com_delete_flag) {
		this.com_delete_flag = com_delete_flag;
	}
	
	@Override
	public String toString() {
		return "JoinInfo [member_no=" + member_no + ", user_id=" + user_id + ", name=" + name + ", password=" + password
				+ ", phone=" + phone + ", email=" + email + ", level=" + level
				+ ", delete_flag=" + delete_flag + ", company=" + company + ", postcode=" + postcode + ", address1="
				+ address1 + ", address2=" + address2 + ", business_phone=" + business_phone + ", business_number="
				+ business_number + ", com_delete_flag=" + com_delete_flag + "]";
	}
	
}
