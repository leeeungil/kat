package com.kat.article.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kat.article.model.Ask_to;
import com.kat.article.service.AskToService;

@Controller
@RequestMapping("kat/askWriteForm/askWrite.do")
public class AskToWriteController {
	
	@Autowired
	private AskToService askToService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String AskWriteForm() {
System.out.println("[AskToController AskWriteForm()] INSERT PRODUCT FORM CALL ACCESS");		
		return "askWrite_main";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String askWriteSubmit(Ask_to ask_to, HttpServletRequest request) throws IllegalStateException,IOException {
System.out.println("[AskToController askWriteSubmit] ASK_TO ADD ACCESS");		
        ask_to.setCreate_date(new Date());
		askToService.askWriteInsert(ask_to);
System.out.println("[AskToController askWriteSubmit] ASK_TO ADD FINISH");		
		
        return "redirect:/kat/ask_to/asklist.do";
	}

}
