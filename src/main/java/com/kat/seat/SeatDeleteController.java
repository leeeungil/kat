package com.kat.seat;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.service.AddSeatService;

@Controller
public class SeatDeleteController {

	@Autowired
	private AddSeatService addSeatService;

	@RequestMapping("kat/seatForm/seatDelete.do")
	public ModelAndView deleteSubmit(@RequestParam(name = "no") int no,
			@RequestParam(name = "seatphoto") String seatphoto, HttpServletRequest request)
			throws IllegalStateException, IOException {

		System.out.println("로그 SeatDelete 컨트롤");

		ModelAndView modelAndView = new ModelAndView();
		
		// 현재 좌석이 예약이 비어있는지 확인후 삭제
		String seatEmpty = addSeatService.seatEmpty(no);

		if (seatEmpty.equals("비어있음")) {
			
			addSeatService.seatdelete(no);
			modelAndView.setViewName("redirect:/kat/seatForm/seatAdd.do");

		} else {
			
			modelAndView.setViewName("/kat_exception/deleteEmpty");
		}

		return modelAndView;
	}
}
