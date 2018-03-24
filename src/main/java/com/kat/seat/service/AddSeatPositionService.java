package com.kat.seat.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kat.seat.dao.SeatPositionDao;

public class AddSeatPositionService {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	private SeatPositionDao dao;
	
	public void SeatPosition() {

	}
}
