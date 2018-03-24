package com.kat.article.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kat.article.model.Board;
import com.kat.article.service.BoardListService;

@Controller
public class BoardDeleteController {

	@Autowired
	private BoardListService boardListService; //�궘�젣�븯湲�
	
	@RequestMapping("customer/board/infoDelete")	
	public String listSubmit(@RequestParam(name = "no", defaultValue = "1") int no, Board board)
			throws IllegalStateException, IOException {
		System.out.println(no);
		
		board.setBoard_no(no);
		
		boardListService.delete(board);
				
		return "redirect:/customer/board/writelist.do";
	}
	
}
