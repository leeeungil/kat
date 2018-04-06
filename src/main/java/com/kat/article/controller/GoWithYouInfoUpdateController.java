package com.kat.article.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.article.model.Go_with;
import com.kat.article.service.GoWithListService;

@Controller
public class GoWithYouInfoUpdateController {
	
	@Autowired
	private GoWithListService gowithListService;
	
	@RequestMapping("kat/gowith/updateInfo")
	public ModelAndView gowithUpdateSubmit(@RequestParam(name = "no")int no) throws IllegalStateException, IOException {
		
		Go_with go_withListView = gowithListService.sendgowithInfoUpdate(no);
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("gowithUpdateInfo_main");
		modelAndView.addObject("ListInfoUpdateGo_with", go_withListView);
		
		return modelAndView;
		
	}

}
