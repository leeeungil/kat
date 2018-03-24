package com.kat.seat;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.model.SeatInfo;
import com.kat.seat.model.SeatInfoListView;
import com.kat.seat.service.AddSeatService;

@Controller
@RequestMapping("kat/seatForm/seatAdd.do")
public class SeatAddController {

	@Autowired
	private AddSeatService addSeatService;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView getUploadForm(@RequestParam(name = "page", defaultValue = "1") int pageNumber,
			HttpServletRequest request) throws IllegalStateException, IOException {

		System.out.println("로그 SeatList 컨트롤");

		ModelAndView modelAndView = new ModelAndView();

		String userid = (String) request.getSession(false).getAttribute("user_id"); // 로그인한 아이디 집어넣기

		System.out.println("아이디 값 확인" + userid);

		SeatInfoListView seatInfoListView = addSeatService.getSeatList(userid, pageNumber); // 리스트 구현

		System.out.println(seatInfoListView); // seat 데이터 출력

		modelAndView.setViewName("addSeat_main");
		modelAndView.addObject("SeatListInfo", seatInfoListView);

		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView addSeatSubmit(SeatInfo seatInfo, MultipartHttpServletRequest request)
			throws IllegalStateException, IOException {

		System.out.println("로그 SeatAdd 컨트롤");

		ModelAndView modelAndView = new ModelAndView();

		String userid = (String) request.getSession(false).getAttribute("user_id"); // 로그인한 아이디 집어넣기

		seatInfo.setCreate_date(new Date());
		seatInfo.setUser_id(userid);
		seatInfo.setSeat_status("예약불가");
		seatInfo.setReservation_id("비어있음");
		seatInfo.setDelete_seat("사용");

		long time = System.currentTimeMillis(); // 현재시간 주기

		/* 업로드 폴더 시스템 물리적 경로 찾기 */
		String uploadURI = "/uploadfile/memberphoto";
		String dir = request.getSession().getServletContext().getRealPath(uploadURI);
		System.out.println(dir);

		// 업로드 파일의 물리적 저장
		if (!seatInfo.getSeatPhotoFile().isEmpty()) {
			seatInfo.getSeatPhotoFile().transferTo(new File(dir, userid + "_seat_" + time));
			seatInfo.setFile_seatphoto(userid + "_seat_" + time);
		}
		addSeatService.addSeat(seatInfo); // 좌석 정보넣기

		modelAndView.setViewName("redirect:/kat/seatForm/seatAdd.do");

		return modelAndView;
	}

}
