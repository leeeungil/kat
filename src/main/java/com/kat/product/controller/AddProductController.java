package com.kat.product.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.model.MenuInfo;

@Controller
@RequestMapping("kat/productForm/productAdd.do")
public class AddProductController {

	@RequestMapping(method = RequestMethod.GET)	
	public ModelAndView getUploadForm(MenuInfo menuInfo, HttpServletRequest request) throws IllegalStateException, IOException {
System.out.println("[AddProductController getUploadForm] INSERT PRODUCT FORM CALL ACCESS");
System.out.println("[AddProductController getUploadForm] menuInfo : " + menuInfo.toString());
		ModelAndView modelAndView = new ModelAndView();
		String user_id = (String) request.getSession(false).getAttribute("user_id"); // 로그인한 아이디 집어넣기
System.out.println("[AddProductController getUploadForm] user_id : "+ user_id);		

		modelAndView.setViewName("addMenu_main");
System.out.println("=============================================================");
		return modelAndView;
	}
}
