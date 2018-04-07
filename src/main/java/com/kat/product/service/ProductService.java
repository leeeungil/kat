package com.kat.product.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kat.product.dao.ProductDao;
import com.kat.product.model.FavoriteProduct;
import com.kat.product.model.ProductInfo;
import com.kat.product.model.ProductInfoList;
import com.kat.seat.model.InfoShopAddress;
import com.kat.seat.model.InfoShopSearch;
import com.kat.seat.model.InfoShopSearchListView;
import com.kat.seat.model.MenuInfo;
import com.kat.seat.model.Search;
import com.kat.seat.model.ShopPhoto;
import com.kat.seat.model.ShopPhotoListView;

public class ProductService {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	private ProductDao dao;

	// 상품 추가하기
	public void addProduct(ProductInfo productInfo) {
System.out.println("[AddProductService addProduct] ACCESS SUCCESS");
System.out.println("[AddProductService addProduct]  " +productInfo.toString());
		dao = sqlSessionTemplate.getMapper(ProductDao.class);
		String businessNumber = dao.findBusinessNumber(productInfo.getUser_id());
		productInfo.setBusiness_number(businessNumber);
System.out.println("[AddProductService addProduct] MAPPER(findBusinessNumber) RETURN");
System.out.println("[AddProductService addProduct] businessNumber : " + businessNumber);
		dao.insertProduct(productInfo);
System.out.println("[AddProductService addProduct] MAPPER(insertProduct) FINISH");
		int product_no = dao.findProductNo(productInfo);
		productInfo.setProduct_no(product_no);
System.out.println("[AddProductService addProduct] MAPPER(findProductNo) RETURN");
System.out.println("[AddProductService addProduct] product_no : " + product_no);
		dao.insertProductContent(productInfo);
		int product_content_no = dao.findProductContentNo(productInfo);
		productInfo.setProduct_content_no(product_content_no);
System.out.println("[AddProductService addProduct] MAPPER(findProductContentNo) RETURN");
System.out.println("[AddProductService addProduct] product_content_no : " + product_content_no);
		dao.insertProductPhoto(productInfo);
		dao.insertProductCourse(productInfo);
System.out.println("[AddProductService addProduct] MAPPER(insertImage) FINISH");
	}
	
	// FIND ALL PRODUCT
	public List<ProductInfo> findAllTravelProduct() {
System.out.println("[AddProductService findAllTravelProduct] FIND ALL PRODUCT ACCESS");
        dao = sqlSessionTemplate.getMapper(ProductDao.class);
		List<ProductInfo> productAllInfoList = null;
		productAllInfoList = dao.findAllTravelProduct();
System.out.println("[AddProductService findAllTravelProduct] MAPPER(findAllTravelProduct) RETURN");
System.out.println("[AddProductService findAllTravelProduct] " + productAllInfoList.size());
System.out.println("[AddProductService findAllTravelProduct] " + productAllInfoList.get(0).toString());
		return productAllInfoList;
	}
	// FIND PRODUCT_TYPE PRODUCT
	public List<ProductInfo> findTypeTravelProduct(int product_type) {
System.out.println("[AddProductService findTypeTravelProduct] FIND TYPE PRODUCT ACCESS");
        dao = sqlSessionTemplate.getMapper(ProductDao.class);
		List<ProductInfo> productAllInfoList = null;
		productAllInfoList = dao.findTypeTravelProduct(product_type);
System.out.println("[AddProductService findTypeTravelProduct] MAPPER(findAllTravelProduct) RETURN");
System.out.println("[AddProductService findTypeTravelProduct] " + productAllInfoList.size());
		return productAllInfoList;
	}
	// FIND WORD PRODUCT
		public List<ProductInfo> findWordTravelProduct(String search_word) {
	System.out.println("[AddProductService findWordTravelProduct] FIND WORD PRODUCT ACCESS");
	        dao = sqlSessionTemplate.getMapper(ProductDao.class);
			List<ProductInfo> productAllInfoList = null;
			productAllInfoList = dao.findWordTravelProduct("%"+search_word+"%");
	System.out.println("[AddProductService findWordTravelProduct] MAPPER(findWordTravelProduct) RETURN");
	System.out.println("[AddProductService findWordTravelProduct] " + productAllInfoList.size());
			return productAllInfoList;
		}
		
	// FIND DETAIL PRODUCT INFO
	public ProductInfo findProductDetailInfo(int product_no) {
System.out.println("[AddProductService findProductDetailInfo] FIND PRODUCT DETAIL INFO ACCESS");
System.out.println("[AddProductService findProductDetailInfo] product_no : " + product_no);
        dao = sqlSessionTemplate.getMapper(ProductDao.class);
		ProductInfo productInfo = null;
		productInfo = dao.findProductDetailInfo(product_no);
System.out.println("[AddProductService findProductDetailInfo] MAPPER(findProductDetailInfo) RETURN");
System.out.println("[AddProductService findProductDetailInfo] " + productInfo.toString());
		return productInfo;
	}
	
