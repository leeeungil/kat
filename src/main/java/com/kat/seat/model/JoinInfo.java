package com.kat.seat.model;

import java.util.Date;

public class JoinInfo {

	// 기본 회원 정보
	private int company_no; // 회원 번호
	private String kat_id; // 회원 아이디
	private String kat_name; // 회원 이름
	private String kat_password1; // 회원 비밀번호
	private String kat_phone; // 회원 전화번호
	private String kat_email; // 회원 이메일
	private Date create_date; // 업로드 시간 *
	private String category; // 회원 구분
	private int user_chk; // 회원 구분

	// 사업자 추가 정보
	private String business_name; // 매장 이름

	private String postcode; // 우편번호
	private String address1; // 주소
	private String address2; // 상세주소

	private String business_phone; // 매장 전화번호
	private String business_num; // 매장 사업장등록 번호

	public int getCompany_no() {
		return company_no;
	}

	public void setCompany_no(int company_no) {
		this.company_no = company_no;
	}

	public String getKat_id() {
		return kat_id;
	}

	public void setKat_id(String kat_id) {
		this.kat_id = kat_id;
	}

	public String getKat_name() {
		return kat_name;
	}

	public void setKat_name(String kat_name) {
		this.kat_name = kat_name;
	}

	public String getKat_password1() {
		return kat_password1;
	}

	public void setKat_password1(String kat_password1) {
		this.kat_password1 = kat_password1;
	}

	public String getKat_phone() {
		return kat_phone;
	}

	public void setKat_phone(String kat_phone) {
		this.kat_phone = kat_phone;
	}

	public String getKat_email() {
		return kat_email;
	}

	public void setKat_email(String kat_email) {
		this.kat_email = kat_email;
	}

	public Date getCreate_date() {
		return create_date;
	}

	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getUser_chk() {
		return user_chk;
	}

	public void setUser_chk(int user_chk) {
		this.user_chk = user_chk;
	}

	public String getBusiness_name() {
		return business_name;
	}

	public void setBusiness_name(String business_name) {
		this.business_name = business_name;
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

	public String getBusiness_num() {
		return business_num;
	}

	public void setBusiness_num(String business_num) {
		this.business_num = business_num;
	}

	@Override
	public String toString() {
		return "JoinInfo [company_no=" + company_no + ", kat_id=" + kat_id + ", kat_name=" + kat_name
				+ ", kat_password1=" + kat_password1 + ", kat_phone=" + kat_phone + ", kat_email="
				+ kat_email + ", create_date=" + create_date + ", category=" + category + ", user_chk=" + user_chk
				+ ", business_name=" + business_name + ", postcode=" + postcode + ", address1=" + address1
				+ ", address2=" + address2 + ", business_phone=" + business_phone + ", business_num=" + business_num
				+ "]";
	}

}
