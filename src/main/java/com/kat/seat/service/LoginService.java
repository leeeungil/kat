package com.kat.seat.service;

import java.util.Date;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kat.seat.dao.LoginDao;
import com.kat.seat.model.JoinInfo;
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
		joinInfo.setCreate_date(new Date());
		dao.insertMember(joinInfo);
System.out.println("[LoginService joinInsert] MAPPER(insertMember) FINISH");
	}

	// 사업자 회원
	public void joinInsertBusiness(JoinInfo joinInfo) {
System.out.println("[LoginService joinInsertBusiness] BUSINESS MEMBER REGISTRATION ACCESS");
System.out.println("[LoginService joinInsertBusiness] " + joinInfo.toString());
		dao = sqlSessionTemplate.getMapper(LoginDao.class);
System.out.println("[LoginService joinInsertBusiness] " + joinInfo);
        joinInfo.setCreate_date(new Date());
		dao.insertMember(joinInfo);
System.out.println("[LoginService joinInsert] MAPPER(insertMember) FINISH");
		dao.insertBusiness(joinInfo);
System.out.println("[LoginService joinInsert] MAPPER(insertBusiness) FINISH");
	}

	// 아이디 비밀번호 일치 여부 확인
	public int loginidchk(String user_id, String user_pass) {
System.out.println("[LoginService loginidchk] PASSWORD CHECK ACCESS");
System.out.println("[LoginService loginidchk] user_id : " + user_id);
System.out.println("[LoginService loginidchk] user_pass : " + user_pass);
		dao = sqlSessionTemplate.getMapper(LoginDao.class);
		int result = 0;
		JoinInfoChk joinInfoChk = dao.idChk(user_id);
System.out.println("[LoginService loginidchk] MAPPER(idChk) RETURN");
System.out.println("[LoginService loginidchk] " + joinInfoChk.toString());
		if (!joinInfoChk.getPassword().equals(user_pass)) {
			result = 2; // 비밀번호 불일치
		} else if (joinInfoChk.getLevel().equals("1")) {
			result = 3; // 일반회원
		} else if (joinInfoChk.getLevel().equals("2")) {
			result = 4; // 사업자회원
		}
System.out.println("[LoginService loginidchk] loginResult : " + result);
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
		int infoChkId = dao.checkAjaxId(user_id);
System.out.println("[LoginService ajaxchk_id] MAPPER(checkAjaxId) RETURN");
System.out.println("[LoginService ajaxchk_id] infoChkId : " + infoChkId);
		return infoChkId;
	}

	// ajax email 중복체크
	public int ajaxchk_email(String user_id) {
System.out.println("[LoginService ajaxchk_email] EMAIL DUPLICATION CHECK ACCESS");
System.out.println("[LoginService ajaxchk_email] user_id : " + user_id);
		dao = sqlSessionTemplate.getMapper(LoginDao.class);
		int infoChkEmail = dao.checkAjaxEmail(user_id);
System.out.println("[LoginService ajaxchk_email] MAPPER(checkAjaxEmail) RETURN");
System.out.println("[LoginService ajaxchk_email] infoChkEmail : " + infoChkEmail);
		return infoChkEmail;
	}

	public int loginidchk_2(String user_id, String user_pass) {
		dao = sqlSessionTemplate.getMapper(LoginDao.class);

		int result = 0;
		JoinInfoChk chk = dao.idChk(user_id);

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
