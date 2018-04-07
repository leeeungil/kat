package com.kat.login.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.model.JoinInfo;
import com.kat.seat.service.LoginService;

@Controller
public class JoinFormController {
	
	@Autowired
	private LoginService loginService;

	@RequestMapping("kat/join/joinForm.do")
	public ModelAndView joinForm(JoinInfo joinInfo) throws IllegalStateException, IOException {
System.out.println("[JoinFormController joinForm] LOAD SIGN_IN FORM ACCESS");
		ModelAndView modelAndView = new ModelAndView();
			loginService.joinInsert(joinInfo);
System.out.println("[JoinFromController joinForm()] joinInfo :" + joinInfo);			
			modelAndView.setViewName("kat_main");
System.out.println("[JoinFromController joinForm()] GO ====>> kat_main");			
System.out.println("=============================================================");
		return modelAndView;
	}
}
