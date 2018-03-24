package com.kat.article.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.article.model.Board;
import com.kat.article.service.BoardListService;

@Controller
public class InfoListController {
	
	@Autowired
	private BoardListService boardListService;
	
	@RequestMapping("customer/board/infolist.do")
	public ModelAndView listSubmit(@RequestParam(name = "no",defaultValue = "1") int no, Board board) 
			throws IllegalStateException, IOException {
		
		ModelAndView modelAndView = new ModelAndView();
				
		Board boardListView = boardListService.getinfo(no);
		
		System.out.println("boardListView 값" + boardListView);
								
		modelAndView.setViewName("boardDetail_main");
		modelAndView.addObject("ListInfoBoard", boardListView);
		
		return modelAndView;
	}

}
