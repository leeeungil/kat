package com.kat.login;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PwFindController {

	@RequestMapping("kat/login/pwfind.do")
	public ModelAndView pwfind() throws IllegalStateException, IOException {

		System.out.println("로그 pw 찾기 컨트롤");
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("pwfind_main");

		return modelAndView;
	}
	
}
