package com.kat.menu;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.model.MenuInfo;
import com.kat.seat.model.MenuInfoListView;
import com.kat.seat.service.AddMenuService;

@Controller
@RequestMapping("kat/menuForm/menuAdd.do")
public class MenuAddController {

	@Autowired
	private AddMenuService addMenuService;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView getUploadForm(@RequestParam(name = "page", defaultValue = "1") int pageNumber,
			HttpServletRequest request) throws IllegalStateException, IOException {

		System.out.println("로그 MenuList 컨트롤");

		ModelAndView modelAndView = new ModelAndView();

		String userid = (String) request.getSession(false).getAttribute("user_id"); // 로그인한 아이디 집어넣기

		MenuInfoListView menuInfoListView = addMenuService.getMenuList(userid, pageNumber); // 리스트 구현

		System.out.println(menuInfoListView); // menu 데이터 출력

		modelAndView.setViewName("addMenu_main");
		modelAndView.addObject("MenuListInfo", menuInfoListView);

		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView addSeatSubmit(MenuInfo menuInfo, MultipartHttpServletRequest request)
			throws IllegalStateException, IOException {
System.out.println("[MenuAddController addSeatSubmit] MENU ADD ACCESS");
System.out.println("[MenuAddController addSeatSubmit] " + menuInfo.toString());

		ModelAndView modelAndView = new ModelAndView();
		String user_id = (String) request.getSession(false).getAttribute("user_id"); // 로그인한 아이디 집어넣기

		menuInfo.setUser_id(user_id);

		long time = System.currentTimeMillis(); // 현재시간 주기
		
		/* 업로드 폴더 시스템 물리적 경로 찾기 */
		String uploadURI = "/uploadfile/menuphoto";
		String dir = request.getSession().getServletContext().getRealPath(uploadURI);
System.out.println("[MenuAddController addSeatSubmit] dir : " + dir);

		// 업로드 파일의 물리적 저장
		if (!menuInfo.getMultipart_product_file().isEmpty()) {
			menuInfo.getMultipart_product_file().transferTo(new File(dir, user_id + "_menu_" + time));
			menuInfo.setMenu_photo_file(user_id + "_menu_" + time);
		}
		
		addMenuService.addMenu(menuInfo);
System.out.println("[MenuAddController addSeatSubmit] addMenuService.addMenu FINISH");
		modelAndView.setViewName("redirect:/kat/menuForm/menuAdd.do");
System.out.println("=============================================================");
		return modelAndView;
	}

}
