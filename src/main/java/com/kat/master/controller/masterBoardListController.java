package com.kat.master.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.article.model.BoardInfoListView;
import com.kat.master.service.MasterBoardListService;

@Controller
public class masterBoardListController {

	@Autowired
	private MasterBoardListService masterBoardListService;

	@RequestMapping("master/board/boardlist.do")
	public ModelAndView MasterlistSubmit(@RequestParam(name = "page", defaultValue = "1") int pageNumber,
			HttpServletRequest request, Model model) throws IllegalStateException, IOException {

		String user_id = (String) request.getSession(false).getAttribute("user_id");

		BoardInfoListView boardInfoListView = masterBoardListService.getmasterboardList(user_id, pageNumber);
		System.out.println("리스트 값 확인" + boardInfoListView);

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("masterBoardList_main");
		modelAndView.addObject("ListInfoBoard", boardInfoListView);

		return modelAndView;
	}
}
