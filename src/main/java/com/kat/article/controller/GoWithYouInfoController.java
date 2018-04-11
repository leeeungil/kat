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
public class GoWithYouInfoController {
	
	@Autowired
	private GoWithListService goWithListService;
	
	@RequestMapping("kat/gowith/gowith_info_list.do")
	public ModelAndView gowithSubmit(@RequestParam(name = "go_with_no") int go_with_no, Go_with go_with) throws IllegalStateException, IOException {

		ModelAndView modelAndView = new ModelAndView();
System.out.println("[GoWithYouInfoController gowithSubmit] ACCESS");		
		Go_with go_withListView = goWithListService.findInfo(go_with_no);
System.out.println("[GoWithYouInfoController gowithSubmit] go_with_no :" +go_with_no);		
		modelAndView.setViewName("gowithDetailInfo_main");
		modelAndView.addObject("ListInfoGowith", go_withListView);
		
		return modelAndView;
	}	
}
