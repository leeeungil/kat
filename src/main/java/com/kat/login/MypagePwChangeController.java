package com.kat.login;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MypagePwChangeController {

	@RequestMapping("kat/mypage/pwchange.do")
	public ModelAndView mypagePwchange()throws IllegalStateException, IOException {
		
		System.out.println("Password 변경 컨트롤_1");
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("mypagePwchange_main");

		return modelAndView;
		
	}
	
	
}
