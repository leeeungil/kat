package com.kat.article.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.article.service.ArticleNoticeListService;
import com.kat.master.model.NoticeInfoListView;


@Controller
public class ArticleNoticeListController {

	@Autowired
	private ArticleNoticeListService articleNoticeListService;
	
	@RequestMapping("master/board/list.do")
	public ModelAndView NoticelistSubmit(@RequestParam(name = "page", defaultValue = "1") int pageNumber, HttpServletRequest request,Model model) 
			throws IllegalStateException, IOException {
		
		String user_id = (String) request.getSession(false).getAttribute("user_id");
		
		NoticeInfoListView noticeInfoListView = articleNoticeListService.getarticleNoticeList(user_id,pageNumber);
		
		ModelAndView modelAndView  = new ModelAndView();
		modelAndView.setViewName("articleNoticeList_main");
		modelAndView.addObject("ListInfoNotice", noticeInfoListView);
		return modelAndView;
	}
}
