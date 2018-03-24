package com.kat.reservation;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.model.UserBreakdownListView;
import com.kat.seat.service.AddSeatService;

@Controller
public class UserReservationBreakdownController {

	@Autowired
	private AddSeatService addSeatService;

	@RequestMapping("shopInfoSeat/userbreakdown.do")
	public ModelAndView userbreakdown(@RequestParam(name = "page", defaultValue = "1") int pageNumber,
			HttpServletRequest request) throws IllegalStateException, IOException {

		System.out.println("로그 UserReservationbreakdown 컨트롤");
		ModelAndView modelAndView = new ModelAndView();

		String userid = (String) request.getSession(false).getAttribute("user_id"); // 로그인한 아이디 집어넣기
		UserBreakdownListView userbreakdown = addSeatService.getUserbreakdown(userid, pageNumber);

		modelAndView.setViewName("userbreakdown_main");
		modelAndView.addObject("UserBreakdown", userbreakdown);

		return modelAndView;
	}

}
