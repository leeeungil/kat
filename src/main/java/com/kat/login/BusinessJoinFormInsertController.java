package com.kat.login;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.model.JoinInfo;
import com.kat.seat.service.LoginService;

@Controller
public class BusinessJoinFormInsertController {
//	@Autowired
//	private LoginService loginService;
//	
//	@RequestMapping(method = RequestMethod.GET)
//	public String businessFormSubmit() {
//		return "business_joinForm_main";
//	}
//
//	@RequestMapping("kat/join/businessjoinForm.do")
//	public ModelAndView businessjoinFormInsert(JoinInfo joinInfo) throws IllegalStateException, IOException {
//System.out.println("[BusinessJoinFormInsertController] BUSINESS SIGN_IN ACCESS");
//System.out.println("[BusinessJoinFormInsertController] " + joinInfo.toString());
//
//    ModelAndView modelAndView =  new ModelAndView();
//    try {
//    	loginService.joinInsertBusiness(joinInfo);
//System.out.println("[BusinessJoinFormInsertController] joinInfo : " + joinInfo);      	
//    	modelAndView.addObject("joinName", joinInfo);
//    	modelAndView.setViewName("JoinSucess_main");
//    } catch (Exception e){
//		modelAndView.setViewName("/kat_exception/exception");
//    }
//System.out.println("===================================================");
//     return modelAndView;
//	}

}
