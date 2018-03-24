package com.kat.seat;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.model.SeatInfo;
import com.kat.seat.service.AddSeatService;

@Controller
public class SeatInfoUpdateController {

	@Autowired
	private AddSeatService addSeatService;

	@RequestMapping("kat/seatForm/infoUpdate.do")
	public ModelAndView seatUpdatSubmit(@RequestParam(name = "no") int no) throws IllegalStateException, IOException {

		System.out.println("로그 SeatInfoUpdate 컨트롤");
		
		// 업데이트 할 데이터 가져오기
		SeatInfo seatInfo = addSeatService.getseatUpdateInfo(no);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("updateSeatInfo_main");
		modelAndView.addObject("SeatInfoUpdate", seatInfo);

		return modelAndView;
	}
}
