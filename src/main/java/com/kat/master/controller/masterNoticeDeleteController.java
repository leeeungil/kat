package com.kat.master.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kat.master.model.Notice;
import com.kat.master.service.NoticeListService;

@Controller
public class masterNoticeDeleteController {

	@Autowired
	private NoticeListService noticeListService;
	
	@RequestMapping("master/notice/infoDelete.do")
	public String noticelistSubmit(@RequestParam(name = "no", defaultValue = "1") int no, Notice notice) {
		
		notice.setNotice_no(no);
		noticeListService.delete(notice);
		
		return "redirect:/master/board/noticelist.do ";
	}
}
