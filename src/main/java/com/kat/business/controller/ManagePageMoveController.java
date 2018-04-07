package com.kat.business.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("kat/business/managePage.do")
public class ManagePageMoveController {

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView productManageMenu(HttpServletRequest request) throws Exception {
System.out.println("[SearchListController SearchList] Product Manage Page ACCESS");
System.out.println("[SearchListController SearchList] go ====>  manage_main");		
System.out.println("=============================================================");	
		return new ModelAndView("manage_main");
	}
}
