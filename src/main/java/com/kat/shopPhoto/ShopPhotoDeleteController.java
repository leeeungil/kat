package com.kat.shopPhoto;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.service.AddMenuService;

@Controller
public class ShopPhotoDeleteController {

	@Autowired
	private AddMenuService addMenuService;

	@RequestMapping("kat/shopForm/shopDelete.do")
	public ModelAndView deleteSubmit(@RequestParam(name = "no") int no,
			@RequestParam(name = "shopphoto") String shopphoto, HttpServletRequest request)
			throws IllegalStateException, IOException {

		System.out.println("로그 shopphotoDelete 컨트롤");
		System.out.println(shopphoto);

		addMenuService.shopPhotodelete(no);

		/* 업로드 폴더 시스템 물리적 경로 찾기 */
		String uploadURI = "/uploadfile/shopphoto";
		String dir = request.getSession().getServletContext().getRealPath(uploadURI);
		
		// 삭제 소스
		System.out.println("기존 사진파일 이름 = " + shopphoto);
		File file = new File(dir + "\\" + shopphoto);
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
		modelAndView.setViewName("redirect:/kat/shopPhotoForm/shopPhotoAdd.do");

		return modelAndView;
	}
}
