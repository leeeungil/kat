package com.kat.master.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kat.master.model.Notice;
import com.kat.master.service.NoticeService;

@Controller
@RequestMapping("/master/notice/listUpdate.do")
public class masterNoticeListUpdateController {
	
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String noticeListUpdateForm() {
		return "updateNoticeDetail_main";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String noticeDetailUpdateSubmit(@RequestParam(name = "no", defaultValue = "1") int no,Notice notice)
		throws IllegalStateException, IOException {
		
		notice.setNotice_no(no);
		noticeService.noticeUpdate(notice);
		
		return "redirect:/master/board/noticelist.do";
	}

}
