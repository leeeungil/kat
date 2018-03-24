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
public class LoginForm1Controller {

	@Autowired
	private LoginService loginService;

	@RequestMapping("kat/login/loginProcess.do")
	public ModelAndView login1(@RequestParam(name = "user_id") String user_id,
			@RequestParam(name = "user_pass") String user_pass, HttpServletRequest req)
			throws IllegalStateException, IOException {
System.out.println("[LoginForm1Controller login1] USER LEVEL 1 - MEMBER ACCESS");
System.out.println("[LoginForm1Controller login1] user_id : " + user_id);
System.out.println("[LoginForm1Controller login1] user_pass : " + user_pass);
		int idchk = loginService.loginidchk(user_id, user_pass);
System.out.println("[LoginForm1Controller login1] MAPPER(loginidchk) RETURN");
System.out.println("[LoginForm1Controller login1] idchk : " + idchk);
	
		ModelAndView modelAndView = new ModelAndView();
		
		if (idchk == 3) {
			req.getSession(false).setAttribute("user_id", user_id);
			req.getSession(false).setAttribute("user_category", "일반 회원");
			
			modelAndView.setViewName("kat_main");
		} else {
			modelAndView.setViewName("/kat_login/LoginFormChk");
			modelAndView.addObject("idchk1", idchk);
		}
System.out.println("=============================================================");
		return modelAndView;
	}
}
