package com.kat.login.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LogoutController {

	@RequestMapping("kat/login/logout.do")
	public ModelAndView logout(HttpSession session) throws IllegalStateException, IOException {
System.out.println("[LogoutController logout] LOGOUT - SESSION CLEAR ACCESS");
		session.invalidate();
System.out.println("[LogoutController logout] LOGOUT - SESSION CLEAR FINISH");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:/kat_main.do");
System.out.println("=============================================================");
		return modelAndView;
	}
}
