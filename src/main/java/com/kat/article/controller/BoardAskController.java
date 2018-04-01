package com.kat.article.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("kat/askForm/ask.do")
public class BoardAskController {
	
	@RequestMapping(method = RequestMethod.GET)
	public String faqForm() {
		return "boardAsk_main";
	}

}
