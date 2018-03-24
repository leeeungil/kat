package com.kat.login;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MypagePasswordCheakController {

	@RequestMapping("kat/mypage/pwchk.do")
	public ModelAndView mypagePwChk1() throws IllegalStateException, IOException {

		System.out.println("Password Cheak 컨트롤_1");
		
		System.out.println("흐름 파악");
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("mypagePwChk_main");

		return modelAndView;
	}
	
}
