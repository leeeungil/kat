package com.kat.login;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JoinAgreeController {

	@RequestMapping("kat/join/agreechk.do")
	public ModelAndView joinAgreechk() throws IllegalStateException, IOException {

		System.out.println("로그 JoinAgree 컨트롤");
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("joinAgree_main");

		return modelAndView;
	}
	
}
