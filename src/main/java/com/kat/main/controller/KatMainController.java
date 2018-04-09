package com.kat.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kat.product.model.ProductInfo;
import com.kat.product.service.ProductService;

@Controller
@RequestMapping("mainController")
public class KatMainController {
	
	@Autowired
	private ProductService addProductService;

	@RequestMapping(value ="selectMainProductList", produces = "application/text; charset=utf-8")
	@ResponseBody
	public List<ProductInfo> selectMainProductList() throws Exception{
System.out.println("[MainController selectMainProductList] SELECT PRODUCT MAIN LIST ACCESS");
		ModelAndView modelAndView = new ModelAndView();
		List<ProductInfo> productList = null;
		productList = addProductService.findAllTravelProduct();
System.out.println("[KatMainController selectMainProductList] ProductList.size() : "+ productList.size());		
		modelAndView.addObject("ProductAllList",productList);
System.out.println("=============================================================");
		return productList;
	}
}
