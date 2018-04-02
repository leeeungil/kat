package com.kat.reservation;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kat.product.service.AddProductService;
import com.kat.review.model.ReviewInfoListView;
import com.kat.review.service.ReviewListService;
import com.kat.seat.model.InfoShopAddress;
import com.kat.seat.model.MenuInfoListView;
import com.kat.seat.model.ShopPhotoListView;

@Controller
public class ReservationLsitViewController {

	@Autowired
	private AddProductService addProductService;

	@Autowired
	private ReviewListService reviewListService;

	@RequestMapping("kat/seatInfoLsit/reservation.do")
	public ModelAndView shopListView(@RequestParam(name = "SearchName") String SearchName,
			@RequestParam(name = "page", defaultValue = "1") int pageNumber,
			@RequestParam(name = "userid", defaultValue = "1") String user_id, HttpServletRequest request)
			throws IllegalStateException, IOException {

		System.out.println("로그 ResrvationListView 컨트롤");

		ShopPhotoListView shopPhotoListView = addProductService.getshopPhotoList(SearchName); // 매장 사진 가져오기
		MenuInfoListView menuInfoListView = addProductService.getMenuView(SearchName); // 리스트 구현
		InfoShopAddress infoShopAddress = addProductService.getAddress(SearchName);

		System.out.println("메뉴 리스트 사진 확인" + menuInfoListView);
		System.out.println("매장 사진 여부" + shopPhotoListView);

		ReviewInfoListView reviewInfoListView = reviewListService.getReviewList(SearchName, pageNumber); // 리뷰보기

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("shopView_main");

		modelAndView.addObject("SearchName", SearchName);
		modelAndView.addObject("ShopPhotoList", shopPhotoListView);
		modelAndView.addObject("MenuListInfo", menuInfoListView);
		modelAndView.addObject("InfoShopAddress", infoShopAddress);
		modelAndView.addObject("ListInfoReview", reviewInfoListView);

		return modelAndView;
	}
}
