package com.kat.seat.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kat.seat.dao.MenuDao;
import com.kat.seat.model.InfoShopAddress;
import com.kat.seat.model.InfoShopSearch;
import com.kat.seat.model.InfoShopSearchListView;
import com.kat.seat.model.MenuInfo;
import com.kat.seat.model.MenuInfoListView;
import com.kat.seat.model.Search;
import com.kat.seat.model.ShopPhoto;
import com.kat.seat.model.ShopPhotoListView;

public class AddMenuService {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	private MenuDao dao;

	// 좌석 집어넣기
	public void addMenu(MenuInfo menuInfo) {
System.out.println("[AddMenuService addMenu] ACCESS SUCCESS");
System.out.println("[AddMenuService addMenu]  " +menuInfo.toString());
		dao = sqlSessionTemplate.getMapper(MenuDao.class);
		dao.insertMenu(menuInfo);
System.out.println("[AddMenuService addMenu] MAPPER(insertMenu) FINISH");
	}

	// PRODUCT 리스트 페이지
	private static final int MESSAGE_COUNT_PER_PAGE = 3; // 한 페이지에 출력할 데이터
	/*public MenuInfoListView getMenuList(String user_id, int pageNumber) {
System.out.println("[AddMenuService getMenuList] ACCESS SUCCESS");
System.out.println("[AddMenuService getMenuList] user_id : " + user_id);
System.out.println("[AddMenuService getMenuList] pageNumber : " + pageNumber);
        dao = sqlSessionTemplate.getMapper(MenuDao.class);
		MenuInfoListView menuListInfoview = new MenuInfoListView();
		List<MenuInfo> productList = null;
		int PageNumber;
		int firstRow = 0;
		
		int TotalCount = dao.menuSelectCount(user_id);
System.out.println("[AddMenuService getMenuList] MAPPER(menuSelectCount) RETURN");
System.out.println("[AddMenuService getMenuList] TotalCount : " + TotalCount);
		
		firstRow = (pageNumber - 1) * MESSAGE_COUNT_PER_PAGE;
		productList = dao.menuList(user_id, firstRow, MESSAGE_COUNT_PER_PAGE);
System.out.println("[AddMenuService getMenuList] productList : " + productList);
System.out.println("[AddMenuService getMenuList] MAPPER(menuList) RETURN");
System.out.println("[AddMenuService getMenuList] " + productList.toString());
		PageNumber = TotalCount / MESSAGE_COUNT_PER_PAGE;
		if (TotalCount % MESSAGE_COUNT_PER_PAGE != 0) {
			PageNumber += 1;
		}
		menuListInfoview.setMenuInfoList(productList);
		menuListInfoview.setPageTotalCount(TotalCount);
		menuListInfoview.setPageNumber(PageNumber);
		return menuListInfoview;
	}*/
	
	@Autowired
	public void getUploadForm(MenuInfo menuInfo) {
		dao = sqlSessionTemplate.getMapper(MenuDao.class);
		dao.menuList(menuInfo);
	}

	// 업데이트 할 제품 데이터 가져오기
	public MenuInfo getMenuUpdateInfo(int product_no) {
System.out.println("[AddMenuService getMenuUpdateInfo] ACCESS SUCCESS");
System.out.println("[AddMenuService getMenuUpdateInfo] product_no : " + product_no);
		dao = sqlSessionTemplate.getMapper(MenuDao.class);
		MenuInfo info = dao.getMenuinfo(product_no);
System.out.println("[AddMenuService getMenuUpdateInfo] MAPPER(getMenuinfo) RETURN");
System.out.println("[AddMenuService getMenuUpdateInfo] "+ info.toString());
		return info;
	}

	// 제품 수정하기
	public void menuUpdate(MenuInfo menuInfo) {
System.out.println("[AddMenuService menuUpdate] ACCESS SUCCESS");
System.out.println("[AddMenuService menuUpdate] menuInfo : " + menuInfo.toString());
		dao = sqlSessionTemplate.getMapper(MenuDao.class);
		dao.menuUpdate(menuInfo);
System.out.println("[AddMenuService menuUpdate] MAPPER(menuUpdate) FINISH");
	}

