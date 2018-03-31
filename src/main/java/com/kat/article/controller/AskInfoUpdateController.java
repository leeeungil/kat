package com.kat.article.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.article.model.Ask_to;
import com.kat.article.service.AskToListService;

/*문의하기 특정글에 대한 수정로직*/

@Controller
public class AskInfoUpdateController {
	
	@Autowired
	private AskToListService askToListService;
	
	@RequestMapping("kat/ask/infoUpdate.do")
	public ModelAndView askUpdateSubmit(@RequestParam(name = "no")int no) throws IllegalStateException,IOException {
System.out.println("[AskInfoUpdateController askUpdateSubmit()] ACCESS");

    Ask_to ask_toInfoListView = askToListService.getaskInfoUpdate(no);
System.out.println("[AskInfoUpdateController askUpdateSubmit()] ask_toInfoListView :" + ask_toInfoListView.toString());  
    ModelAndView modelAndView = new ModelAndView();
    
    modelAndView.setViewName("askInfoUpdate_main");
    modelAndView.addObject("AskInfoUpdate",ask_toInfoListView );
System.out.println("========================================================"); 
    return modelAndView;
	}

}
