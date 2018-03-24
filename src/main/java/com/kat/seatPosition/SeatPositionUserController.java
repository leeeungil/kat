package com.kat.seatPosition;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.service.AddSeatService;

@Controller
public class SeatPositionUserController {

	@Autowired
	private AddSeatService addSeatService; // 좌석 사진 가져오기

	@RequestMapping("kat/seatPosition/seatRegisterUser.do")
	public ModelAndView getUploadForm(HttpServletRequest request) throws IllegalStateException, IOException {

		System.out.println("로그 seatRegisterUser 컨트롤");

		ModelAndView modelAndView = new ModelAndView();

		String userid = (String) request.getSession(false).getAttribute("user_id"); // 로그인한 아이디 집어넣기
		
		String chknull = addSeatService.Position(userid);
		
		if (chknull != null) {
			modelAndView.addObject("SeatListPhotoUser", chknull);
		}

		modelAndView.setViewName("positionSeatUser_main");
		return modelAndView;

	}

}
