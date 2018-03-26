package com.kat.seat.model;

public class JoinInfo {
	private int member_no; // 회원 번호
	private String user_id; // 회원 아이디
	private String name; // 회원 이름
	private String password; // 회원 비밀번호
	private String phone; // 회원 전화번호
	private String email; // 회원 이메일
	private String create_date; // 가입 일자 
	private int delete_flag; // 회원 구분
	
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
		return "JoinInfo [member_no=" + member_no + ", user_id=" + user_id + ", name=" + name + ", password=" + password
				+ ", phone=" + phone + ", email=" + email + ", create_date=" + create_date + ", delete_flag="
				+ delete_flag + "]";
	}
}
