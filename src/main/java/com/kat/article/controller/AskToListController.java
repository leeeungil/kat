package com.kat.article.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.article.model.Ask_toInfoListView;
import com.kat.article.service.AskToListService;

/* 문의하기 글번호 클릭시 해당 내용 가져오는 컨트롤러*/
@Controller
public class AskToListController {
	
	@Autowired
	private AskToListService asktoListService;
	
	@RequestMapping("kat/ask_to/asklist.do")
	public ModelAndView askListSubmit(@RequestParam(name = "page", defaultValue = "1") int pageNumber, HttpServletRequest request) throws IllegalStateException, IOException {
System.out.println("[AskToListController askListSubmit()] INSERT PRODUCT FORM CALL ACCESS");		
		ModelAndView modelAndView = new ModelAndView();
		String user_id = null;
		
		user_id = (String)request.getSession(false).getAttribute("user_id");
System.out.println("[AskToListController askListSubmit()] user_id :" + user_id);		
		Ask_toInfoListView ask_toInfoListView = asktoListService.getAskToList(user_id,pageNumber);
System.out.println("[AskToListController askListSubmit()] pageNumber :" + pageNumber);
		modelAndView.setViewName("askList_main");
		modelAndView.addObject("ListInfoAskto",ask_toInfoListView);
System.out.println("[AskToListController askListSubmit()]" + ask_toInfoListView.toString());			
		return modelAndView;
	};

}
