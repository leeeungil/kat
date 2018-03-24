package com.kat.seat.model;

public class JoinInfoChk {

	// 아이디 비밀번호 체크
	private int member_no; // 회원 번호
	private String user_id; // 회원 아이디
	private String password; // 회원 비밀번호
	private String level; // 회원분류 체크
	
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}

	// 비밀번호 일치여부 확인
	public boolean matchPassword(String user_pass) {
		return password.equals(user_pass);
	}
	
	@Override
	public String toString() {
		return "JoinInfoChk [member_no=" + member_no + ", user_id=" + user_id + ", password=" + password + ", level="
				+ level + "]";
	}
}
