package com.kat.reservation;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.model.SeatInfoListView;
import com.kat.seat.service.AddSeatService;

@Controller
public class AjaxController {

	@Autowired
	private AddSeatService addSeatService;

	@RequestMapping("shopInfoSeat/AjaxController.do")
	public ModelAndView RegisterChoose(@RequestParam(name = "shop") String shop, HttpServletRequest request)
			throws IllegalStateException, IOException {
	
		System.out.println("로그 ajax 실행중");
		ModelAndView modelAndView = new ModelAndView();

		SeatInfoListView seatInfoListView = addSeatService.SeatListView(shop); // 리스트 구현
		
		modelAndView.addObject("SeatListInfo", seatInfoListView);

		modelAndView.setViewName("kat_shopView/AjaxListView");

		return modelAndView;
	}

}
