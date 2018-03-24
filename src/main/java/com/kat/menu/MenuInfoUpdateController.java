package com.kat.menu;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.model.MenuInfo;
import com.kat.seat.service.AddMenuService;

@Controller
public class MenuInfoUpdateController {

	@Autowired
	private AddMenuService addMenuService;

	@RequestMapping("kat/menuForm/infoUpdate.do")
	public ModelAndView menuUpdatSubmit(@RequestParam(name = "no") int no) throws IllegalStateException, IOException {

		System.out.println("로그 MenuInfoUpdate 컨트롤");
		
		// 업데이트 할 데이터 가져오기
		MenuInfo menuInfo = addMenuService.getMenuUpdateInfo(no);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("updateMenuInfo_main");
		modelAndView.addObject("MenuInfoUpdate", menuInfo);

		return modelAndView;
	}
}
