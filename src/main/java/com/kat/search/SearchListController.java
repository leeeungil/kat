package com.kat.search;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.seat.model.InfoShopSearchListView;
import com.kat.seat.model.Search;
import com.kat.seat.service.AddMenuService;

@Controller
public class SearchListController {

	public static Search searchinfo = new Search();

	@Autowired
	private AddMenuService addMenuService;

	@RequestMapping("kat/SearchList/SearchInfo.do")
	public ModelAndView SearchList(@RequestParam(name = "page", defaultValue = "1") int pageNumber, Search search,
			HttpServletRequest request) throws IllegalStateException, IOException {

		System.out.println("로그 SearchList 컨트롤");

		System.out.println("search 값 확인" + search);

		// 페이지 쓰기위한 조건문
		if (search.getSelect_area() != null && search.getSelect_menu() != null && search.getSelect_key() != null) {
			String area = search.getSelect_area();
			String menu = search.getSelect_menu();
			String key = search.getSelect_key();

			searchinfo.setSelect_area(area);
			searchinfo.setSelect_menu(menu);
			searchinfo.setSelect_key(key);
		}

		ModelAndView modelAndView = new ModelAndView();

		InfoShopSearchListView searchlist = addMenuService.getListInfo(searchinfo, pageNumber);

		/* String Administrator = "hong"; // 검색된 키값 가져와 넣기 */

		System.out.println("searchlist 확인===" + searchlist);
		

		modelAndView.setViewName("searchList_main");
		// 검색한 결과 담기
		modelAndView.addObject("Searchlist", searchlist);
		
		return modelAndView;
	}

}
