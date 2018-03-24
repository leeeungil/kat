package com.kat.reservation;

import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.mail.ReservationMail;
import com.kat.seat.model.SeatInfo;
import com.kat.seat.model.Shop_re_name_phone;
import com.kat.seat.model.UserReInfo;
import com.kat.seat.service.AddSeatService;

@Controller
public class ReservationSucessController {

	@Autowired
	private AddSeatService addSeatService;
	
	@Autowired
	private ReservationMail reservationMail;

	@RequestMapping("shopInfoSeat/ReservationSucess.do")
	public ModelAndView ReservationSucess(@RequestParam(name = "seat") int seat, HttpServletRequest request)
			throws IllegalStateException, IOException {

		ModelAndView modelAndView = new ModelAndView();

		System.out.println("로그 ReservationSucess 컨트롤");

		String userid = (String) request.getSession(false).getAttribute("user_id"); // 로그인한 아이디로 예약

		int chk = addSeatService.chkReservation_id(seat); // 예약 상태 확인후 비어있으면 1 반환

		System.out.println("서비스 chk 체크" + chk);

		// 예약 상태가 비어있어있는지 한번더 확인
		if (chk == 1) {

			addSeatService.seatReservationSucess(userid, seat); // 예약 실행
			SeatInfo seatInfo = addSeatService.InfoReservationSeat(seat); //예약한 정보 가져오기
			
			UserReInfo userReInfo = new UserReInfo(); // 예약자 예약정보 객체 생성
			Shop_re_name_phone name_phone = new Shop_re_name_phone();
			System.out.println("seatInfo 정보" + seatInfo);
			
			int file_no = seatInfo.getFile_no();
			int file_seat = seatInfo.getFile_seat();
			String shop_id =  seatInfo.getUser_id();
			name_phone = addSeatService.shopName(shop_id); // 매장 이름 가져오기
			String user_email = addSeatService.userEmail(userid); // 접속자 이메일 가져오기
			
			userReInfo.setFile_no(file_no);
			userReInfo.setFile_seat(file_seat);
			userReInfo.setShop_id(shop_id);
			userReInfo.setShop_re_time(new Date());
			userReInfo.setUser_id(userid);
			userReInfo.setShop_name(name_phone.getBusiness_name());
			userReInfo.setShop_phone(name_phone.getBusiness_phone());
			
			addSeatService.setRe_user(userReInfo); //예약자 테이블에 정보 넣기	
			
			modelAndView.addObject("Re_seatInfo", seatInfo);
			modelAndView.addObject("Re_time", userReInfo.getShop_re_time());
			
			modelAndView.setViewName("ReservationSucess_main");
			
			reservationMail.sendMail(userReInfo, user_email); //예약내역 메일 전송 막아놈

		} else {

			modelAndView.setViewName("/kat_exception/sucessFail"); // 예약 실패시

		}

		return modelAndView;
	}

}
