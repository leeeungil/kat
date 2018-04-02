package com.kat.search;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.product.service.ProductService;
import com.kat.seat.model.InfoShopSearchListView;
import com.kat.seat.model.Search;

@Controller
public class SearchListController {

	public static Search searchinfo = new Search();

	@Autowired
	private ProductService addProductService;

	@RequestMapping("kat/SearchList/SearchInfo.do")
	public ModelAndView SearchList(@RequestParam(name = "page", defaultValue = "1") int pageNumber, Search search,
			HttpServletRequest request) throws IllegalStateException, IOException {
System.out.println("[SearchListController SearchList] ACCESS ACCESS");
System.out.println("[SearchListController SearchList] pageNumber : " + pageNumber);
System.out.println("[SearchListController SearchList] " + search.toString());
		ModelAndView modelAndView = new ModelAndView();
		InfoShopSearchListView searchlist = addProductService.getListInfo(searchinfo, pageNumber);
System.out.println("[SearchListController SearchList] " + searchlist.toString());		
		modelAndView.setViewName("searchList_main");
		modelAndView.addObject("Searchlist", searchlist);
System.out.println("=============================================================");	
		return modelAndView;
	}
}
