package com.kat.reservation;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.model.BreakdownListView;
import com.kat.seat.service.AddSeatService;

@Controller
public class ReservationBreakdownController {

	@Autowired
	private AddSeatService addSeatService;

	@RequestMapping("shopInfoSeat/breakdown.do")
	public ModelAndView breakdown(@RequestParam(name = "page", defaultValue = "1") int pageNumber, HttpServletRequest request) throws IllegalStateException, IOException {

		System.out.println("로그 Reservationbreakdown 컨트롤");
		ModelAndView modelAndView = new ModelAndView();
		
		String userid = (String) request.getSession(false).getAttribute("user_id"); // 로그인한 아이디 집어넣기
		
		BreakdownListView breakdown = addSeatService.getbreakdown(userid , pageNumber);
		
		modelAndView.setViewName("breakdown_main");
		modelAndView.addObject("Breakdown", breakdown);

		return modelAndView;
	}

}
