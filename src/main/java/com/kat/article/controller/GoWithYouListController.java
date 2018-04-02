package com.kat.article.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.article.model.Go_withInfoListView;
import com.kat.article.service.GoWithListService;

@Controller
public class GoWithYouListController {
	
	@Autowired
	private GoWithListService goWithListService;
	
	@RequestMapping("kat/gowith/gowith_write_list.do")
	public ModelAndView gowithListSubmit(@RequestParam(name = "page", defaultValue = "1") int pageNumber,HttpServletRequest request) throws IllegalStateException,IOException {
System.out.println("[GoWithYouListController gowithListSubmit()] ACCESS SUCESS");
		ModelAndView modelAndView = new ModelAndView();
		String user_id = null;
		
		user_id = (String) request.getSession(false).getAttribute("user_id");
System.out.println("[GoWithYouListController gowithListSubmit()] user_id :" + user_id);
		Go_withInfoListView go_withInfoListView = goWithListService.findGoWithList(user_id,pageNumber);
System.out.println("[GoWithYouListController gowithListSubmit()] go_withInfoListView :" + go_withInfoListView.toString());		
		modelAndView.setViewName("gowithList_main");
		modelAndView.addObject("ListInfoGowith",go_withInfoListView);
System.out.println("[GoWithYouListController gowithListSubmit()] go_withInfoListView AFTER:" + go_withInfoListView.toString());		
System.out.println("===========================================");
		return modelAndView;
	}

}
