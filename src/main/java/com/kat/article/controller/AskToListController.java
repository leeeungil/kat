package com.kat.article.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.article.dao.Ask_toInfoListVIew;
import com.kat.article.service.AskToListService;

@Controller
public class AskToListController {
	
	@Autowired
	private AskToListService asktoListService;
	
	public ModelAndView askListSubmit(@RequestParam(name = "page", defaultValue = "1") int pageNumber, HttpServletRequest request) throws IllegalStateException, IOException {
System.out.println("[AskToListController askListSubmit()] INSERT PRODUCT FORM CALL ACCESS");		
		ModelAndView modelAndView = new ModelAndView();
		String user_id = null;
		
		user_id = (String)request.getSession(false).getAttribute("user_id");
System.out.println("[AskToListController askListSubmit()] user_id :" + user_id);		
		Ask_toInfoListVIew ask_toInfoListView = asktoListService.getAskToList(user_id,pageNumber);

		modelAndView.setViewName("askToList_main");
		modelAndView.addObject("ListInfoAskto",ask_toInfoListView);
System.out.println("[AskToListController askListSubmit()]" + ask_toInfoListView.toString());			
		return modelAndView;
	};

}
