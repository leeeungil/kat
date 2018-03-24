package com.kat.seat.dao;

import com.kat.seat.model.JoinInfo;
import com.kat.seat.model.JoinInfoChk;

public interface LoginDao {

	// 일반 회원가입
	public void insertMember(JoinInfo joinInfo);

	// 사업자 회원가입
	public void insertBusiness(JoinInfo joinInfo);

	// 아이디 체크
	public JoinInfoChk idChk(String user_id);

	// 회원정보 가져오기
	public JoinInfo userinfo(String id);

	// 수정할 데이터 가져오기
	public JoinInfo getMemberinfo(String userid);

	// 수정할 데이터 가져오기
	public JoinInfo getMemberinfo1(String userid);

	// 마이페이지 (수정)업데이트
	public void memberUpdate(JoinInfo joinInfo);

	public int businessUpdate(JoinInfo joinInfo);

	// 비밀번호 변경
	public int update_pw(JoinInfo joinInfo);

	// id ajax
	public int checkAjaxId(String id);

	// email ajax
	public int checkAjaxEmail(String id);

	public String ajaxemailid(String joinInfo);

	public String ajaxemailpw(String joinInfo);
}
