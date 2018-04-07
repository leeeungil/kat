package com.kat.login.controller;

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
System.out.println("[JoinFormInsertController joinFormInsert] MEMBER ACCESS");		
System.out.println("[JoinFormInsertController joinFormInsert] joinInfo : " + joinInfo);		
		ModelAndView modelAndView = new ModelAndView();
		
		try {
//			if (level.equals("1")) 
//			else if (level.equals("2")) loginService.joinInsertBusiness(joinInfo);

			loginService.joinInsert(joinInfo);
			modelAndView.addObject("joinName", joinInfo);
			modelAndView.setViewName("joinSucess_main");
		} catch (Exception e) {
			modelAndView.setViewName("/kat_exception/exception");
		}
System.out.println("=============================================================");
		return modelAndView;
	}
}
