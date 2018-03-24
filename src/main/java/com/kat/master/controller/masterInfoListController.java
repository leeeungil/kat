package com.kat.master.controller;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.article.service.ArticleNoticeListService;
import com.kat.master.model.Notice;


@Controller
public class masterInfoListController {

	@Autowired
	private ArticleNoticeListService articleNoticeListService;
	
	@RequestMapping("/notice/board/infolist")
	public ModelAndView NoticelistSubmit(@RequestParam(name = "no") int no, HttpServletRequest request, Model model) 
			throws IllegalStateException,IOException {
		
		Notice noticeListView = articleNoticeListService.getinfo(no);
		
		System.out.println("NoticeListView");
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("noticeDetail_main");
		modelAndView.addObject("DetailNoticeInfo", noticeListView);
		
		return modelAndView;
	}
}
