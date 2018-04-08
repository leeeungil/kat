package com.kat.common.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("move")
public class MoveController {
	
	@RequestMapping("{folderName}/{viewName}")
	public String noneSelectWebtoonByLevel(HttpSession session, 
			@PathVariable("folderName") String folderName, 
			@PathVariable("viewName") String viewName) {
		return folderName+"/"+viewName;
	}
}
