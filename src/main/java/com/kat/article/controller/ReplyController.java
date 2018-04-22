package com.kat.article.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.kat.article.model.Reply;
import com.kat.article.model.ReplyPager;
import com.kat.article.service.ReplyService;

@RestController
@RequestMapping("/reply/*")
public class ReplyController {
	
	@Inject
	ReplyService replyService;
	
	@RequestMapping("insert.do")
	public void insert(@ModelAttribute Reply reply,HttpSession session) {
		String user_id = (String)session.getAttribute("user_id");
		reply.setReplyer(user_id);
		replyService.create(reply);
	}
	
	@RequestMapping("list.do")
	public ModelAndView list(@RequestParam int bno, @RequestParam(defaultValue="1")int curPage,ModelAndView mav, HttpSession session) {
		int count = replyService.count(bno);
		ReplyPager replyPager = new ReplyPager(count,curPage);
		int start = replyPager.getPageBegin();
		int end = replyPager.getPageEnd();
		List<Reply> list = replyService.list(bno,start,end,session);
		
		mav.setViewName("board/replyList");
		mav.addObject("list",list);
		mav.addObject("replyPager", replyPager);
		
		return mav;
	}

}
