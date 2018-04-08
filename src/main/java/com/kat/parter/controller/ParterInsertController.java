package com.kat.parter.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.model.JoinInfoBusiness;
import com.kat.seat.service.LoginService;

@Controller
public class ParterInsertController {
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping("kat/parter/parterInsert.do")
	public ModelAndView parterInsertForm(JoinInfoBusiness joinInfoBusiness) throws IllegalStateException, IOException {
System.out.println("[ParterInsertController parterInsertForm()] LOAD SIGN_IN FORM ACCESS");
        ModelAndView modelAndView = new ModelAndView();
        
        loginService.parterJoinInsert(joinInfoBusiness);
        System.out.println("[ParterInsertController parterInsertForm()] joinInfoBusiness :"+joinInfoBusiness);        
        modelAndView.setViewName("kat_main");

        return modelAndView;
	}
	
	

}
