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

		System.out.println("로그 Login1 컨트롤"); // 일반 회원 로그인 컨트롤
		int idchk = loginService.loginidchk(user_id, user_pass);
		ModelAndView modelAndView = new ModelAndView();
		System.out.println("[LoginForm1Controlleridchk] CALL SUCCESS");
		System.out.println("[LoginForm1Controlleridchk] idchk : " + idchk);
		
		if (idchk == 3) {
			req.getSession(false).setAttribute("user_id", user_id);
			req.getSession(false).setAttribute("user_category", "일반 회원");
			
			modelAndView.setViewName("kat_main");
		} else {
			modelAndView.setViewName("/kat_login/LoginFormChk");
			modelAndView.addObject("idchk1", idchk);
		}
		return modelAndView;
	}
}
