package com.kat.article.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kat.article.model.Comment;
import com.kat.article.service.CommentService;

@Controller
public class CommentController {

	@Autowired
	private CommentService commentService;
	
	@RequestMapping("kat/cmt/cmtform.do")
	public String CommentSubmit(Comment comment, HttpServletRequest request) throws IllegalStateException,IOException{
System.out.println("[CommentController CommentSubmit] ACCESS SUCCESS");	
System.out.println("[CommentController commentSubmit] comment : "+ comment.toString());
		commentService.commentInsert(comment);
System.out.println("----------------------------------------------------------");
		return "redirect:/kat/cmt/cmtlist.do";
	}
}
