package com.kat.menu;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.model.MenuInfo;
import com.kat.seat.service.AddMenuService;

@Controller
public class MenuUpdateController {

	@Autowired
	private AddMenuService addMenuService;

	@RequestMapping("kat/menuForm/MenuUpdate.do")
	public ModelAndView listSubmit(@RequestParam(name = "no") int no, MenuInfo menuInfo,
			@RequestParam(name = "menuphoto") String menuphoto, MultipartHttpServletRequest request)
			throws IllegalStateException, IOException {

		System.out.println("로그 MenuUpdate 컨트롤");
		String userid = (String) request.getSession(false).getAttribute("user_id"); // 로그인한 아이디 집어넣기

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

		// 업데이트 (수정) 하기
		menuInfo.setMenu_no(no);
		addMenuService.menuUpdate(menuInfo);

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("kat_sucess/menuUpdateSucess_main");

		// 수정된 데이터 가져오기
		MenuInfo menuInfoUpdate = addMenuService.getMenuUpdateInfo(no);
		modelAndView.addObject("MenuUpdateSucess", menuInfoUpdate);

		// 수정되어 기존 사진 삭제 소스
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

		return modelAndView;
	}
}
