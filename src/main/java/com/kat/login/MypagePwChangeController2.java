package com.kat.login;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.model.JoinInfo;
import com.kat.seat.service.LoginService;

@Controller
public class MypagePwChangeController2 {

	@Autowired
	private LoginService loginService;

	@RequestMapping("kat/mypage/pwchange2.do")
	public ModelAndView mypagePwchange2(@RequestParam(name = "user_pass") String user_pass,JoinInfo joinInfo,  HttpServletRequest request)
			throws IllegalStateException, IOException {

		System.out.println("Password 변경 컨트롤_2");

		String user_id = (String) request.getSession(false).getAttribute("user_id");

		int idchk1 = loginService.loginidchk_2(user_id, user_pass);
		
		JoinInfo userinfo = null;
		joinInfo.setUser_id(user_id);
		
		ModelAndView modelAndView = new ModelAndView();

		System.out.println("joininfo" + userinfo );
		
		if (idchk1 == 0) {
			userinfo = loginService.userInfo(user_id);
			loginService.update_pw(joinInfo);
			modelAndView.addObject("idchk2", idchk1);
			modelAndView.setViewName("UpdateMypagePwChange_main");
		}
		
		if (idchk1 == 2) {
			modelAndView.addObject("idchk1", idchk1);
			modelAndView.setViewName("mypagePwchange_main");
		}

		System.out.println("userid 확인" + user_id );
		System.out.println("joininfo 확인" + joinInfo );
		System.out.println("idchk1 확인 " + idchk1);
		
		return modelAndView;
	}
}
