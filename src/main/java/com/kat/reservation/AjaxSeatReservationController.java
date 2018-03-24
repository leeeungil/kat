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
public class AjaxSeatReservationController {

	public static int soundnum;
	public static int soundclose;

	@Autowired
	private SeatReservationService seatReservationService;

	@RequestMapping("kat/seat/AjaxreservationList.do")
	public ModelAndView ReservationList(@RequestParam(name = "page", defaultValue = "1") int pageNumber,
			HttpServletRequest request) throws IllegalStateException, IOException {

		System.out.println("로그 ajax 사업자 컨트롤");

		ModelAndView modelAndView = new ModelAndView();

		String userid = (String) request.getSession(false).getAttribute("user_id"); // 로그인한 아이디 집어넣기

		SeatInfoListView seatInfoListView = seatReservationService.getSeatList(userid, pageNumber); // 리스트 구현

		int seatR_size = seatReservationService.getseatR_size(userid); // 예약소리 체크를 위한 메소드
		int seatR_close = seatReservationService.getseatR_close(userid); // 좌석 예약닫기로 했는지 확인 메소드
		
		System.out.println("비어있는 개수 가져오기 감소되면 예약되는거임" + seatR_close);

		System.out.println("예약가능 몇개인지 확인" + seatR_size);

		
		// 좌석 예약소리 체크
		if (seatR_close < soundclose) {
				modelAndView.addObject("sound", "sound1.mp3");
				soundclose = seatR_close;
				System.out.println("예약하면 = " + soundclose);
			} else {
				modelAndView.addObject("sound", "");
				soundclose = seatR_close;
				System.out.println("평소 = " + soundclose);
			}
		
		
		
		
		
/*			if (seatR_size < soundnum) {
				modelAndView.addObject("sound", "sound1.mp3");
				soundnum = seatR_size;
				System.out.println("들어가냐?" + soundnum);
			} else {
				modelAndView.addObject("sound", "");
				soundnum = seatR_size;
			}*/
			
		

		
		modelAndView.setViewName("kat_shopView/AjaxListSeatReservation");
		modelAndView.addObject("SeatListInfo", seatInfoListView);
		modelAndView.addObject("cp", pageNumber);

		return modelAndView;
	}

}
