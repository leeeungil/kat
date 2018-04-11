package com.kat.reserv.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kat.reserv.dao.ReservDao;
import com.kat.reserv.model.ReservCountModel;

@Service
public class ReservService {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	private ReservDao dao;

	// 카테고리 가져오기
	public List<ReservCountModel> selectReservList(int product_no) {
System.out.println("[ReservService selectReservList] SELECT RESERV LIST ACCESS");
System.out.println("[ReservService selectReservList] product_no : " + product_no );
		dao = sqlSessionTemplate.getMapper(ReservDao.class);
		List<ReservCountModel> reservCountList = dao.selectReservList(product_no);
System.out.println("[ReservService selectReservList] MAPPER(selectProductType, selectContinent, selectCountry, selectCiy) RETURN");
System.out.println("[ReservService selectReservList] " + reservCountList.size());
		return reservCountList;
	}
}
