package com.kat.mail;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kat.seat.service.LoginService;

@Controller
public class PwFindAjaxController {

	@Autowired
	private MimeRegistrationNotifier mrNotifer;

	@Autowired
	private LoginService loginService;

	@RequestMapping("pwfind.do")
	public String pwfindcon(HttpServletRequest request, Model model) throws IllegalStateException, IOException {

		System.out.println("로그 pw 찾기 ajax ");

		String email = request.getParameter("pwfind");

		System.out.println("email 값 " + email);

		String pwfi = loginService.ajax_pwfind(email);

		System.out.println("idfi 값 " + pwfi);

		
		if (pwfi == null) {
			model.addAttribute("sendCode_5", pwfi);
            
			return ("kat_exceprtion/pwfindExceprtion");
            		
			
		} else {
			mrNotifer.sendpwFindMail(pwfi, email);
			model.addAttribute("sendCode_4", pwfi);

		}
		
		System.out.println("idfi 값 확인" + pwfi);

		
		return "/Check";

	}

}
