package com.kat.login;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JoinFormController {

	@RequestMapping("kat/join/joinForm.do")
	public ModelAndView joinForm() throws IllegalStateException, IOException {

		System.out.println("로그 JoinForm 컨트롤");

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("joinForm_main");

		return modelAndView;
	}
}
