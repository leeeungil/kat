package com.kat.reserv.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kat.reserv.model.ReservCountModel;
import com.kat.reserv.service.ReservService;

@Controller
@RequestMapping("reserv")
public class ReservController {

	@Autowired
	private ReservService reservService;
	
	/* 유저 아이디로 검색 */
	@RequestMapping(value ="selectReservList", produces = "application/json; charset=utf8")
	@ResponseBody
	public List<ReservCountModel> selectReservList(ReservCountModel reservCountModel, HttpServletRequest request) throws Exception {
System.out.println("[ReservController selectReservList] SELECT RESERV LIST ACCESS");
		List<ReservCountModel> reservCountList = reservService.selectReservList(reservCountModel.getProduct_no());
System.out.println("=============================================================");
		return reservCountList;
	}
}
