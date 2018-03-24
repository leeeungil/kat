package com.kat.login;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.model.JoinInfo;
import com.kat.seat.service.UpdateService;

@Controller
public class UpdateController {

	@Autowired
	private UpdateService updateService;

	@RequestMapping("kat/mypage/mypageUpdate.do")
	public ModelAndView listsubmit(JoinInfo joinInfo, HttpServletRequest request) throws IllegalStateException, IOException {

		ModelAndView modelAndView = new ModelAndView();

		String userid = (String) request.getSession(false).getAttribute("user_id"); // 로그인한 아이디 집어넣기
		joinInfo.setKat_id(userid);
		
		// 사업자, 일반 구분 데이터 가져오기
		JoinInfo info = updateService.getMyPageUpdateInfo1(userid);
		
		String category = info.getCategory();

		System.out.println("구분 가져오기" + category);

		if (category.equals("business")) {

			System.out.println("사업자용");
			updateService.businessUpdate(joinInfo);
			modelAndView.addObject("MypageUpdateSucess", joinInfo);
			modelAndView.addObject("category", category);

		} else if (category.equals("member")) {

			System.out.println("일반회원용");
			updateService.memberUpdate(joinInfo);
			modelAndView.addObject("MypageUpdateSucess", joinInfo);
			modelAndView.addObject("category", category);
		}

		
		System.out.println("값 확인" + joinInfo);

		modelAndView.setViewName("UpdateMypage_main");

		return modelAndView;

	}
}
