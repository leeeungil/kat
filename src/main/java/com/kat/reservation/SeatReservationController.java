package com.kat.reservation;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.model.SeatInfoListView;
import com.kat.seat.service.SeatReservationService;

@Controller
public class SeatReservationController {

	@Autowired
	private SeatReservationService seatReservationService;

	@RequestMapping("kat/seat/reservationList.do")
	public ModelAndView ReservationList(@RequestParam(name = "page", defaultValue = "1") int pageNumber,
			HttpServletRequest request) throws IllegalStateException, IOException {

		System.out.println("로그 SeatReservation 컨트롤");

		ModelAndView modelAndView = new ModelAndView();

		String userid = (String) request.getSession(false).getAttribute("user_id"); // 로그인한 아이디 집어넣기

		SeatInfoListView seatInfoListView = seatReservationService.getSeatList(userid, pageNumber); // 리스트 구현

		modelAndView.setViewName("seatReservation_main");
		modelAndView.addObject("SeatListInfo", seatInfoListView);
		modelAndView.addObject("cp", pageNumber);

		return modelAndView;
	}

}
