package com.kat.mail;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kat.seat.service.LoginService;

@Controller
public class IdFindAjaxController {

	@Autowired
	private MimeRegistrationNotifier mrNotifer;

	@Autowired
	private LoginService loginService;

	@RequestMapping("idfind.do")
	public String idfindcon(HttpServletRequest request, Model model) throws IllegalStateException, IOException {

		System.out.println("로그 id 찾기 ajax ");

		String email = request.getParameter("idfind");

		System.out.println("email 값 " + email);

		String idfi = loginService.ajax_idfind(email);

		System.out.println("idfi 값 " + idfi);

	

		if (idfi == null) {
			model.addAttribute("sendCode_3", idfi);
            
			return ("kat_exceprtion/idfindExceprtion");
            		
			
		} else {
			mrNotifer.sendFindMail(idfi, email);
			model.addAttribute("sendCode_2", idfi);

		}
		
		System.out.println("idfi 값 확인" + idfi);

		
		return "/Check";

	}

}
