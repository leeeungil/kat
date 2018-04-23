package com.kat.login.controller;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("join")
public class JoinController {

	@RequestMapping("memberJoin.do")
	public ModelAndView memberJoin() throws IllegalStateException, IOException {
System.out.println("[JoinAgreeController memberJoin] MEMBER JOIN ACCESS");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("layout/memberJoinLayout");
System.out.println("[JoinAgreeController memberJoin] GO ====>> layout/memberJoinLayout");
System.out.println("=============================================================");
		return modelAndView;
	}
}
