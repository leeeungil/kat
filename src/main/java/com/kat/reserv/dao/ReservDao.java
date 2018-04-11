package com.kat.reserv.dao;

import java.util.List;

import com.kat.reserv.model.ReservCountModel;

public interface ReservDao {
	public List<ReservCountModel> selectReservList(int product_no);
}
