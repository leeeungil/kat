package com.kat.login.controller;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IdFindController {

	@RequestMapping("kat/login/idfind.do")
	public ModelAndView idfind() throws IllegalStateException, IOException {

		System.out.println("로그 id 찾기 컨트롤");
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("idfind_main");

		return modelAndView;
	}
	
}
