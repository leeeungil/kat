package com.kat.seat.model;

public class Shop_re_name_phone {

	private String business_name; // 매장 이름
	private String business_phone; // 매장 전화번호

	public String getBusiness_name() {
		return business_name;
	}

	public void setBusiness_name(String business_name) {
		this.business_name = business_name;
	}

	public String getBusiness_phone() {
		return business_phone;
	}

	public void setBusiness_phone(String business_phone) {
		this.business_phone = business_phone;
	}

	@Override
	public String toString() {
		return "Shop_re_name_phone [business_name=" + business_name + ", business_phone=" + business_phone + "]";
	}

}
