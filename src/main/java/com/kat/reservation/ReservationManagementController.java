package com.kat.reservation;

import java.io.IOException;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.model.UpdateReservation;
import com.kat.seat.service.SeatReservationService;

@Controller
public class ReservationManagementController {

	@Autowired
	private SeatReservationService seatReservationService;

	@RequestMapping("kat/seat/reservation.do")
	public ModelAndView ReservationManagement(@RequestParam(name = "no") int no ,
			@RequestParam(name = "status") String status, UpdateReservation update)
			throws IllegalStateException, IOException {

		System.out.println("로그 reservationManagement 컨트롤");

		ModelAndView modelAndView = new ModelAndView();

		// 요기
		Date retime = seatReservationService.recentTime(no); // 최근 예약시간
		
		if (retime == null) {
			update.setFile_no(no);
			update.setSeat_status(status);

			seatReservationService.reservationUpdate(update);
			modelAndView.setViewName("redirect:/kat/seat/reservationList.do");
			
		} else {
			
			// 현재시간
			Date curDate = new Date();

			long reqDateTime = retime.getTime();
			long curDateTime = curDate.getTime();
			// 분으로 표현
			long minute = (curDateTime - reqDateTime) / 60000;
			System.out.println("요청시간 : " + retime);
			System.out.println("현재시간 : " + curDate);
			System.out.println(minute + "분 차이");

			// 임시로 1분 이후 예약 가능하게 설정
			if (minute >= 1) {
				
				update.setFile_no(no);
				update.setSeat_status(status);
				seatReservationService.reservationUpdate(update);
				modelAndView.setViewName("redirect:/kat/seat/reservationList.do");
				
			} else {
				
				System.out.println("예약불가");
				modelAndView.setViewName("/kat_exception/chkTime");
				
			}
			
		}
		


		return modelAndView;
	}

}
