package com.kat.seat.model;

import java.util.Date;

public class JoinInfo {
	private int member_no; // 회원 번호
	private int member_type; //회원 타입
	private String name; // 회원 이름
	private String email; //이메일
	private String password; //비밀번호
	private String phone; //전화번호
	private Date create_date; //가입일자
	private int delete_flag;
	private String user_id;
	
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public int getMember_type() {
		return member_type;
	}
	public void setMember_type(int member_type) {
		this.member_type = member_type;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
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
		return "JoinInfo [member_no=" + member_no + ", member_type=" + member_type + ", name=" + name + ", email="
				+ email + ", password=" + password + ", phone=" + phone + ", create_date=" + create_date
				+ ", delete_flag=" + delete_flag + ", user_id=" + user_id + "]";
	}
	
	
}
