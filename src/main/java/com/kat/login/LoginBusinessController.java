package com.kat.login;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.service.LoginService;

@Controller
public class LoginBusinessController {

	@Autowired
	private LoginService loginService;

	@RequestMapping("kat/login/loginbusiness.do")
	public ModelAndView login(@RequestParam(name = "company_id") String user_id, @RequestParam(name = "company_pass") String user_pass,
			HttpServletRequest req) throws IllegalStateException, IOException {
System.out.println("[LoginBusinessController login] USER LEVEL 2 - BUSINESS ACCESS");
System.out.println("[LoginBusinessController login] user_id : " + user_id);
System.out.println("[LoginBusinessController login] user_pass : " + user_pass);
		int idchk = loginService.login_business(user_id, user_pass);
System.out.println("[LoginBusinessController login] MAPPER(loginidchk) RETURN");
System.out.println("[LoginBusinessController login] idchk : " + idchk);
		
		ModelAndView modelAndView = new ModelAndView();
		if (idchk == 4) {
			req.getSession(false).setAttribute("user_id", user_id);
			req.getSession(false).setAttribute("user_category", "사업자 회원");
			modelAndView.setViewName("kat_main");
System.out.println("[LoginBusinessController login] BUSINESS LOGIN SUCCESS");
		} else {
			modelAndView.setViewName("/kat_login/LoginFormChk");
			modelAndView.addObject("idchk", idchk);
System.out.println("[LoginBusinessController login] BUSINESS LOGIN FAIL");			
		}
System.out.println("=============================================================");
		return modelAndView;
	}
}
