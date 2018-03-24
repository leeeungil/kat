package com.kat.seat.model;

public class JoinInfoChk {

	// 아이디 비밀번호 체크
	private int company_no; // 회원 번호
	private String kat_id; // 회원 아이디
	private String kat_password1; // 회원 비밀번호
	private String category; // 회원분류 체크

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

	public String getKat_password1() {
		return kat_password1;
	}

	public void setKat_password1(String kat_password1) {
		this.kat_password1 = kat_password1;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	// 비밀번호 일치여부 확인
	public boolean matchPassword(String user_pass) {
		return kat_password1.equals(user_pass);
	}
	
	@Override
	public String toString() {
		return "JoinInfoChk [company_no=" + company_no + ", kat_id=" + kat_id + ", kat_password1="
				+ kat_password1 + ", category=" + category + "]";
	}

}
