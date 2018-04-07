package com.kat.article.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kat.article.model.Market;
import com.kat.article.service.MarketService;

@Controller
@RequestMapping("kat/market/write.do")
public class MarketInsertController {
	
	@Autowired
	private MarketService marketService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String marketWriteForm() {
System.out.println("[MarkeInsertController marketWriteForm()] ACCESS SUCCESS");		
		return "marketWrite_main";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String marketSubmit(Market market,HttpServletRequest request) throws IllegalStateException,IOException {
		marketService.marketInsert(market);
System.out.println("[MarkeInsertController marketSubmit()] ACCESS SUCCESS");				
		return "redirect:/kat/market/marklist.do";
	}

}
