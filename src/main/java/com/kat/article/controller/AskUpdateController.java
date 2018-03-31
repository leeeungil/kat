package com.kat.article.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kat.article.model.Ask_to;
import com.kat.article.service.AskToService;

/* 문의하기글 수정한 내용을 업데이트 처리*/

@Controller
@RequestMapping("kat/ask/askUpdate.do")
public class AskUpdateController {
	
	@Autowired
	private AskToService askToService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String askUpdateForm() {
System.out.println("[AskUpdateController askUpdateForm()] ACCESS");		
		return "askUpdate_main";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String askUpdateSubmit(@RequestParam(name = "no",defaultValue = "1")int no, Ask_to ask_to) throws IllegalStateException, IOException {
System.out.println("[AskUpdateController askUpdateSubmit] ACCESS");
System.out.println("[AskUpdateController askUpdateSubmit] no :" + no);
		ask_to.setAsk_no(no);
System.out.println("[AskUpdateController askUpdateSubmit] ask_to :" + ask_to.toString());		
		askToService.askUpdate(ask_to);
System.out.println("=============================================");		
		return "redirect:/kat/ask_to/asklist.do";
	}

}
