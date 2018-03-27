package com.kat.login;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.service.LoginService;

@Controller
public class BusinessJoinFormInsertController {
	@Autowired
	private LoginService loginService;
	
	public ModelAndView businessjoinFormInsert(JoinInfo joinInfo) throws IllegalStateException, IOException {
		
	}

}
