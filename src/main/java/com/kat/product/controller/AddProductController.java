package com.kat.product.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kat.product.model.ProductInfo;
import com.kat.seat.model.MenuInfo;
import com.kat.seat.service.AddMenuService;

@Controller
@RequestMapping("kat/productForm/productAdd.do")
public class AddProductController {

	@Autowired
	private AddMenuService addMenuService;
	
	@RequestMapping(method = RequestMethod.GET)	
	public ModelAndView getUploadForm(@RequestParam(name = "page", defaultValue = "1" ) int pageNumber, MenuInfo menuInfo, HttpServletRequest request) throws IllegalStateException, IOException {
System.out.println("[MenuAddController getUploadForm] INSERT PRODUCT FORM CALL ACCESS");
System.out.println("[MenuAddController getUploadForm] pageNumber : " + pageNumber);
		ModelAndView modelAndView = new ModelAndView();
		String user_id = (String) request.getSession(false).getAttribute("user_id"); // 로그인한 아이디 집어넣기

System.out.println("[MenuAddController getUploadForm] user_id : "+ user_id);		
//		MenuInfoListView menuInfoListView = addMenuService.getMenuList(user_id, pageNumber); // 리스트 구현
//System.out.println("[MenuAddController getUploadForm] " + menuInfoListView.toString());

		modelAndView.setViewName("addMenu_main");
//		modelAndView.addObject("MenuListInfo", menuInfoListView);
System.out.println("=============================================================");
		return modelAndView;
	}


		ModelAndView modelAndView = new ModelAndView();
		/*String user_id = (String) request.getSession(false).getAttribute("user_id"); // 로그인한 아이디 집어넣기
		menuInfo.setUser_id(user_id);
		
		long time = System.currentTimeMillis(); // 현재시간 주기
		//업로드 폴더 시스템 물리적 경로 찾기 
		String uploadURI = "/uploadfile/menuphoto";
		String dir = request.getSession().getServletContext().getRealPath(uploadURI);
System.out.println("[AddProductController addProduct] dir : " + dir);

		// 업로드 파일의 물리적 저장
		if (!menuInfo.getMultipart_product_file().isEmpty()) {
System.out.println("[AddProductController addProduct] getMultipart_product_file() : " + menuInfo.getMultipart_product_file().toString());
			menuInfo.getMultipart_product_file().transferTo(new File(dir, user_id + "_menu_" + time+".png"));
			menuInfo.setFile_menu_photo(uploadURI+"/"+user_id + "_menu_" + time+".png");
		} else {
System.out.println("[AddProductController addProduct] getMultipart_product_file() NOT NULL");
		}

		addMenuService.addProduct(menuInfo);
System.out.println("[AddProductController addProduct] addMenuService.addMenu FINISH");*/
}
