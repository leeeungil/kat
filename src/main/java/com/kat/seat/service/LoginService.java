package com.kat.seat.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kat.seat.dao.LoginDao;
import com.kat.seat.model.JoinInfo;
import com.kat.seat.model.JoinInfoBusiness;
import com.kat.seat.model.JoinInfoChk;

public class LoginService {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	private LoginDao dao;
	
	// 일반 회원
	public void joinInsert(JoinInfo joinInfo) {
System.out.println("[LoginService joinInsert] GENERAL MEMBER REGISTRATION ACCESS");
System.out.println("[LoginService joinInsert] joinInfo : " + joinInfo.toString());
		dao = sqlSessionTemplate.getMapper(LoginDao.class);
		dao.insertMember(joinInfo);
System.out.println("[LoginService joinInsert] MAPPER(insertMember) FINISH");
	}

	// 사업자 회원
	public void joinInsertBusiness(JoinInfoBusiness joinInfoBusiness) {
System.out.println("[LoginService joinInsertBusiness] BUSINESS MEMBER REGISTRATION ACCESS");
System.out.println("[LoginService joinInsertBusiness] " + joinInfoBusiness.toString());
		dao = sqlSessionTemplate.getMapper(LoginDao.class);
System.out.println("[LoginService joinInsertBusiness] " + joinInfoBusiness);
		dao.insertBusiness(joinInfoBusiness);
System.out.println("[LoginService joinInsert] MAPPER(insertBusiness) FINISH");
	}

	// 일반 회원 아이디 비밀번호 일치 여부 확인
	public int login_member(String user_id, String user_pass) {
System.out.println("[LoginService login_member] PASSWORD CHECK ACCESS");
System.out.println("[LoginService login_member] user_id : " + user_id);
System.out.println("[LoginService login_member] user_pass : " + user_pass);
		int result = 0;
		dao = sqlSessionTemplate.getMapper(LoginDao.class);
		JoinInfoChk joinInfoChk = dao.login_member(user_id);
System.out.println("[LoginService login_member] MAPPER(login_member) RETURN");
if(joinInfoChk!=null) System.out.println("[LoginService login_member] " + joinInfoChk.toString());
else System.out.println("[LoginService login_member] joinInfoChk NULL");
		
		if(joinInfoChk==null) result = 1;
		else if (!joinInfoChk.getPassword().equals(user_pass)) result = 2; // 비밀번호 불일치
		else result = 3; // 사업자회원
System.out.println("[LoginService loginidchk] loginResult : " + result);
		return result;
	}
	
	// 사업자 회원 아이디 비밀번호 일치 여부 확인
	public int login_business(String user_id, String user_pass) {
System.out.println("[LoginService login_business] PASSWORD CHECK ACCESS");
System.out.println("[LoginService login_business] user_id : " + user_id);
System.out.println("[LoginService login_business] user_pass : " + user_pass);
		int result = 0;
		dao = sqlSessionTemplate.getMapper(LoginDao.class);
		JoinInfoChk joinInfoChk = dao.login_business(user_id);
System.out.println("[LoginService login_business] MAPPER(login_business) RETURN");
if(joinInfoChk!=null) System.out.println("[LoginService login_business] " + joinInfoChk.toString());
else System.out.println("[LoginService login_business] joinInfoChk NULL");
		
		if(joinInfoChk==null) result = 1;
		else if (!joinInfoChk.getPassword().equals(user_pass)) result = 2; // 비밀번호 불일치
		else result = 4; // 사업자회원
System.out.println("[LoginService login_business] loginResult : " + result);
		return result;
	}

	// 아이디 정보 값 가져오기
	public JoinInfo userInfo(String user_id) {
System.out.println("[LoginService userInfo] GET PERSONAL INFOMATION ACCESS");
System.out.println("[LoginService userInfo] user_id : " + user_id);
		dao = sqlSessionTemplate.getMapper(LoginDao.class);
		JoinInfo user_info = dao.userinfo(user_id);
System.out.println("[LoginService userInfo] MAPPER(userinfo) RETURN");
System.out.println("[LoginService userInfo] " + user_info.toString());
		return user_info;
	}

