package com.kat.shopPhoto;

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

import com.kat.seat.model.ShopPhoto;
import com.kat.seat.model.ShopPhotoListView;
import com.kat.seat.service.AddMenuService;

@Controller
@RequestMapping("kat/shopPhotoForm/shopPhotoAdd.do")
public class ShopPhotoController {

	@Autowired
	private AddMenuService addMenuService;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView getUploadForm(@RequestParam(name = "page", defaultValue = "1") int pageNumber,
			HttpServletRequest request) throws IllegalStateException, IOException {

		System.out.println("로그 ShopPhotoList 컨트롤");

		ModelAndView modelAndView = new ModelAndView();

		String userid = (String) request.getSession(false).getAttribute("user_id"); // 로그인한 아이디 집어넣기

		ShopPhotoListView shopPhotoListView = addMenuService.getshopPhotoList(userid); // 매장 사진 가져오기

		ShopPhotoListView shopDeleteList = addMenuService.getshopPhotoDelete(userid , pageNumber); // 매장 리스트 출력

		modelAndView.setViewName("shopPhoto_main");
		modelAndView.addObject("ShopPhotoList", shopPhotoListView);
		modelAndView.addObject("ShopDeleteList", shopDeleteList);

		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView addSeatSubmit(ShopPhoto shopPhoto, MultipartHttpServletRequest request)
			throws IllegalStateException, IOException {

		System.out.println("로그 shopphotoAdd 컨트롤");

		ModelAndView modelAndView = new ModelAndView();

		String userid = (String) request.getSession(false).getAttribute("user_id"); // 로그인한 아이디 집어넣기

		shopPhoto.setUser_id(userid);

		long time = System.currentTimeMillis(); // 현재시간 주기

		/* 업로드 폴더 시스템 물리적 경로 찾기 */
		String uploadURI = "/uploadfile/shopphoto";
		String dir = request.getSession().getServletContext().getRealPath(uploadURI);
		System.out.println(dir);

		// 업로드 파일의 물리적 저장
		if (!shopPhoto.getShopPhotoFile().isEmpty()) {
			shopPhoto.getShopPhotoFile().transferTo(new File(dir, userid + "_shop_" + time));
			shopPhoto.setFile_shopphoto(userid + "_shop_" + time);
		}

		addMenuService.addShopPhoto(shopPhoto);
		modelAndView.setViewName("redirect:/kat/shopPhotoForm/shopPhotoAdd.do");

		return modelAndView;
	}

}