	// ADD FAVORITE PRODUCT
	public void addfavoriteProduct(FavoriteProduct favoriteProduct) {
System.out.println("[AddProductService addfavoriteProduct] ADD FAVORITE PRODUCT ACCESS");
System.out.println("[AddProductService addfavoriteProduct] " + favoriteProduct.toString());
        dao = sqlSessionTemplate.getMapper(ProductDao.class);
		dao.addfavoriteProduct(favoriteProduct);
System.out.println("[AddProductService addfavoriteProduct] MAPPER(findProductDetailInfo) FINISH");
	}
	public void delfavoriteProduct(FavoriteProduct favoriteProduct) {
System.out.println("[AddProductService delfavoriteProduct] ADD FAVORITE PRODUCT ACCESS");
System.out.println("[AddProductService delfavoriteProduct] " + favoriteProduct.toString());
        dao = sqlSessionTemplate.getMapper(ProductDao.class);
		dao.delfavoriteProduct(favoriteProduct);
System.out.println("[AddProductService delfavoriteProduct] MAPPER(findProductDetailInfo) FINISH");
	}
	// chk favorite Product
	public List<String> chkFavoriteProduct(String user_id) {
System.out.println("[AddProductService chkFavoriteProduct] CHK FAVORITE PRODUCT ACCESS");
System.out.println("[AddProductService chkFavoriteProduct] user_id : " + user_id);
        dao = sqlSessionTemplate.getMapper(ProductDao.class);
        List<String> favoriteList = new ArrayList<String>();
        favoriteList = dao.chkFavoriteProduct(user_id);
System.out.println("[AddProductService delfavoriteProduct] MAPPER(findProductDetailInfo) FINISH");
		return favoriteList;
	}
	
	
	// 업데이트 할 제품 데이터 가져오기
	public MenuInfo getMenuUpdateInfo(int product_no) {
System.out.println("[AddProductService getMenuUpdateInfo] ACCESS SUCCESS");
System.out.println("[AddProductService getMenuUpdateInfo] product_no : " + product_no);
		dao = sqlSessionTemplate.getMapper(ProductDao.class);
		MenuInfo info = dao.getMenuinfo(product_no);
System.out.println("[AddProductService getMenuUpdateInfo] MAPPER(getMenuinfo) RETURN");
System.out.println("[AddProductService getMenuUpdateInfo] "+ info.toString());
		return info;
	}

	// 제품 수정하기
	public void menuUpdate(MenuInfo menuInfo) {
System.out.println("[AddProductService menuUpdate] ACCESS SUCCESS");
System.out.println("[AddProductService menuUpdate] menuInfo : " + menuInfo.toString());
		dao = sqlSessionTemplate.getMapper(ProductDao.class);
		dao.menuUpdate(menuInfo);
System.out.println("[AddProductService menuUpdate] MAPPER(menuUpdate) FINISH");
	}

	// 메뉴 삭제하기
	public void menudelete(int product_no) {
System.out.println("[AddProductService menudelete] ACCESS SUCCESS");
System.out.println("[AddProductService menudelete] product_no : " + product_no);
		dao = sqlSessionTemplate.getMapper(ProductDao.class);
		dao.menudelete(product_no);
System.out.println("[AddProductService menudelete] MAPPER(menudelete) FINISH");
	}

	// 매장 사진 올리기
	public void addShopPhoto(ShopPhoto shopPhoto) {
System.out.println("[AddProductService addShopPhoto] ACCESS SUCCESS");
System.out.println("[AddProductService addShopPhoto] shopPhoto : " + shopPhoto.toString());
		dao = sqlSessionTemplate.getMapper(ProductDao.class);
		dao.insertshop(shopPhoto);
System.out.println("[AddProductService addShopPhoto] MAPPER(insertshop) FINISH");
	}

	// 매장 사진 리스트로 가져오기
	public ShopPhotoListView getshopPhotoList(String user_id) {
System.out.println("[AddProductService getshopPhotoList] ACCESS SUCCESS");
System.out.println("[AddProductService getshopPhotoList] userid : " + user_id);
		dao = sqlSessionTemplate.getMapper(ProductDao.class);
		ShopPhotoListView shopPhotoListView = new ShopPhotoListView();
		List<ShopPhoto> shopPhoto = null;
		int firstRow = 0;

		int TotalCount = dao.shopCount(user_id); // 매장 사진 수
System.out.println("[AddProductService addShopPhoto] MAPPER(shopCount) RETURN");
System.out.println("[AddProductService addShopPhoto] TotalCount : "+ TotalCount);

		shopPhoto = dao.shopPhotoList(user_id, firstRow, TotalCount);
System.out.println("[AddProductService addShopPhoto] MAPPER(shopPhotoList) RETURN");
System.out.println("[AddProductService addShopPhoto] shopPhoto.size() : "+ shopPhoto.size());
		shopPhotoListView.setPhotoInfoList(shopPhoto);
		shopPhotoListView.setPageTotalCount(TotalCount);
		shopPhotoListView.setUser_id(user_id);

		return shopPhotoListView;
	}

