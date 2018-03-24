package com.kat.login;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kat.seat.service.LoginService;


@Controller
public class EmailchkAjaxController {

	@Autowired
	private LoginService loginService;
	
	
	@RequestMapping("ajaxemailchk.do")
	public String checkAjaxId2 ( Model model, HttpServletRequest request) throws IllegalStateException, IOException {
		
		System.out.println("로그 email 중복체크 ajax");
		
		String ajaxemailchk = request.getParameter("checkAjaxEmail");
		
		int nt2 =loginService.ajaxchk_email(ajaxemailchk);
			
		model.addAttribute("ajax_email", nt2);
				
		return "/Check";
		
	}
	
}
