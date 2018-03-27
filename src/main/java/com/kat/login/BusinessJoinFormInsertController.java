package com.kat.login;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.model.JoinInfo;
import com.kat.seat.model.JoinInfoBusiness;
import com.kat.seat.service.LoginService;

@Controller
@RequestMapping("kat/join/businessjoinForm.do")
public class BusinessJoinFormInsertController {
	@Autowired
	private LoginService loginService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String businessFormSubmit() {
		return "business_joinForm_main";
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView businessjoinFormInsert(JoinInfoBusiness joinInfoBusiness) throws IllegalStateException, IOException {
System.out.println("[BusinessJoinFormInsertController] BUSINESS SIGN_IN ACCESS");
System.out.println("[BusinessJoinFormInsertController] " + joinInfoBusiness.toString());

    ModelAndView modelAndView =  new ModelAndView();
    try {
    	loginService.joinInsertBusiness(joinInfoBusiness);
System.out.println("[BusinessJoinFormInsertController] BusinessJoinInfo : " + joinInfoBusiness);      	
    	modelAndView.addObject("joinName", joinInfoBusiness);
    	modelAndView.setViewName("joinSucess_main");
    } catch (Exception e){
		modelAndView.setViewName("/kat_exception/exception");
    }
System.out.println("===================================================");
     return modelAndView;
	}

}
