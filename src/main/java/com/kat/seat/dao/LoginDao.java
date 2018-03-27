package com.kat.seat.dao;

import com.kat.seat.model.JoinInfo;
import com.kat.seat.model.JoinInfoBusiness;
import com.kat.seat.model.JoinInfoChk;

public interface LoginDao {

	// 일반 회원가입
	public void insertMember(JoinInfo joinInfo);

	// 사업자 회원가입
	public void insertBusiness(JoinInfoBusiness joinInfoBusiness);


	// 회원정보 가져오기
	public JoinInfo userinfo(String user_id);

	// 수정할 데이터 가져오기
	public JoinInfo getMemberinfo(String user_id);

	// 수정할 데이터 가져오기
	public JoinInfo getMemberinfo1(String user_id);

	// 마이페이지 (수정)업데이트
	public void memberUpdate(JoinInfo joinInfo);

	public int businessUpdate(JoinInfo joinInfo);

	// 비밀번호 변경
	public int update_pw(JoinInfo joinInfo);
	
	public String ajaxemailid(String joinInfo);
	
	public String ajaxemailpw(String joinInfo);

	
	// 정리한 메소드들
	// 로그인 체크
	public JoinInfoChk login_member(String user_id);
	public JoinInfoChk login_business(String user_id);

	// ajax : id duplicate chk
	public int chkMemberId(String user_id);
	public int chkBusinessId(String user_id);
	
	// ajax : email duplicate chk
	public int chkMemberEmail(String email);
	public int chkBusinessEmail(String email);
}
