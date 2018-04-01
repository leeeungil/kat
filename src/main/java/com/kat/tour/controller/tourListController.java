package com.kat.tour.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.model.ShopPhotoListView;
import com.kat.seat.service.AddProductService;

@Controller
public class tourListController {
	
	@Autowired
	private AddProductService addProductService;
	
	@RequestMapping("kat/tourlist/tourlist1.do")
	public ModelAndView tourListSubmit(@RequestParam(name = "page", defaultValue = "1") int pageNumber, HttpServletRequest request, Model model)
	throws IllegalStateException, IOException{
System.out.println("[tourListController tourListSubmit] ACCESS ACCESS");
System.out.println("[tourListController tourListSubmit] pageNumber : " + pageNumber);

		String userid = (String) request.getSession(false).getAttribute("user_id"); // 로그인한 아이디 집어넣기
		ShopPhotoListView shopPhotoListView = addProductService.getshopPhotoList(userid); // 매장 사진 가져오기
System.out.println("[tourListController tourListSubmit] " + shopPhotoListView.toString());

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("tourView_main");
        modelAndView.addObject("InfoShopListView", shopPhotoListView);
System.out.println("=============================================================");
        return modelAndView;
	}	
}
