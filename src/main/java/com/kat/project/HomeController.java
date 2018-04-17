package com.kat.project;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kat.main.service.MainService;
import com.kat.product.model.ProductInfo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private MainService mainService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(String why) {
System.out.println("first?");
		return "home";
	}

	@RequestMapping(value ="/kat_main.do", method = RequestMethod.GET)
	public ModelAndView home() throws Exception{
System.out.println("[HomeController home] SELECT PRODUCT MAIN LIST ACCESS");
		ModelAndView modelAndView = new ModelAndView();
		Map<String, List<ProductInfo>> productAllList = null;
		productAllList = mainService.findMainAdProduct();
System.out.println("[HomeController home] ProductList.size() : "+ productAllList.size());		
		modelAndView.addObject("productAllList", productAllList);
		modelAndView.setViewName("kat_main");
System.out.println("[HomeController home] go =======>  kat_main");
System.out.println("=============================================================");
		return modelAndView;
	}
	
}
