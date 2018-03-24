package com.kat.master.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.master.model.NoticeInfoListView;
import com.kat.master.service.NoticeListService;

@Controller
public class masterNoticeListController {

	@Autowired
	private NoticeListService noticeListService;

	@RequestMapping("master/board/noticelist.do")
	public ModelAndView masterNoticleListSubmit(@RequestParam(name = "page", defaultValue = "1") int pageNumber,
			HttpServletRequest request, Model model) throws IllegalStateException, IOException {

		String user_id = (String) request.getSession(false).getAttribute("user_id");

		NoticeInfoListView noticeInfoListView = noticeListService.getnoticeList(user_id, pageNumber);

		System.out.println(noticeInfoListView);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("masterNoticeList_main");
		modelAndView.addObject("ListInfoNotice", noticeInfoListView);

		return modelAndView;
	}
}
