package com.kat.seat.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kat.seat.dao.LoginDao;
import com.kat.seat.model.JoinInfo;

public class UpdateService {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	private LoginDao dao;

	// 회원 구분 값 가져오기
	public JoinInfo getMyPageUpdateInfo1(String userid) {

		dao = sqlSessionTemplate.getMapper(LoginDao.class);
		JoinInfo info1 = dao.getMemberinfo1(userid);

		return info1;
	}
	
    
	public JoinInfo getMyPageUpdateInfo(String userid) {

		dao = sqlSessionTemplate.getMapper(LoginDao.class);
		JoinInfo info1 = dao.getMemberinfo(userid);

		return info1;
	}

	// 일반회원 업데이트
	public void memberUpdate(JoinInfo joinInfo) {

		dao = sqlSessionTemplate.getMapper(LoginDao.class);
		dao.memberUpdate(joinInfo);

	}

	// 사업자 업데이트
	public void businessUpdate(JoinInfo joinInfo) {

		dao = sqlSessionTemplate.getMapper(LoginDao.class);

		dao.businessUpdate(joinInfo);

	}
	
	

}
