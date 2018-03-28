package com.kat.seatPosition;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.service.AddSeatService;

@Controller
@RequestMapping("kat/seatPosition/seatRegister.do")
public class SeatPositionController {

	@Autowired
	private AddSeatService addSeatService; // 좌석 사진 가져오기

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView getUploadForm(HttpServletRequest request) throws IllegalStateException, IOException {

		System.out.println("로그 SeatList 컨트롤");

		ModelAndView modelAndView = new ModelAndView();

		String userid = (String) request.getSession(false).getAttribute("user_id"); // 로그인한 아이디 집어넣기

		/*SeatInfoListView seatListPhoto = addSeatService.getSeatListall(userid);*/ // 리스트 구현  //2018.03.28 이은길주석처리

		/*System.out.println(seatListPhoto);*/ // seat 데이터 출력  //2018.03.28 이은길주석처리

		modelAndView.setViewName("positionSeat_main"); 
		/*modelAndView.addObject("SeatListPhoto", seatListPhoto);*/  //2018.03.28 이은길주석처리
		return modelAndView;

	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView addSeatSubmit(@RequestParam(name = "htmlfilevalue") String htmlfilevalue,
			HttpServletRequest request) throws IllegalStateException, IOException {

		System.out.println("html 생성 컨트롤");

		String userid = (String) request.getSession(false).getAttribute("user_id"); // 로그인한 아이디 집어넣기
		String uploadURI = "/uploadfile/position";
		String dir = request.getSession().getServletContext().getRealPath(uploadURI);
		System.out.println("html 저장되는 주소" + dir);

		String chknull = addSeatService.Position(userid);

		if (chknull == null) {
			try {
				FileWriter fw = new FileWriter(dir + "/" + userid + ".html"); // 이경로 파일 저장
				BufferedWriter bw = new BufferedWriter(fw);
				String str = htmlfilevalue;

				bw.write(str);
				bw.newLine(); // 줄바꿈

				bw.close();

				addSeatService.insertPosition(userid);
			} catch (IOException e) {
				System.err.println(e); // 에러가 있다면 메시지 출력
				System.exit(1);
			}
		} else {
			FileWriter fw = new FileWriter(dir + "/" + userid + ".html"); // 이경로 파일 저장
			BufferedWriter bw = new BufferedWriter(fw);
			String str = htmlfilevalue;

			bw.write(str);
			bw.newLine(); // 줄바꿈

			bw.close();
		}
		
		System.out.println("html 이름 및 존재여부" + chknull);

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:/kat/seatPosition/seatRegisterUser.do");

		return modelAndView;
	}

}
