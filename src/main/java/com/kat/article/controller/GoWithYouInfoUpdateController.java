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
	
	@RequestMapping("kat/gowith/updateInfo.do")
	public ModelAndView gowithUpdateSubmit(@RequestParam(name = "no")int no) throws IllegalStateException, IOException {
System.out.println("[GOWithYouInfoUpdateController gowithUpdateSubmit] ACCESS SUCCEE");	
System.out.println("[GOWithYouInfoUpdateController gowithUpdateSubmit] no :" + no);
		Go_with go_withListView = gowithListService.sendgowithInfoUpdate(no);
System.out.println("[GOWithYouInfoUpdateController gowithUpdateSubmit] go_withListView :" + go_withListView.toString());		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("gowithUpdateInfo_main");
		modelAndView.addObject("ListInfoUpdateGo_with", go_withListView);
System.out.println("========================================================");

		return modelAndView;
		
	}

}
