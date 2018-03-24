package com.kat.mail;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class EmailAjaxController {

	@Autowired
	private MimeRegistrationNotifier mrNotifer;
	
	@RequestMapping("emailver.do")
	public String logout(HttpServletRequest request,Model model) throws IllegalStateException, IOException {
		System.out.println("로그 email 인증 ajax ");
		String email = request.getParameter("emailver");
		
		String sendCode =new TempKey().getKey(5, false);
		mrNotifer.sendConfirmMail(sendCode,email);
		model.addAttribute("sendCode",sendCode);
		
		return "/Check";

		
	}

}
