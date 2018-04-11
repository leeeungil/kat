package com.kat.article.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kat.article.model.Comment;
import com.kat.article.service.CommentService;

@Controller
public class CommentController {

	@Autowired
	private CommentService commentService;
	
	@RequestMapping("kat/cmt/cmtform.do")
	public ModelAndView CommentSubmit(Comment comment, HttpServletRequest request) throws Exception{
System.out.println("[CommentController CommentSubmit] ACCESS SUCCESS");	
		commentService.commentInsert(comment);
		ModelAndView model = new ModelAndView();
		model.setViewName("redirect:/kat/cmt/cmtlist.do?go_with_no="+comment.getGo_with_no());
System.out.println("[CommentController commentSubmit] comment : "+ comment);		
System.out.println("----------------------------------------------------------");
		return model;
	}
}
