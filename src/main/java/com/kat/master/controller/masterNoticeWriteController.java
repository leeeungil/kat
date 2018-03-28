package com.kat.master.controller;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.kat.master.model.Notice;
import com.kat.master.service.NoticeService;

@Controller
@RequestMapping("kat/master/noticeMain.do")
public class masterNoticeWriteController {
	
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String writeNoticeForm() {
		
		return "masterNotice_main";
		
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String NoticeSubmit(Notice notice,HttpServletRequest request) throws IllegalStateException, IOException {
		System.out.println("공지사항 insert 부분");
		System.out.println(notice);
		
		noticeService.noticeinsert(notice);
		
		return "redirect:/master/board/noticelist.do";
	}

}
