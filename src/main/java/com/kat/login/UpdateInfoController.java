package com.kat.login;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.kat.seat.model.JoinInfo;
import com.kat.seat.service.UpdateService;

@Controller
public class UpdateInfoController {

	@Autowired
	private UpdateService updateService;

	@RequestMapping("/kat/myPage/updateinfo.do")
	public ModelAndView UpDateSubmit(@RequestParam(name = "userid") String userid)
			throws IllegalStateException, IOException {

		// 업데이트 할 사업자정보 가져오기
		System.out.println("dd"+userid);
		JoinInfo joinInfo = updateService.getMyPageUpdateInfo1(userid);
		JoinInfo joinInfo1 = updateService.getMyPageUpdateInfo(userid);
		
		System.out.println("업데이트 정보 "+ joinInfo);
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("MyPageUpdate", joinInfo);
		modelAndView.addObject("MyPageUpdate1", joinInfo1);
		modelAndView.setViewName("mypage_main");
		

		return modelAndView;
	}
	
	
	
}
