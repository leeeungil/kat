package com.kat.article.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.article.model.CommentInfoListView;
import com.kat.article.service.CommentService;

@Controller
public class CommentListController {
	
	@Autowired
	private CommentService commentService;
	
	@RequestMapping("kat/cmt/cmtlist.do")
	public ModelAndView commentListSubmit(@RequestParam(name = "page", defaultValue = "1")int pageNumber,HttpServletRequest request)throws IllegalStateException,IOException{
		ModelAndView modelAndView = new ModelAndView();
System.out.println("[CommentListController commentListSubmit] ACCESS SUCCEE");
        String user_id = null;
		user_id = (String) request.getSession(false).getAttribute("user_id");
System.out.println("[CommentListController commentListSubmit] user_id :" + user_id);
        String parent = request.getParameter("cmt_parent");
        int cmt_parent = Integer.parseInt(parent);
System.out.println("[CommentListController commentListSubmit] cmt_parent :" + cmt_parent);
		CommentInfoListView commentInfoListView = commentService.sendCommentList(pageNumber,cmt_parent);
System.out.println("[CommentListController commentListSubmit] commentInfoListView :" + commentInfoListView);	
System.out.println("[CommentListController commentListSubmit] pageNumber :" + pageNumber);
		modelAndView.setViewName("gowithDetailInfo_main");
		modelAndView.addObject("ListInfoComment", commentInfoListView);
System.out.println("===========================================================================");		
		return modelAndView;
	}
}