	// 메뉴 삭제하기
	public void menudelete(int product_no) {
System.out.println("[AddMenuService menudelete] ACCESS SUCCESS");
System.out.println("[AddMenuService menudelete] product_no : " + product_no);
		dao = sqlSessionTemplate.getMapper(MenuDao.class);
		dao.menudelete(product_no);
System.out.println("[AddMenuService menudelete] MAPPER(menudelete) FINISH");
	}

	// 매장 사진 올리기
	public void addShopPhoto(ShopPhoto shopPhoto) {
System.out.println("[AddMenuService addShopPhoto] ACCESS SUCCESS");
System.out.println("[AddMenuService addShopPhoto] shopPhoto : " + shopPhoto.toString());
		dao = sqlSessionTemplate.getMapper(MenuDao.class);
		dao.insertshop(shopPhoto);
System.out.println("[AddMenuService addShopPhoto] MAPPER(insertshop) FINISH");
	}

	// 매장 사진 리스트로 가져오기
	public ShopPhotoListView getshopPhotoList(String user_id) {
System.out.println("[AddMenuService getshopPhotoList] ACCESS SUCCESS");
System.out.println("[AddMenuService getshopPhotoList] userid : " + user_id);
		dao = sqlSessionTemplate.getMapper(MenuDao.class);
		ShopPhotoListView shopPhotoListView = new ShopPhotoListView();
		List<ShopPhoto> shopPhoto = null;
		int firstRow = 0;

		int TotalCount = dao.shopCount(user_id); // 매장 사진 수
System.out.println("[AddMenuService addShopPhoto] MAPPER(shopCount) RETURN");
System.out.println("[AddMenuService addShopPhoto] TotalCount : "+ TotalCount);

		shopPhoto = dao.shopPhotoList(user_id, firstRow, TotalCount);
System.out.println("[AddMenuService addShopPhoto] MAPPER(shopPhotoList) RETURN");
System.out.println("[AddMenuService addShopPhoto] shopPhoto.size() : "+ shopPhoto.size());
		shopPhotoListView.setPhotoInfoList(shopPhoto);
		shopPhotoListView.setPageTotalCount(TotalCount);
		shopPhotoListView.setUser_id(user_id);

		return shopPhotoListView;
	}

/*	public ShopPhotoListView getshopPhotoList2(String user_id) {
System.out.println("[AddMenuService getshopPhotoList2] SHOP_PHOTO_LIST ACCESS");
System.out.println("[AddMenuService getshopPhotoList2] user_id : "+ user_id);
		dao = sqlSessionTemplate.getMapper(MenuDao.class);
		ShopPhotoListView view = new ShopPhotoListView();
		List<ShopPhoto> shopPhoto = null;
		int firstRow = 0;

		int TotalCount = dao.shopCount2(user_id); // 매장 사진 수
System.out.println("[AddMenuService getshopPhotoList2] MAPPER(shopCount2) RETURN");
System.out.println("[AddMenuService getshopPhotoList2] TotalCount : "+ TotalCount);
		shopPhoto = dao.shopPhotoList2(user_id, firstRow, TotalCount);
System.out.println("[AddMenuService getshopPhotoList2] MAPPER(shopPhotoList2) RETURN");
System.out.println("[AddMenuService getshopPhotoList2] "+ shopPhoto.toString());

		view.setPhotoInfoList(shopPhoto);
		view.setPageTotalCount(TotalCount);
		view.setUser_id(user_id);

		return view;
	}
	
	public InfoShopAddress getAddress2(String user_id, int pageNumber) {
System.out.println("[AddMenuService getAddress2] ACCESS SUCCESS");
System.out.println("[AddMenuService getAddress2] user_id : "+ user_id);
System.out.println("[AddMenuService getAddress2] pageNumber : "+ pageNumber);
		dao = sqlSessionTemplate.getMapper(MenuDao.class);
		InfoShopAddress infoShopAddress = dao.getShopAddress2(user_id);
System.out.println("[AddMenuService getAddress2] MAPPER(getShopAddress2) RETURN");
System.out.println("[AddMenuService getAddress2] "+ infoShopAddress.toString());
		return infoShopAddress;
	}

	public MenuInfoListView getMenuView2(int pageNumber) {
		dao = sqlSessionTemplate.getMapper(MenuDao.class);

		MenuInfoListView view = new MenuInfoListView();
		List<MenuInfo> seatList = null;
		int PageNumber;
		int firstRow = 0;

		int TotalCount = dao.menuSelectCount2();

		firstRow = (pageNumber - 1) * MESSAGE_COUNT_PER_PAGE;

		seatList = dao.menuList2( firstRow, MESSAGE_COUNT_PER_PAGE);


		System.out.println(seatList);
		PageNumber = TotalCount / MESSAGE_COUNT_PER_PAGE;

		if (TotalCount % MESSAGE_COUNT_PER_PAGE != 0) {
			PageNumber += 1;
		}

		view.setMenuInfoList(seatList);
		view.setPageTotalCount(TotalCount);
		view.setPageNumber(PageNumber);

		return view;
	}
*/
	// 매장사진 리스트 페이지
	private static final int COUNT_PER_PAGE = 3; // 한 페이지에 출력할 데이터
	public ShopPhotoListView getshopPhotoDelete(String userid, int pageNumber) {
		dao = sqlSessionTemplate.getMapper(MenuDao.class);
		ShopPhotoListView view = new ShopPhotoListView();
		List<ShopPhoto> shopPhoto = null;
		int firstRow = 0;
		int PageNumber;

		int TotalCount = dao.shopCount(userid); // 매장 사진 수
		firstRow = (pageNumber - 1) * COUNT_PER_PAGE;
		shopPhoto = dao.shopPhotoList(userid, firstRow, COUNT_PER_PAGE);

		PageNumber = TotalCount / COUNT_PER_PAGE;

		if (TotalCount % COUNT_PER_PAGE != 0) {
			PageNumber += 1;
		}

		view.setPhotoInfoList(shopPhoto);
		view.setPageTotalCount(TotalCount);
		view.setPageNumber(PageNumber);

		return view;
	}

