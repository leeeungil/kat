package com.kat.partner.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.model.JoinInfoBusiness;
import com.kat.seat.service.LoginService;

@Controller
@RequestMapping("kat/parter/parterInsert.do")
public class ParterInsertController {
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String parterchoiceSendForm() {
		return "parterChoice_main";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView parterInsertForm(JoinInfoBusiness joinInfoBusiness) throws IllegalStateException, IOException {
System.out.println("[ParterInsertController parterInsertForm()] LOAD SIGN_IN FORM ACCESS");
        ModelAndView modelAndView = new ModelAndView();
        
        loginService.parterJoinInsert(joinInfoBusiness);
        System.out.println("[ParterInsertController parterInsertForm()] joinInfoBusiness :"+joinInfoBusiness);        
        modelAndView.setViewName("kat_main");

        return modelAndView;
	}
	
	

}
