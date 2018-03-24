package com.kat.review.controller;

import java.io.IOException;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kat.review.model.Review;
import com.kat.review.service.ReviewService;

@Controller
@RequestMapping("kat/reviewWriteForm/write.do")
public class ReviewWriteController {

	@Autowired
	private ReviewService reviewService;

	
	@RequestMapping(method = RequestMethod.GET)
	public String writeReviewForm(String SearchName,Model model) {
		System.out.println("writeReviewForm : " + SearchName);
		model.addAttribute("SearchName", SearchName);
		return "writeReview_main";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String reviewSubmit(String SearchName,Review review) throws IllegalStateException, IOException {
		
		review.setRegdate(new Date());
		System.out.println("reviewSubmit : " + SearchName);
		System.out.println("review :" + review);
		reviewService.reviewinsert(SearchName,review);
				
				
		return  "redirect:/kat/seatInfoLsit/reservation.do?SearchName="+SearchName;
	}
}
