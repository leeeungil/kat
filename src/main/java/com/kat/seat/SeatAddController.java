package com.kat.seat;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.service.AddSeatService;

@Controller
@RequestMapping("kat/seatForm/seatAdd.do")
public class SeatAddController {

	@Autowired
	private AddSeatService addSeatService;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView productManageMenu(HttpServletRequest request) throws Exception {
		System.out.println("로그 SeatList 컨트롤");

		ModelAndView modelAndView = new ModelAndView();

		String userid = (String) request.getSession(false).getAttribute("user_id"); // 로그인한 아이디 집어넣기
		System.out.println("아이디 값 확인" + userid);

		modelAndView.setViewName("addSeat_main");
		return modelAndView;
	}
}
