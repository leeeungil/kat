package com.kat.login.controller;

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
public class MypagePasswordCheakController2 {

	@Autowired
	private LoginService loginService;

	@RequestMapping("kat/mypage/pwchk2.do")
	public ModelAndView mypagePwChk2(@RequestParam(name = "user_pass") String user_pass, HttpServletRequest request)
			throws IllegalStateException, IOException {

		System.out.println("Password Cheak 컨트롤_2");
		String userid = (String) request.getSession(false).getAttribute("user_id");
		int idchk = loginService.loginidchk_2(userid, user_pass);

		System.out.println("idchk 값확인" + idchk);

		ModelAndView modelAndView = new ModelAndView();
		JoinInfo joinInfo = loginService.getMyPageInfoView(userid);
		JoinInfo joinInfo1 = loginService.getMyPageInfoView1(userid);

		try {
			if (idchk == 0) {
				System.out.println("아이디 있으면 여기");
				modelAndView.addObject("JoinListInfo", joinInfo);
				modelAndView.addObject("JoinListInfo1", joinInfo1);
				modelAndView.setViewName("UpdateView_main");

			}
			if (idchk == 2) {
				System.out.println("아이디 없으면 여기");
				modelAndView.addObject("idchk", idchk);
				modelAndView.setViewName("kat_exception/passchk");

			}

		} catch (Exception e) {
			modelAndView.setViewName("/kat_exception/exception");
		}
		return modelAndView;

	}
}