	// 업데이트 대상 사업자 정보 가져오기
	public JoinInfo getMyPageInfoView(String user_id) {
System.out.println("[LoginService getMyPageInfoView] UPDATE BUSINESS TARGET ACCESS");
System.out.println("[LoginService getMyPageInfoView] user_id : " + user_id);
		dao = sqlSessionTemplate.getMapper(LoginDao.class);
		JoinInfo infoview = dao.getMemberinfo(user_id);
System.out.println("[LoginService getMyPageInfoView] MAPPER(getMemberinfo) RETURN");
System.out.println("[LoginService getMyPageInfoView] " + infoview.toString());
		return infoview;
	}

	// 업데이트 대상 회원 정보 가져오기
	public JoinInfo getMyPageInfoView1(String user_id) {
System.out.println("[LoginService getMyPageInfoView1] UPDATE MEMBER TARGET ACCESS");
System.out.println("[LoginService getMyPageInfoView1] user_id : " + user_id);
		dao = sqlSessionTemplate.getMapper(LoginDao.class);
		JoinInfo infoview = dao.getMemberinfo1(user_id);
System.out.println("[LoginService getMyPageInfoView1] MAPPER(getMemberinfo1) RETURN");
System.out.println("[LoginService getMyPageInfoView1] " + infoview.toString());
		return infoview;
	}

	// 비밀번호 변경
	public void update_pw(JoinInfo joinInfo) {
System.out.println("[LoginService update_pw] CHANGE PASSWORD ACCESS");
System.out.println("[LoginService update_pw] joinInfo : " + joinInfo.toString());
		dao = sqlSessionTemplate.getMapper(LoginDao.class);
		dao.update_pw(joinInfo);
System.out.println("[LoginService update_pw] MAPPER(update_pw) FINISH");
	}

	// ajax id 중복체크
	public int ajaxchk_id(String user_id) {
System.out.println("[LoginService ajaxchk_id] ID DUPLICATION CHECK ACCESS");
System.out.println("[LoginService ajaxchk_id] user_id : " + user_id);
		dao = sqlSessionTemplate.getMapper(LoginDao.class);
		int infoChkId = dao.chkMemberId(user_id);
System.out.println("[LoginService ajaxchk_id] MAPPER(checkAjaxId) RETURN");
System.out.println("[LoginService ajaxchk_id] infoChkId : " + infoChkId);
		if(infoChkId==0) {
			infoChkId = dao.chkBusinessId(user_id);
System.out.println("[LoginService ajaxchk_id] MAPPER(checkAjaxId2) RETURN");
System.out.println("[LoginService ajaxchk_id] infoChkId : " + infoChkId);
		}
		return infoChkId;
	}

	// ajax email 중복체크
	public int ajaxchk_email(String email) {
System.out.println("[LoginService ajaxchk_email] EMAIL DUPLICATION CHECK ACCESS");
System.out.println("[LoginService ajaxchk_email] email : " + email);
		dao = sqlSessionTemplate.getMapper(LoginDao.class);
		int infoChkEmail = dao.chkMemberEmail(email);
System.out.println("[LoginService ajaxchk_email] MAPPER(checkAjaxEmail) RETURN");
System.out.println("[LoginService ajaxchk_email] infoChkEmail : " + infoChkEmail);
		if(infoChkEmail==0) {
			infoChkEmail = dao.chkBusinessEmail(email);
System.out.println("[LoginService ajaxchk_id] MAPPER(checkAjaxId2) RETURN");
System.out.println("[LoginService ajaxchk_id] infoChkId : " + infoChkEmail);
		}
		return infoChkEmail;
	}

	public int loginidchk_2(String user_id, String user_pass) {
		dao = sqlSessionTemplate.getMapper(LoginDao.class);

		int result = 0;
		JoinInfoChk chk = dao.login_member(user_id);

		if (chk == null) {
			result = 1; // 아이디 없음
		} else if (!chk.matchPassword(user_pass)) {
			result = 2; // 비밀번호 불일치
		}
		return result;
	}

	public String ajax_idfind(String joinInfo) {
		dao = sqlSessionTemplate.getMapper(LoginDao.class);
		String infoidfind = dao.ajaxemailid(joinInfo);
		System.out.println("ajax db 값= " + infoidfind);

		return infoidfind;
	}

	public String ajax_pwfind(String joinInfo) {
		dao = sqlSessionTemplate.getMapper(LoginDao.class);
		String infoidfind1 = dao.ajaxemailpw(joinInfo);
		System.out.println("ajax db 값= " + infoidfind1);

		return infoidfind1;
	}
}
