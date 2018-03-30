package com.kat.tour.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.model.Search;
import com.kat.seat.service.AddMenuService;

@Controller
public class tourMainController {
	
	public static Search searchinfo = new Search();
	
	@Autowired
	private AddMenuService addMenuService;

	@RequestMapping("kat/tourMain/tour.do")
	public ModelAndView tourListView(@RequestParam(name = "page", defaultValue = "1") int pageNumber,
			@RequestParam(name = "userid", defaultValue = "1")String user_id, Search search, HttpServletRequest request)
	        throws IllegalStateException, IOException {
System.out.println("[tourMainController tourListView] ACCESS SUCCESS");
System.out.println("[tourMainController tourListView] pageNumber : " + pageNumber);	
System.out.println("[tourMainController tourListView] user_id : " + user_id);
System.out.println("[tourMainController tourListView] " + search.toString());
    	ModelAndView modelAndView = new ModelAndView();
		
    	/*ShopPhotoListView shopPhotoListView = addMenuService.getshopPhotoList2(user_id);
System.out.println("[tourMainController tourListView] " + shopPhotoListView.toString());
		MenuInfoListView menuInfoListView = addMenuService.getMenuView2(pageNumber);
System.out.println("[tourMainController tourListView] " + menuInfoListView.toString());
		InfoShopAddress infoShopAddress = addMenuService.getAddress2(user_id, pageNumber);
System.out.println("[tourMainController tourListView] " + infoShopAddress.toString());*/
		
		/*modelAndView.setViewName("tourView_main");
		modelAndView.addObject("pageNumber", pageNumber);
		modelAndView.addObject("ShopPhotoList", shopPhotoListView);
		modelAndView.addObject("menuListInfo", menuInfoListView);
		modelAndView.addObject("InfoShopAddress", infoShopAddress);*/
System.out.println("=============================================================");
		return modelAndView;
		
	}
}