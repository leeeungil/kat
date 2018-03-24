package com.kat.article.controller;

import java.io.IOException;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.kat.article.model.Board;
import com.kat.article.service.BoardService;


@Controller
@RequestMapping("kat/writeForm/write.do")
public class BoardWriteController {
	
	@Autowired
	private BoardService boardService ;
		
	@RequestMapping(method = RequestMethod.GET)
	public String writeArticleForm() {
					
		return "writeArticle_main";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String boardSubmit(Board board,HttpServletRequest request) throws IllegalStateException, IOException {
		
		board.setRegdate(new Date());
		System.out.println(board);
		boardService.boardinsert(board);
		
		
		return "redirect:/customer/board/writelist.do";
	}
}
