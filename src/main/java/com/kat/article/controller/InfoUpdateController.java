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
public class InfoUpdateController {

	@Autowired
	private BoardListService boardListService; //리스트 가져오기
	
	@RequestMapping("customer/board/infoUpdate.do")
	public ModelAndView updateSubmit(@RequestParam(name = "no") int no) throws IllegalStateException, IOException {
		
		Board boardListView = boardListService.getinfoUpdate(no);
						
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("boardUpdateInfo_main");
		System.out.println("수정할 내용 글 가져오기" + boardListView);
		modelAndView.addObject("ListInfoUpdate", boardListView);
				
		return modelAndView;
	}
}
