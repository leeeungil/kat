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
public class LoginForm2Controller {

	@Autowired
	private LoginService loginService;

	@RequestMapping("kat/login/loginbusiness.do")
	public ModelAndView login2(@RequestParam(name = "company_id") String company_id,
			@RequestParam(name = "company_pass") String company_pass, HttpServletRequest req)
			throws IllegalStateException, IOException {

		System.out.println("로그 Login2 컨트롤"); // 사업자 로그인

		int idchk = loginService.loginidchk(company_id, company_pass);

		ModelAndView modelAndView = new ModelAndView();
		

		if (idchk == 4) {
			
			req.getSession(false).setAttribute("user_id", company_id);
			req.getSession(false).setAttribute("user_category", "사업자 회원");
			
			modelAndView.setViewName("kat_main");
		} else {
			modelAndView.setViewName("/kat_login/LoginFormChk2");
			modelAndView.addObject("idchk2", idchk);
		}

		return modelAndView;
	}

}
