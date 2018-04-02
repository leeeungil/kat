package com.kat.article.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kat.article.model.Go_with;
import com.kat.article.service.GoWithService;

@Controller
@RequestMapping("/kat/goWith/gowithwriteForm.do")
public class GoWithYouWriteController {
	
	@Autowired
	private GoWithService goWithService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String writeGoWithForm() {
System.out.println("[GoWithYouWriteController writeGoWithForm()] : ACCESS SUCESS");		
		return "gowithWrite_main";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String gowithSubmit(Go_with go_with, HttpServletRequest request) throws IllegalStateException, IOException {
System.out.println("[GoWithYouWriteController goWithSubmit()] : ACCESS SUCESS");			
		goWithService.gowithInsert(go_with);
System.out.println("[GoWithYouWriteController goWithSubmit()] go_with :" + go_with.toString());		
System.out.println("=======================================");
		return "redirect:/kat/gowith/gowith_write_list.do";
	}

}
