package com.kat.product.dao;

import java.util.List;

import com.kat.product.model.CityModel;
import com.kat.product.model.ContinentModel;
import com.kat.product.model.CountryModel;
import com.kat.product.model.FavoriteProduct;
import com.kat.product.model.PhotoContentModel;
import com.kat.product.model.ProductCourseModel;
import com.kat.product.model.ProductInfo;
import com.kat.product.model.ProductModel;
import com.kat.product.model.ProductSubModel;
import com.kat.product.model.ProductTypeModel;
import com.kat.seat.model.InfoShopAddress;
import com.kat.seat.model.InfoShopSearch;
import com.kat.seat.model.MenuInfo;
import com.kat.seat.model.ShopPhoto;

public interface ProductDao {

	// PRODUCT 리스트 수
	public int menuSelectCount(String user_id);

	// PRODUCT 리스트 담기
	public List<MenuInfo> menuList(String user_id, int firstRow, int messageCountPerPage);

	// 수정할 데이터 가져오기
	public MenuInfo getMenuinfo(int product_no);

	// 메뉴 (수정)업데이트
	public void menuUpdate(MenuInfo menuInfo);

	// 메뉴 삭제
	public void menudelete(int product_no);
	
	// 매장 사진등록
	public void insertshop(ShopPhoto shopPhoto);

	// 등록된 매장 사진수
	public int shopCount(String user_id);

	// 등록된 매장 리스트로 가져오기
	public List<ShopPhoto> shopPhotoList(String user_id, int firstRow, int totalCount);

	// 매장 사진 삭제
	public void shopPhotodelete(int no);

	// 검색어 키를 이용해서 매장 사진 리스트 뽑기
	public List<ShopPhoto> shopSearchList(String administrator, int firstRow, int endRow);

	// 지역 / 메뉴종류 / 키워드 리스트 담기
	public List<InfoShopSearch> shopSearch7(String area, String menu, String keyword, int firstRow, int searchPerPage);

	// 매장 주소 / 이름 가져오기
	public InfoShopAddress getShopAddress(String searchName);

	// 접속 아이디가 사업자인지 확인하기
	public String getCategory(String user_id);
	
	public int shopCount2(String user_id);

	public InfoShopAddress getShopAddress2(String user_id);

	public List<ShopPhoto> shopPhotoList2(String user_id, int firstRow, int totalCount);

	public int menuSelectCount2();

	public List<MenuInfo> menuList2( int firstRow, int messageCountPerPage);

	
	// 장준영 수정 중
	// country search
	public int productCount_(String country);
	public List<InfoShopSearch> productSearch_1(String country, int firstRow, int searchPerPage);
	
	// 장준영 수정 완료
	// 주요 카테고리 가져오기
	public List<ProductTypeModel> selectProductType();
	public List<ContinentModel> selectContinent();
	public List<CountryModel> selectCountry();
	public List<CityModel> selectCiy();
	
	// 상품 추가하기
	public String findBusinessNumber(String user_id);
	public int findProductNo();
	public void insertProduct(ProductModel productModel);
	public int findProductContentNo();
	public void insertProductContent(PhotoContentModel photoContentModel);
	public void insertProductPhoto(PhotoContentModel photoContentModel);
	public void insertProductCourse(ProductCourseModel productCourseModel);
	public void insertProductSub(ProductSubModel productSubModel);
	
	// 상품 전체 가져오기 ( 여행 상품 메인 )
	public List<ProductInfo> findAllTravelProduct();
	public List<ProductInfo> findTypeTravelProduct(int product_type);
	public List<ProductInfo> findWordTravelProduct(String search_word);
	
	//product_no로 상품 정보 가져오기
	public ProductInfo findProductDetailInfo(int product_no);
	
	// 즐겨찾기 등록
	public void addfavoriteProduct(FavoriteProduct favoriteProduct);
	public void delfavoriteProduct(FavoriteProduct favoriteProduct);
	public List<String> chkFavoriteProduct(String user_id);
}