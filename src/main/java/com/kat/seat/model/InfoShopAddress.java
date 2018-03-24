package com.kat.seat.model;

public class InfoShopAddress {

	private int company_no; // 사업자 기본키
	private String kat_id; // 매장 아이디
	private String address1; // 매장주소
	private String business_name; // 매장 이름

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

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getBusiness_name() {
		return business_name;
	}

	public void setBusiness_name(String business_name) {
		this.business_name = business_name;
	}

	@Override
	public String toString() {
		return "InfoShopAddress [company_no=" + company_no + ", kat_id=" + kat_id + ", address1=" + address1
				+ ", business_name=" + business_name + "]";
	}

}
