package com.kat.login;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.model.JoinInfo;
import com.kat.seat.service.LoginService;

@Controller
public class JoinFormInsertController {

	@Autowired
	private LoginService loginService;

	@RequestMapping("kat/join/joinFormInsert.do")
	public ModelAndView joinFormInsert(JoinInfo joinInfo) throws IllegalStateException, IOException {

		System.out.println("로그 joinFormInsert 컨트롤");

		System.out.println("category 확인 = " + joinInfo);

		String category = joinInfo.getCategory();
		joinInfo.setUser_chk(1); // 회원 사용 여부 1

		ModelAndView modelAndView = new ModelAndView();
		
		try {
			if (category.equals("member")) {
				loginService.joinInsert(joinInfo);
			}

			if (category.equals("business")) {
				loginService.joinInsertBusiness(joinInfo);
			}

			modelAndView.addObject("joinName", joinInfo);
			modelAndView.setViewName("joinSucess_main");

		} catch (Exception e) {

			modelAndView.setViewName("/kat_exception/exception");
		}

		return modelAndView;

	}

}
