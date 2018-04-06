package com.kat.article.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kat.article.model.Go_with;
import com.kat.article.service.GoWithService;

@Controller
@RequestMapping("kat/gowith/updateResult.do")
public class GoWithYouUpdateResultController {
	
	@Autowired
	private GoWithService gowithService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String updateGowithForm() {
System.out.println("[GoWithYouUpdateResultController] updateGowithForm()]ACCESS SUCCESS");	
System.out.println("=============================================");	
		return "GowithUpdateResult_main";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String updateResultGowithSubmit(@RequestParam(name = "no",defaultValue = "1")int no, Go_with go_with)throws IllegalStateException, IOException {
System.out.println("[GoWithYouUpdateResultController updateResultGowithSubmit()]");
System.out.println("[GoWithYouUpdateResultController updateResultGowithSubmit()] no"+ no);
        go_with.setGo_with_no(no);
		gowithService.gowithUpdate(go_with);
System.out.println("======================================");		
		return "redirect:/kat/gowith/gowith_write_list.do";
	}
}
