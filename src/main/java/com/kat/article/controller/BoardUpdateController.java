package com.kat.article.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kat.article.model.Board;
import com.kat.article.service.BoardService;

@Controller
@RequestMapping("customer/board/Update.do")
public class BoardUpdateController {
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String updateArticleForm() {
		
		return "updateArticle_main";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String updateSubmit(@RequestParam(name = "no", defaultValue = "1")int no, Board board) 
			throws IllegalStateException, IOException {
		
		board.setBoard_no(no);
		boardService.boardUpdate(board);
				
		return "redirect:/customer/board/writelist.do";
		
	}
	
}
