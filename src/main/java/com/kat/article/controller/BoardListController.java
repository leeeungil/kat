package com.kat.article.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.article.model.BoardInfoListView;
import com.kat.article.service.BoardListService;

@Controller
public class BoardListController {

	@Autowired
	private BoardListService boardListService;

	@RequestMapping("customer/board/writelist.do")
	public ModelAndView boardlistSubmit(@RequestParam(name = "page", defaultValue = "1") int pageNumber,
			HttpServletRequest request) throws IllegalStateException, IOException {

		ModelAndView modelAndView = new ModelAndView();
		String user_id = null;

		user_id = (String) request.getSession(false).getAttribute("user_id");

		BoardInfoListView boardInfoListView = boardListService.getboardList(user_id, pageNumber);
		System.out.println("리스트 값 확인" + boardInfoListView);

		modelAndView.setViewName("articleWriteList_main");
		modelAndView.addObject("ListInfoBoard", boardInfoListView);

		return modelAndView;
	}

}
