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

		dao = sqlSessionTemplate.getMapper(LoginDao.class);
		// 가입한 시간
		joinInfo.setCreate_date(new Date());

		dao.insertMember(joinInfo);

	}

	// 사업자 회원
	public void joinInsertBusiness(JoinInfo joinInfo) {

		dao = sqlSessionTemplate.getMapper(LoginDao.class);
		joinInfo.setCreate_date(new Date());

		System.out.println("사업자값 확인" + joinInfo);
		dao.insertMember(joinInfo);

		dao.insertBusiness(joinInfo);

	}

	// 아이디 비밀번호 일치 여부 확인
	public int loginidchk(String user_id, String user_pass) {

		dao = sqlSessionTemplate.getMapper(LoginDao.class);

		int result = 0;
		JoinInfoChk chk = dao.idChk(user_id);

		if (chk == null) {
			result = 1; // 아이디 없음
		} else if (!chk.matchPassword(user_pass)) {
			result = 2; // 비밀번호 불일치
		} else if (chk.getCategory().equals("member")) {
			result = 3; // 일반회원
		} else if (chk.getCategory().equals("business")) {
			result = 4; // 사업자회원
		}

		return result;

	}

	// 아이디 정보 값 가져오기
	public JoinInfo userInfo(String id) {
		dao = sqlSessionTemplate.getMapper(LoginDao.class);
		JoinInfo user_info = dao.userinfo(id);

		return user_info;
	}

	// 업데이트 할 사업자데이터 가져오기
	public JoinInfo getMyPageInfoView(String userid) {

		dao = sqlSessionTemplate.getMapper(LoginDao.class);
		JoinInfo infoview = dao.getMemberinfo(userid);

		return infoview;
	}

	// 업데이트 할 회원데이터 가져오기
	public JoinInfo getMyPageInfoView1(String userid) {

		dao = sqlSessionTemplate.getMapper(LoginDao.class);
		JoinInfo infoview = dao.getMemberinfo1(userid);

		return infoview;
	}

	// 비밀번호 변경
	public void update_pw(JoinInfo joinInfo) {
		dao = sqlSessionTemplate.getMapper(LoginDao.class);

		dao.update_pw(joinInfo);

	}

	// ajax id 중복체크
	public int ajaxchk_id(String id) {
		dao = sqlSessionTemplate.getMapper(LoginDao.class);
		int infochkid = dao.checkAjaxId(id);
		System.out.println("ajax 서비스 id= " + infochkid);
		return infochkid;

	}

	// ajax email 중복체크
	public int ajaxchk_email(String id) {
		dao = sqlSessionTemplate.getMapper(LoginDao.class);
		int infochkemail = dao.checkAjaxEmail(id);
		System.out.println("ajax 서비스 id= " + infochkemail);
		return infochkemail;

	}

	public int loginidchk_2(String userid, String user_pass) {
		dao = sqlSessionTemplate.getMapper(LoginDao.class);

		int result = 0;
		JoinInfoChk chk = dao.idChk(userid);

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
