package com.kat.login;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LogoutController {

	@RequestMapping("kat/login/logout.do")
	public ModelAndView logout(HttpSession session) throws IllegalStateException, IOException {

		System.out.println("로그 logout 컨트롤");

		session.invalidate();

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("kat_main");

		return modelAndView;
	}

}
