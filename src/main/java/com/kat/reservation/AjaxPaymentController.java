package com.kat.reservation;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.service.AddSeatService;

@Controller
public class AjaxPaymentController {

	@Autowired
	private AddSeatService addSeatService;

	@RequestMapping("shopInfoSeat/AjaxpaymentController.do")
	public ModelAndView RegisterChoose(@RequestParam(name = "seatno") int seatno, HttpServletRequest request)
			throws IllegalStateException, IOException {

		System.out.println("로그 Ajax payment 컨트롤");

		int resultcod = addSeatService.getseatpayment(seatno);

		ModelAndView modelAndView = new ModelAndView();
		System.out.println(resultcod);
		
		if (resultcod == 3) {
			modelAndView.setViewName("/kat_exception/exception"); // 오류났을때
		} else {
			modelAndView.addObject("Resultcod", resultcod);
			modelAndView.setViewName("kat_Reservation/ajaxresultcod");
		}

		return modelAndView;
	}

}