	// 매장사진 리스트 페이지
	private static final int COUNT_PER_PAGE = 3; // 한 페이지에 출력할 데이터
	public ShopPhotoListView getshopPhotoDelete(String userid, int pageNumber) {
		dao = sqlSessionTemplate.getMapper(ProductDao.class);
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

		dao = sqlSessionTemplate.getMapper(ProductDao.class);
		dao.shopPhotodelete(no);

	}

	// 매장 사진 한장가져오기
	public ShopPhotoListView getshopPhoto(String administrator) {

		dao = sqlSessionTemplate.getMapper(ProductDao.class);
		ShopPhotoListView view = new ShopPhotoListView();
		List<ShopPhoto> shopPhoto = null;
		int firstRow = 0;
		int endRow = 1;

		shopPhoto = dao.shopSearchList(administrator, firstRow, endRow);

		view.setPhotoInfoList(shopPhoto);

		return view;
	}

	// 매뉴 리스트 처음부터 끝까지 가져오기
	public ProductInfoList getMenuView(String user_id) {
		dao = sqlSessionTemplate.getMapper(ProductDao.class);

		ProductInfoList view = new ProductInfoList();
		List<MenuInfo> productList = null;
		int firstRow = 0;

		int TotalCount = dao.menuSelectCount(user_id);
System.out.println("[AddProductService getMenuView] ACCESS SUCCESS");
System.out.println("[AddProductService getMenuView] userid : " + user_id);		
		productList = dao.menuList(user_id, firstRow, TotalCount);

		view.setMenuInfoList(productList);
		view.setPageTotalCount(TotalCount);

		return view;
	}

	// 검색 코드부분
	private static final int SEARCH_PER_PAGE = 6; // 한 페이지에 출력할 데이터
	// 검색 리스트 가져오기
	public InfoShopSearchListView getListInfo(Search search, int pageNumber) {
System.out.println("[AddProductService getListInfo] SEARCH RESULT LIST ACCESS");
System.out.println("[AddProductService getListInfo] " + search.toString());
System.out.println("[AddProductService getListInfo] pageNumber : " + pageNumber);
		dao = sqlSessionTemplate.getMapper(ProductDao.class);
		InfoShopSearchListView view = new InfoShopSearchListView();
		List<InfoShopSearch> infoShopSearch = null;
		
		int firstRow = 0;
		int TotalCount = 0;
		int resultCode = 0;
		
		String country = search.getSelect_country();
		String city = search.getSelect_city();
		String product = search.getSelect_product();
		
		if (!country.equals("국가") && city.equals("도시") && product.equals("상품")) {
System.out.println("[AddProductService getListInfo] TYPE : SEARCH VALUE continent & country");
System.out.println("[AddProductService getListInfo] MAPPER(shopCountList) RETURN");
System.out.println("[AddProductService getListInfo] TotalCount : " + TotalCount);			
			firstRow = (pageNumber - 1) * SEARCH_PER_PAGE;
			infoShopSearch = dao.productSearch_1(country, firstRow, SEARCH_PER_PAGE); // 키워드로 검색했을때 리스트
System.out.println("[AddProductService getListInfo] MAPPER(shopSearch) RETURN");
System.out.println("[AddProductService getListInfo] " + infoShopSearch.toString());				
			pageNumber = TotalCount / SEARCH_PER_PAGE;
			if (TotalCount % SEARCH_PER_PAGE != 0) {
				pageNumber += 1;
			}

			view.setShopInfoList(infoShopSearch);
			view.setPageTotalCount(TotalCount);
			view.setPageNumber(pageNumber);
			view.setResultCode(resultCode);
		}
		return view;
	}

	// 매장 주소 이름 가져오기
	public InfoShopAddress getAddress(String searchName) {
		dao = sqlSessionTemplate.getMapper(ProductDao.class);
		
		InfoShopAddress infoShopAddress = dao.getShopAddress(searchName);
		
		return infoShopAddress;
	}

	// 사업자인지 체크하기
	public String getCategory(String userid) {
		dao = sqlSessionTemplate.getMapper(ProductDao.class);
		
		String category = dao.getCategory(userid);
		
		return category;
	}
}
