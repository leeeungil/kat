package com.kat.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kat.product.model.ProductInfo;
import com.kat.product.service.ProductService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private ProductService addProductService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(String why) {
System.out.println("first?");
		return "home";
	}

	@RequestMapping(value ="/kat_main.do", method = RequestMethod.GET)
	public ModelAndView home() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		List<ProductInfo> ProductList = null;
		ProductList = addProductService.findAllTravelProduct();
System.out.println("[HomeController home] ProductList.size() : "+ ProductList.size());		
		modelAndView.addObject("ProductAllList",ProductList);
		modelAndView.setViewName("kat_main");
System.out.println("[HomeController home] go =======>  kat_main");
System.out.println("=============================================================");
		return modelAndView;
	}
	
}
