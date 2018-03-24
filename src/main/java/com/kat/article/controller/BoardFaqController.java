package com.kat.article.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("kat/faqForm/faq.do")
public class BoardFaqController {
	
	@RequestMapping(method = RequestMethod.GET)
	public String faqForm() {
		return "faq_main";
	}

}
