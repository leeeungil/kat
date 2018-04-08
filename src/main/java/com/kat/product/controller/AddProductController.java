package com.kat.product.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kat.product.service.ProductService;

@Controller
@RequestMapping("kat/productForm/productAdd.do")
public class AddProductController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(method = RequestMethod.GET)	
	public ModelAndView getUploadForm(HttpServletRequest request) throws Exception {
System.out.println("[AddProductController getUploadForm] INSERT PRODUCT FORM CALL ACCESS");
		Map<String, Object> categoryMap = productService.selectCategory();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("adminLayout/addProductLayout");
		modelAndView.addObject("productType", categoryMap.get("productType"));
		modelAndView.addObject("continent", categoryMap.get("continentModel"));
		modelAndView.addObject("country", categoryMap.get("countryModel"));
		modelAndView.addObject("city", categoryMap.get("cityModel"));
System.out.println("[AddProductController getUploadForm] go =====> adminLayout/addProductLayout ");		
System.out.println("=============================================================");
		return modelAndView;
	}
}
