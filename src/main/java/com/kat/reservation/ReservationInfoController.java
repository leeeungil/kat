package com.kat.reservation;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.model.SeatInfo;
import com.kat.seat.service.AddSeatService;

@Controller
public class ReservationInfoController {

	@Autowired
	private AddSeatService addSeatService;

	@RequestMapping("shopInfoSeat/ReservationInfo.do")
	public ModelAndView RegisterChoose(@RequestParam(name = "shop") int shop, HttpServletRequest request)
			throws IllegalStateException, IOException {

		System.out.println("로그 ReservationInfo 컨트롤");
		System.out.println("shop값 " + shop);

		SeatInfo seatInfo = addSeatService.paymentView(shop); // 예약할 좌석 정보 가져오기
		ModelAndView modelAndView = new ModelAndView();

		System.out.println("선택된 좌석 정보" + seatInfo);	

		modelAndView.addObject("seatInfo", seatInfo);
		modelAndView.setViewName("ReservationInfo_main");

		return modelAndView;
	}

}
