package com.kat.login;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kat.seat.service.LoginService;

@Controller
public class DuplicateEmailController {

	@Autowired
	private LoginService loginService;
	
	@RequestMapping("ajaxemailchk.do")
	public String checkAjaxId2 ( Model model, HttpServletRequest request) throws IllegalStateException, IOException {
System.out.println("[IdchkAjaxController checkAjaxId1] EMAIL DUPLICATE CHECK ACCESS");		
		String ajaxemailchk = request.getParameter("checkAjaxEmail");
		int chk_result =loginService.ajaxchk_email(ajaxemailchk);
System.out.println("[IdchkAjaxController checkAjaxId1] chk_result : " + chk_result);	
		model.addAttribute("ajax_email", chk_result);
System.out.println("=============================================================");				
		return "/Check";
	}
}