	// 매장사진 삭제
	public void shopPhotodelete(int no) {

		dao = sqlSessionTemplate.getMapper(MenuDao.class);
		dao.shopPhotodelete(no);

	}

	// 매장 사진 한장가져오기
	public ShopPhotoListView getshopPhoto(String administrator) {

		dao = sqlSessionTemplate.getMapper(MenuDao.class);
		ShopPhotoListView view = new ShopPhotoListView();
		List<ShopPhoto> shopPhoto = null;
		int firstRow = 0;
		int endRow = 1;

		shopPhoto = dao.shopSearchList(administrator, firstRow, endRow);

		view.setPhotoInfoList(shopPhoto);

		return view;
	}

	// 매뉴 리스트 처음부터 끝까지 가져오기
	public MenuInfoListView getMenuView(String userid) {
		dao = sqlSessionTemplate.getMapper(MenuDao.class);

		MenuInfoListView view = new MenuInfoListView();
		List<MenuInfo> seatList = null;
		int firstRow = 0;

		int TotalCount = dao.menuSelectCount(userid);
		/*seatList = dao.menuList(userid, firstRow, TotalCount);*/

		view.setMenuInfoList(seatList);
		view.setPageTotalCount(TotalCount);

		return view;
	}

	// 아이디 company_no 가져오기
	/*public int companyinfo(String user_id) {
System.out.println("[AddMenuService companyinfo] ACCESS SUCCESS");
System.out.println("[AddMenuService companyinfo] user_id : "+ user_id);
		dao = sqlSessionTemplate.getMapper(MenuDao.class);
		int member_no = dao.member_no(user_id);
System.out.println("[AddMenuService companyinfo] MAPPER(member_no) RETURN");
System.out.println("[AddMenuService companyinfo] member_no : "+ member_no);
		return member_no;
	}*/

