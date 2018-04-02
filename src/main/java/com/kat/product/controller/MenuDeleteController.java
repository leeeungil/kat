package com.kat.product.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.product.service.ProductService;

@Controller
public class MenuDeleteController {

	@Autowired
	private ProductService addProductService;

	@RequestMapping("kat/menuForm/menuDelete.do")
	public ModelAndView deleteSubmit(@RequestParam(name = "no") int no,
			@RequestParam(name = "menuphoto") String menuphoto, HttpServletRequest request)
			throws IllegalStateException, IOException {

		System.out.println("로그 MenuDelete 컨트롤");
		System.out.println(menuphoto);

		addProductService.menudelete(no);

		/* 업로드 폴더 시스템 물리적 경로 찾기 */
		String uploadURI = "/uploadfile/menuphoto";
		String dir = request.getSession().getServletContext().getRealPath(uploadURI);
		
		// 삭제 소스
		System.out.println("기존 사진파일 이름 = " + menuphoto);
		File file = new File(dir + "\\" + menuphoto);
		if (file.exists()) {
			if (file.delete()) {
				System.out.println("파일삭제 성공");
			} else {
				System.out.println("파일삭제 실패");
			}
		} else {
			System.out.println("파일이 존재하지 않습니다.");
		}
		// 삭제 소스 끝부분

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:/kat/productForm/productAdd.do");

		return modelAndView;
	}
}
