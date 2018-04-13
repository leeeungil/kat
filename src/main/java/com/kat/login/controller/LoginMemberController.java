package com.kat.login.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.service.LoginService;

@Controller
public class LoginMemberController {

	@Autowired
	private LoginService loginService;

	@RequestMapping("kat/login/loginProcess.do")
	public ModelAndView login(@RequestParam(name = "user_id") String user_id, @RequestParam(name = "user_pass") String user_pass, 
			HttpServletRequest req) throws IllegalStateException, IOException {
System.out.println("[LoginMemberController login] USER LEVEL 1 - MEMBER ACCESS");
System.out.println("[LoginMemberController login] user_id : " + user_id);
System.out.println("[LoginMemberController login] user_pass : " + user_pass);
		int idchk = loginService.login_member(user_id, user_pass);
System.out.println("[LoginMemberController login] MAPPER(loginidchk) RETURN");
System.out.println("[LoginMemberController login] idchk : " + idchk);
	
		ModelAndView modelAndView = new ModelAndView();
		if (idchk == 3 || idchk == 4) {
			req.getSession(false).setAttribute("user_id", user_id);
			req.getSession(false).setAttribute("member_type", idchk);
			modelAndView.setViewName("redirect:/kat_main.do");
System.out.println("[LoginMemberController login] MEMBER LOGIN SUCCESS");			
		} else {
			modelAndView.setViewName("/kat_login/LoginFormChk");
			modelAndView.addObject("idchk", idchk);
System.out.println("[LoginMemberController login] MEMBER LOGIN FAIL");			
		}
System.out.println("=============================================================");
		return modelAndView;
	}
}