	// 검색 코드부분
	private static final int SEARCH_PER_PAGE = 6; // 한 페이지에 출력할 데이터
	// 검색 리스트 가져오기
	public InfoShopSearchListView getListInfo(Search search, int pageNumber) {
System.out.println("[AddMenuService getListInfo] SEARCH RESULT LIST ACCESS");
System.out.println("[AddMenuService getListInfo] " + search.toString());
System.out.println("[AddMenuService getListInfo] pageNumber : " + pageNumber);
		dao = sqlSessionTemplate.getMapper(MenuDao.class);
		InfoShopSearchListView view = new InfoShopSearchListView();
		List<InfoShopSearch> infoShopSearch = null;
		
		int firstRow = 0;
		int TotalCount = 0;
		int resultCode = 0;
		
		String continent = search.getSelect_continent();
		String country = search.getSelect_country();
		String city = search.getSelect_city();
		String product = search.getSelect_product();
		
//		String area = search.getSelect_continent(); // 대륙
//		String menu = search.getSelect_country(); // 메뉴
//		String keyword = search.getSelect_city(); // 키워드

		if (continent.equals("대륙") && country.equals("국가") && city.equals("도시") && product.equals("상품")) {
System.out.println("[AddMenuService getListInfo] TYPE : SEARCH VALUE EMPTY");
			resultCode = 1; // 알람 설정
			view.setResultCode(resultCode);
		} else if (!continent.equals("대륙") && !country.equals("국가") && city.equals("도시") && product.equals("상품")) {
System.out.println("[AddMenuService getListInfo] TYPE : SEARCH VALUE continent & country");
			TotalCount = dao.productCount_12(continent, country); // 검색된 리스트 수
System.out.println("[AddMenuService getListInfo] MAPPER(shopCountList) RETURN");
System.out.println("[AddMenuService getListInfo] TotalCount : " + TotalCount);			
			firstRow = (pageNumber - 1) * SEARCH_PER_PAGE;
			infoShopSearch = dao.productSearch_12(continent, country, firstRow, SEARCH_PER_PAGE); // 키워드로 검색했을때 리스트
System.out.println("[AddMenuService getListInfo] MAPPER(shopSearch) RETURN");
System.out.println("[AddMenuService getListInfo] " + infoShopSearch.toString());				
			pageNumber = TotalCount / SEARCH_PER_PAGE;
			if (TotalCount % SEARCH_PER_PAGE != 0) {
				pageNumber += 1;
			}

			view.setShopInfoList(infoShopSearch);
			view.setPageTotalCount(TotalCount);
			view.setPageNumber(pageNumber);
			view.setResultCode(resultCode);
		}
//		 else if (area.equals("대륙선택")&& keyword.equals("")) {
//			System.out.println("메뉴만 선택 했을때");
//
//			TotalCount = dao.shopCountList2(menu); // 검색된 리스트 수
//
//			firstRow = (pageNumber - 1) * SEARCH_PER_PAGE;
//			infoShopSearch = dao.shopSearch2(menu, firstRow, SEARCH_PER_PAGE);
//			pageNumber = TotalCount / SEARCH_PER_PAGE;
//			if (TotalCount % SEARCH_PER_PAGE != 0) {
//				pageNumber += 1;
//			}
//
//			view.setShopInfoList(infoShopSearch);
//			view.setPageTotalCount(TotalCount);
//			view.setPageNumber(pageNumber);
//			view.setResultCode(resultCode);
//
//		} else if (menu.equals("메뉴선택") && keyword.equals("")) {
//			System.out.println("대륙만 선택 했을때");
//			
//			TotalCount = dao.shopCountList3(area); // 검색된 리스트 수
//
//			firstRow = (pageNumber - 1) * SEARCH_PER_PAGE;
//			infoShopSearch = dao.shopSearch3(area, firstRow, SEARCH_PER_PAGE);
//			pageNumber = TotalCount / SEARCH_PER_PAGE;
//			if (TotalCount % SEARCH_PER_PAGE != 0) {
//				pageNumber += 1;
//			}
//
//			view.setShopInfoList(infoShopSearch);
//			view.setPageTotalCount(TotalCount);
//			view.setPageNumber(pageNumber);
//			view.setResultCode(resultCode);
//			
//
//		} else if (menu.equals("메뉴선택")) {
//			System.out.println("지역 / 키워드 입력 ");
//			
//			TotalCount = dao.shopCountList4(area , keyword); // 검색된 리스트 수
//
//			firstRow = (pageNumber - 1) * SEARCH_PER_PAGE;
//			infoShopSearch = dao.shopSearch4(area, keyword, firstRow, SEARCH_PER_PAGE);
//			pageNumber = TotalCount / SEARCH_PER_PAGE;
//			if (TotalCount % SEARCH_PER_PAGE != 0) {
//				pageNumber += 1;
//			}
//
//			view.setShopInfoList(infoShopSearch);
//			view.setPageTotalCount(TotalCount);
//			view.setPageNumber(pageNumber);
//			view.setResultCode(resultCode);
//
//		} else if (area.equals("지역선택")) {
//			System.out.println("메뉴 / 키워드 입력 ");
//			
//			TotalCount = dao.shopCountList5(menu , keyword); // 검색된 리스트 수
//
//			firstRow = (pageNumber - 1) * SEARCH_PER_PAGE;
//			infoShopSearch = dao.shopSearch5(menu, keyword, firstRow, SEARCH_PER_PAGE);
//			pageNumber = TotalCount / SEARCH_PER_PAGE;
//			if (TotalCount % SEARCH_PER_PAGE != 0) {
//				pageNumber += 1;
//			}
//
//			view.setShopInfoList(infoShopSearch);
//			view.setPageTotalCount(TotalCount);
//			view.setPageNumber(pageNumber);
//			view.setResultCode(resultCode);
//			
//
//		} else if (keyword.equals("")) {
//			System.out.println("지역 / 메뉴 입력 ");
//			
//			TotalCount = dao.shopCountList6(area , menu); // 검색된 리스트 수
//
//			firstRow = (pageNumber - 1) * SEARCH_PER_PAGE;
//			infoShopSearch = dao.shopSearch6(area, menu, firstRow, SEARCH_PER_PAGE);
//			pageNumber = TotalCount / SEARCH_PER_PAGE;
//			if (TotalCount % SEARCH_PER_PAGE != 0) {
//				pageNumber += 1;
//			}
//
//			view.setShopInfoList(infoShopSearch);
//			view.setPageTotalCount(TotalCount);
//			view.setPageNumber(pageNumber);
//			view.setResultCode(resultCode);
//			
//
//		} else {
//			System.out.println("전체 입력 했을때");
//			
//			TotalCount = dao.shopCountList7(area , menu , keyword ); // 검색된 리스트 수
//
//			firstRow = (pageNumber - 1) * SEARCH_PER_PAGE;
//			infoShopSearch = dao.shopSearch7(area, menu, keyword, firstRow, SEARCH_PER_PAGE);
//			pageNumber = TotalCount / SEARCH_PER_PAGE;
//			if (TotalCount % SEARCH_PER_PAGE != 0) {
//				pageNumber += 1;
//			}
//
//			view.setShopInfoList(infoShopSearch);
//			view.setPageTotalCount(TotalCount);
//			view.setPageNumber(pageNumber);
//			view.setResultCode(resultCode);
//			
//		}

		return view;
	}

	// 매장 주소 이름 가져오기
	public InfoShopAddress getAddress(String searchName) {
		dao = sqlSessionTemplate.getMapper(MenuDao.class);
		
		InfoShopAddress infoShopAddress = dao.getShopAddress(searchName);
		
		return infoShopAddress;
	}

	// 사업자인지 체크하기
	public String getCategory(String userid) {
		dao = sqlSessionTemplate.getMapper(MenuDao.class);
		
		String category = dao.getCategory(userid);
		
		return category;
	}
}
