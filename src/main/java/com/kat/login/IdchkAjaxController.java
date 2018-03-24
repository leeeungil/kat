package com.kat.login;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kat.seat.service.LoginService;


@Controller
public class IdchkAjaxController {

	@Autowired
	private LoginService loginService;
	
	
	@RequestMapping("ajaxidchk.do")
	public String checkAjaxId1 ( Model model, HttpServletRequest request) throws IllegalStateException, IOException {
		
		System.out.println("로그 id 중복체크 ajax");
		
		String ajaxidchk = request.getParameter("checkAjaxId");
		
		int nt =loginService.ajaxchk_id(ajaxidchk);
			
		model.addAttribute("ajax_id", nt);
				
		return "/Check";
		
	}
	
}
