package com.kat.seat.model;

public class JoinInfoBusiness {
	
	private int business_no; 
	private int member_no;
	private String business_name; //사업자명
	private String business_tel;  //사업자 전화번호
	private String business_phone; //사업자 핸드폰번호
	private String business_address; //사업자 주소
	private int business_number; //사업자 등록번호
	private String business_photo; //사업자(프로필사진)
	private int delete_flag;
	public int getBusiness_no() {
		return business_no;
	}
	public void setBusiness_no(int business_no) {
		this.business_no = business_no;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getBusiness_name() {
		return business_name;
	}
	public void setBusiness_name(String business_name) {
		this.business_name = business_name;
	}
	public String getBusiness_tel() {
		return business_tel;
	}
	public void setBusiness_tel(String business_tel) {
		this.business_tel = business_tel;
	}
	public String getBusiness_phone() {
		return business_phone;
	}
	public void setBusiness_phone(String business_phone) {
		this.business_phone = business_phone;
	}
	public String getBusiness_address() {
		return business_address;
	}
	public void setBusiness_address(String business_address) {
		this.business_address = business_address;
	}
	public int getBusiness_number() {
		return business_number;
	}
	public void setBusiness_number(int business_number) {
		this.business_number = business_number;
	}
	public String getBusiness_photo() {
		return business_photo;
	}
	public void setBusiness_photo(String business_photo) {
		this.business_photo = business_photo;
	}
	public int getDelete_flag() {
		return delete_flag;
	}
	public void setDelete_flag(int delete_flag) {
		this.delete_flag = delete_flag;
	}
	@Override
	public String toString() {
		return "JoinInfoBusiness [business_no=" + business_no + ", member_no=" + member_no + ", business_name="
				+ business_name + ", business_tel=" + business_tel + ", business_phone=" + business_phone
				+ ", business_address=" + business_address + ", business_number=" + business_number
				+ ", business_photo=" + business_photo + ", delete_flag=" + delete_flag + "]";
	}
	
	
}
