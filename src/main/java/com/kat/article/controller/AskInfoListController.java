package com.kat.article.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.article.model.Ask_to;
import com.kat.article.model.Ask_toInfoListView;
import com.kat.article.service.AskToListService;


@Controller
public class AskInfoListController {
	
	@Autowired
	private AskToListService askToListService;
	
	@RequestMapping("kat/askto/askinfolist.do")
	public ModelAndView listSubmit(@RequestParam(name = "no",defaultValue = "1") int no, Ask_to ask_to) 
			throws IllegalStateException, IOException {
System.out.println("[AskInfoListController listSubmit()] ACCESS");		
		ModelAndView modelAndView = new ModelAndView();
				
		Ask_to ask_toInfoListView = askToListService.getinfo(no);
System.out.println("[AskInfoListController listSubmit()] ask_toInfoListView :" + ask_toInfoListView.toString());		
								
		modelAndView.setViewName("ask_toDetail_main");
		modelAndView.addObject("ListInfoAsk_to", ask_toInfoListView);
System.out.println("===============================================================");			
		return modelAndView;
	}

}
