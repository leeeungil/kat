package com.kat.main.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kat.main.service.MainService;
import com.kat.product.model.ProductInfo;

@Controller
@RequestMapping("mainController")
public class MainController {
	
	@Autowired
	private MainService mainService;

	@RequestMapping(value ="selectMainProductList", produces = "application/text; charset=utf-8")
	@ResponseBody
	public Map<String, List<ProductInfo>> selectMainProductList() throws Exception{
System.out.println("[MainController selectMainProductList] SELECT PRODUCT MAIN AD LIST ACCESS");
		Map<String, List<ProductInfo>> productAllList = null;
		productAllList = mainService.findMainAdProduct();
System.out.println("[MainController selectMainProductList] ProductList.size() : "+ productAllList.size());		
System.out.println("=============================================================");
		return productAllList;
	}
}
