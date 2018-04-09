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
System.out.println("[HomeController home] go =======>  kat_main");
System.out.println("=============================================================");
System.out.println("[MainController selectMainProductList] SELECT PRODUCT MAIN LIST ACCESS");
ModelAndView modelAndView = new ModelAndView();
List<ProductInfo> productList = null;
productList = addProductService.findAllTravelProduct();
System.out.println("[KatMainController selectMainProductList] ProductList.size() : "+ productList.size());		
modelAndView.addObject("ProductAllList",productList);
modelAndView.setViewName("kat_main");
System.out.println("=============================================================");
		return modelAndView;
	}
	
}
