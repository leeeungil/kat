package com.kat.product.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.model.MenuInfo;
import com.kat.seat.service.AddProductService;

@Controller
@RequestMapping("kat/productForm/productAdd.do")
public class AddProductController {

	@Autowired
	private AddProductService addProductService;
	
	@RequestMapping(method = RequestMethod.GET)	
	public ModelAndView getUploadForm(@RequestParam(name = "page", defaultValue = "1" ) int pageNumber, MenuInfo menuInfo, HttpServletRequest request) throws IllegalStateException, IOException {
System.out.println("[MenuAddController getUploadForm] INSERT PRODUCT FORM CALL ACCESS");
System.out.println("[MenuAddController getUploadForm] pageNumber : " + pageNumber);
		ModelAndView modelAndView = new ModelAndView();
		String user_id = (String) request.getSession(false).getAttribute("user_id"); // 로그인한 아이디 집어넣기

System.out.println("[MenuAddController getUploadForm] user_id : "+ user_id);		
//		MenuInfoListView menuInfoListView = addProductService.getMenuList(user_id, pageNumber); // 리스트 구현
//System.out.println("[MenuAddController getUploadForm] " + menuInfoListView.toString());

		modelAndView.setViewName("addMenu_main");
//		modelAndView.addObject("MenuListInfo", menuInfoListView);
System.out.println("=============================================================");
		return modelAndView;
	}
}
