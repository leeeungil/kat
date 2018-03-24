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

		String level = joinInfo.getLevel();
		ModelAndView modelAndView = new ModelAndView();
		
		try {
			if (level.equals("1")) loginService.joinInsert(joinInfo);
			else if (level.equals("2")) loginService.joinInsertBusiness(joinInfo);

			modelAndView.addObject("joinName", joinInfo);
			modelAndView.setViewName("joinSucess_main");
		} catch (Exception e) {
			modelAndView.setViewName("/kat_exception/exception");
		}
		return modelAndView;
	}
}
