package com.kat.master.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.master.model.Notice;
import com.kat.master.service.NoticeListService;



@Controller
public class masterInfoUpdateController {
	
	@Autowired
	private NoticeListService noticeListService;
	
	@RequestMapping("/master/notice/infoUpdate.do")
	public ModelAndView noticeUpdateSubmit(@RequestParam(name = "no") int no,Notice notice)throws IllegalStateException, IOException {
		
		Notice noticeListView = noticeListService.getinfoUpdate(no);
		System.out.println("수정할 내용 가져오기 : "+noticeListView);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("noticeUpdateInfo_main");
		modelAndView.addObject("NoticeListInfoUpdate", noticeListView);
		
		return modelAndView;
	}
}
