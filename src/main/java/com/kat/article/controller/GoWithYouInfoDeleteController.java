package com.kat.article.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kat.article.model.Go_with;
import com.kat.article.service.GoWithListService;

@Controller
public class GoWithYouInfoDeleteController {
	
	@Autowired
	private GoWithListService gowithListService;
	
	@RequestMapping("kat/gowith/deleteInfo.do")
	public String infoDeleteSubmit(@RequestParam(name = "no", defaultValue ="1")int no, Go_with go_with) throws IllegalStateException, IOException {
		go_with.setGo_with_no(no);
		gowithListService.infoDelete(go_with);
		
		return "redirect:/kat/gowith/gowith_write_list.do";
	}

}
