package com.kat.master.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("master/kat_master/master.do")
public class masterController {

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView loginmaster(HttpServletRequest req) {

		ModelAndView modelAndView = new ModelAndView();

		System.out.println("masterform 로그인 컨트롤"); // 마스터 로그인 폼

		modelAndView.setViewName("/kat_master/master");

		return modelAndView;

	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView loginmastersucess(@RequestParam(name = "master_id") String master_id,
			@RequestParam(name = "master_pass") String master_pass, HttpServletRequest req) {

		
		System.out.println("Masterchk 로그인 컨트롤"); // 마스터 로그인
		
		ModelAndView modelAndView = new ModelAndView();
		
		
		if (master_id.equals("Master") && master_pass.equals("1")) {
			
			req.getSession(false).setAttribute("user_id", master_id);
			
			modelAndView.setViewName("redirect:/kat_main.do");
			
		}else {
			
			modelAndView.setViewName("/kat_exception/masterchk");
			
		}
		
		return modelAndView;
	}

}
