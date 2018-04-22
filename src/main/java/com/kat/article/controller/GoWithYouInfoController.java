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
	public ModelAndView gowithSubmit(@RequestParam(name = "bno") int bno, Go_with go_with) throws IllegalStateException, IOException {

		ModelAndView modelAndView = new ModelAndView();
System.out.println("[GoWithYouInfoController gowithSubmit] ACCESS");		
		Go_with go_withListView = goWithListService.findInfo(bno);
System.out.println("[GoWithYouInfoController gowithSubmit] bno :" +bno);		
		modelAndView.setViewName("gowithDetailInfo_main");
		modelAndView.addObject("ListInfoGowith", go_withListView);
		
		return modelAndView;
	}	
}
