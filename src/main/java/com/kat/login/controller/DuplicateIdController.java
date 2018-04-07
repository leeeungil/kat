package com.kat.login.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kat.seat.service.LoginService;

@Controller
public class DuplicateIdController {

	@Autowired
	private LoginService loginService;
	
	@RequestMapping("ajaxidchk.do")
	public String checkAjaxId1 ( Model model, HttpServletRequest request) throws IllegalStateException, IOException {
System.out.println("[IdchkAjaxController checkAjaxId1] ID DUPLICATE CHECK ACCESS");		
		String ajaxidchk = request.getParameter("checkAjaxId");
		int chk_result =loginService.ajaxchk_id(ajaxidchk);
System.out.println("[IdchkAjaxController checkAjaxId1] chk_result : " + chk_result);
		model.addAttribute("ajax_id", chk_result);
System.out.println("=============================================================");
		return "/Check";
	}
}
