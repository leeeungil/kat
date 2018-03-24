package com.kat.menu;

import java.io.File;
import java.io.IOException;
import java.util.Date;

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

		System.out.println("로그 MenuAdd 컨트롤");

		ModelAndView modelAndView = new ModelAndView();

		String userid = (String) request.getSession(false).getAttribute("user_id"); // 로그인한 아이디 집어넣기
		int num = addMenuService.companyinfo(userid);

		System.out.println("num 값" + num);
		System.out.println("값확인 menu"+ menuInfo.getMenu_price());
		

		menuInfo.setCreate_date(new Date());
		menuInfo.setUser_id(userid);
		menuInfo.setCompany_no(num);

		long time = System.currentTimeMillis(); // 현재시간 주기

		/* 업로드 폴더 시스템 물리적 경로 찾기 */
		String uploadURI = "/uploadfile/menuphoto";
		String dir = request.getSession().getServletContext().getRealPath(uploadURI);
		System.out.println(dir);

		// 업로드 파일의 물리적 저장
		if (!menuInfo.getMenuPhotoFile().isEmpty()) {
			menuInfo.getMenuPhotoFile().transferTo(new File(dir, userid + "_menu_" + time));
			menuInfo.setFile_menuphoto(userid + "_menu_" + time);
		}

		addMenuService.addMenu(menuInfo);
		modelAndView.setViewName("redirect:/kat/menuForm/menuAdd.do");

		return modelAndView;
	}

}
