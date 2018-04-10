package com.kat.product.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kat.product.model.AdminProductList;
import com.kat.product.model.FavoriteProduct;
import com.kat.product.model.PhotoContentModel;
import com.kat.product.model.ProductCourseModel;
import com.kat.product.model.ProductInfo;
import com.kat.product.model.ProductModel;
import com.kat.product.model.ProductSubModel;
import com.kat.product.service.ProductService;

@Controller
@RequestMapping("product")
public class ProductController {

	@Autowired
	private ProductService productService;
	
	/* 유저 아이디로 검색 */
	@RequestMapping("findUserIdProduct")
	public ModelAndView findUserIdProduct(HttpServletRequest request) throws Exception {
System.out.println("[ProductController findUserIdProduct] FIND ALL PRODUCT ACCESS");
		ModelAndView modelAndView = new ModelAndView();
		List<AdminProductList> adminProductList = null;
		String user_id = (String) request.getSession(false).getAttribute("user_id");
System.out.println("[ProductController findUserIdProduct] user_id : "+user_id);
		adminProductList = productService.findUserIdProduct(user_id);
System.out.println("[ProductController findUserIdProduct] ProductList.size() : "+ adminProductList.size());
if(adminProductList.size() != 0) {
	System.out.println("[ProductController findUserIdProduct] "+ adminProductList.get(0).toString());
}
		modelAndView.addObject("adminProductList", adminProductList);
		modelAndView.setViewName("adminLayout/adminProductList");
System.out.println("[ProductController findUserIdProduct] go  ========> adminLayout/adminProductList");
System.out.println("=============================================================");
		return modelAndView;
	}
	
	@RequestMapping(value ="findUserProfile", produces = "application/json; charset=utf-8")
	@ResponseBody
	public ProductModel findUserProfile(int product_no) throws Exception {
System.out.println("[ProductController findUserProfile] FIND USER PROFILE BY PRODUCT NO ACCESS");
System.out.println("[ProductController findUserProfile] product_no : "+product_no);
		ProductModel productModel = null;
		productModel = productService.findUserProfile(product_no);
System.out.println("[ProductController findUserProfile] " + productModel.toString());
System.out.println("=============================================================");
		return productModel;
	}

	/* 전체 검색 */
	@RequestMapping("findAllTravelProduct")	
	public ModelAndView findAllTravelProduct(HttpServletRequest request) throws Exception {
System.out.println("[ProductController findAllTravelProduct] FIND ALL PRODUCT ACCESS");
		ModelAndView modelAndView = new ModelAndView();
		List<ProductInfo> productList = null;
		productList = productService.findAllTravelProduct();
System.out.println("[ProductController findAllTravelProduct] ProductList.size() : "+ productList.size());
		modelAndView.addObject("ProductAllList",productList);
		modelAndView.setViewName("layout/travelProductLayout");
System.out.println("[ProductController findAllTravelProduct] go =======>  layout/travelProductLayout");
System.out.println("=============================================================");
		return modelAndView;
	}
	
	@RequestMapping(value ="findTravelProductOfType", produces = "application/text; charset=utf-8")
	@ResponseBody
	public String findTravelProductOfType(@RequestParam(value="productType") int product_type, HttpServletRequest request) throws Exception {
System.out.println("[ProductController findTravelProductOfType] FIND ALL PRODUCT ACCESS");
System.out.println("[ProductController findTravelProductOfType] product_type : " + product_type);
		List<ProductInfo> productList = null;
		if(product_type==0) {
			productList = productService.findAllTravelProduct();
		} else {
			productList = productService.findTypeTravelProduct(product_type);
		}
		String htmlCode = "";
		if(productList.size()!=0) {
			htmlCode += "<div class='product_wrap'>";
			for(int i =0; i<productList.size(); i++) {
				htmlCode +="	<figure class='effect-winston' style='background-image: url("+request.getContextPath()+productList.get(i).getProduct_main_photo()+")'>"
						+ "	<input type='hidden' class='product_no' name='product_no' value='"+productList.get(i).getProduct_no()+"'>"
						+"		<figcaption class='product_fig'>";
				if(productList.get(i).getProduct_type()==1) {
					htmlCode += "<h2><font class='tour_color'>"+productList.get(i).getCountry()+" > "+productList.get(i).getCity()
							+"</font><br> <span>"+productList.get(i).getProduct_title()+"</span></h2>";
				}
				if(productList.get(i).getProduct_type()==2) {
					htmlCode += "<h2><font class='shuttle_color'>"+productList.get(i).getCountry()+" > "+productList.get(i).getCity()
							+"</font><br> <span>"+productList.get(i).getProduct_title()+"</span></h2>";
				}
				if(productList.get(i).getProduct_type()==3) {
					htmlCode += "<h2><font class='ticket_color'>"+productList.get(i).getCountry()+" > "+productList.get(i).getCity()
							+"</font><br> <span>"+productList.get(i).getProduct_title()+"</span></h2>";
				}
				if(productList.get(i).getProduct_type()==4) {
					htmlCode += "<h2><font class='snap_color'>"+productList.get(i).getCountry()+" > "+productList.get(i).getCity()
							+"</font><br> <span>"+productList.get(i).getProduct_title()+"</span></h2>";
				}
				htmlCode += "<p>"
						+"		<a href='#'><i class=''>"+productList.get(i).getCost()+" / 1인</i></a>"
						+"		<a href='#'><i class='fa fa-fw fa-envelope-o'></i></a>"
						+"		<a href='#'><i class='fa fa-fw fa-star-o'></i></a>"
						+"	</p>"	
						+"</figcaption>" 
						+"</figure>";
			}
			htmlCode +="</div>";
		}
System.out.println("=============================================================");
		return htmlCode;
	}
	
	@RequestMapping(value ="findTravelProductOfWord", produces = "application/text; charset=utf-8")
	@ResponseBody
	public String findTravelProductOfWord(@RequestParam(value="search_word") String search_word, HttpServletRequest request) throws Exception {
System.out.println("[ProductController findTravelProductOfWord] FIND WORD PRODUCT ACCESS");
System.out.println("[ProductController findTravelProductOfWord] search_word : " + search_word);
		List<ProductInfo> productList = null;
		if(search_word.trim().equals("")){
			productList = productService.findAllTravelProduct();
		} else {
			productList = productService.findWordTravelProduct(search_word);
		}
		String htmlCode = "";
		if(productList.size()==0) {
			htmlCode = "<div class='product_wrap'>등록된 상품이 없습니다.</div>";
		} else {
			htmlCode += "<div class='product_wrap'>";
			for(int i =0; i<productList.size(); i++) {
				htmlCode +="	<figure class='effect-winston' style='background-image: url("+request.getContextPath()+productList.get(i).getProduct_main_photo()+")'>"
						+ "	<input type='hidden' class='product_no' name='product_no' value='"+productList.get(i).getProduct_no()+"'>"
						+"		<figcaption class='product_fig'>";
				if(productList.get(i).getProduct_type()==1) {
					htmlCode += "<h2><font class='tour_color'>"+productList.get(i).getCountry()+" > "+productList.get(i).getCity()
							+"</font><br> <span>"+productList.get(i).getProduct_title()+"</span></h2>";
				}
				if(productList.get(i).getProduct_type()==2) {
					htmlCode += "<h2><font class='shuttle_color'>"+productList.get(i).getCountry()+" > "+productList.get(i).getCity()
							+"</font><br> <span>"+productList.get(i).getProduct_title()+"</span></h2>";
				}
				if(productList.get(i).getProduct_type()==3) {
					htmlCode += "<h2><font class='ticket_color'>"+productList.get(i).getCountry()+" > "+productList.get(i).getCity()
							+"</font><br> <span>"+productList.get(i).getProduct_title()+"</span></h2>";
				}
				if(productList.get(i).getProduct_type()==4) {
					htmlCode += "<h2><font class='snap_color'>"+productList.get(i).getCountry()+" > "+productList.get(i).getCity()
							+"</font><br> <span>"+productList.get(i).getProduct_title()+"</span></h2>";
				}
				htmlCode += "<p>"
						+"		<a href='#'><i class=''>"+productList.get(i).getCost()+" / 1인</i></a>"
						+"		<a href='#'><i class='fa fa-fw fa-envelope-o'></i></a>"
						+"		<a href='#'><i class='fa fa-fw fa-star-o'></i></a>"
						+"	</p>"	
						+"</figcaption>" 
						+"</figure>";
			}
			htmlCode +="</div>";
		}
System.out.println("=============================================================");
		return htmlCode;
	}
	
	/* 해당 product_no의 내용 가져오기 */
	@RequestMapping("findProductDetailInfo")
	public ModelAndView findProductDetailInfo(@RequestParam(value="productNo") int product_no, HttpServletRequest request) throws Exception {
System.out.println("[ProductController findProductDetailInfo] FIND PRODUCT DETAIL INFO ACCESS");
System.out.println("[ProductController findProductDetailInfo] product_no : " + product_no);
		ProductInfo productInfo = productService.findProductDetailInfo(product_no);
		String htmlBefore = "<div class='product_main_photo_zone'>"
						+ "	<img src='"+request.getContextPath()+productInfo.getProduct_main_photo() + "'>"
						+ "</div>";
		String htmlAfter= "<div class='form_basic_wrap'>"
						+ "					<div class='category' id='category'>"
						+ "						<div class='category_text_wrap'>"
						+ "							<font>"+productInfo.getCountry()+" > "+productInfo.getCity()+"</font>"
						+ "						</div>"
						+ "					</div>"
						+ "					<div class='product_total_content'>"
						+ "						<div class='main_title_text_wrap'>"
						+ "							<font>"+productInfo.getProduct_title()+"</font>"
						+ "						</div>"
						+ "					</div>"
						+ "					<div class='product_total_content'>"
						+ "						<div class='cost_text_wrap'>"
						+ "							<font id='product_cost' class='"+productInfo.getCost()+"'> ￦"+productInfo.getCost()+"</font>/ 1인"
						+ "						</div>"
						+ "					</div>"
						+ "					<div class='product_total_content date_wrap'>"
						+ "						<table>"
						+ "							<thead><tr>"
						+ "								<td colspan='3'>날짜와 인원을 선택해주세요.</td>"
						+ "							</tr></thead>"
						+ "							<tbody><tr>"
						+ "								<td>"
						+ "									<input type='text' class='datePick' name='select_date' id='select_date' placeholder='날짜 선택'>"
						+ "								</td>"
						+ "								<td>"
						+ "									<select class='select' id='people_number' name='people_number' title='인원 선택'>"
						+ "								        <option value='0' selected='selected'>인원 선택</option>"
						+ "								        <option value='1'>1명</option>"
						+ "								        <option value='2'>2명</option>"
						+ "								        <option value='3'>3명</option>"
						+ "								        <option value='4'>4명</option>"
						+ "								        <option value='5'>5명</option>"
						+ "								        <option value='6'>6명</option>"
						+ "								        <option disabled>그 외 문의요청</option>"
						+ "								    </select>"
						+ "								</td>"
						+ "								<td>"
						+ "									<button class='calc_cost' id='calc_cost' name='calc_cost' value='calc_cost'>경비 계산기</button>"
						+ "								</td>"
						+ "							</tr>"
						+ "							<tr>"
						+ "								<td colspan='3' class='calc_result'>"
						+ "								</td>"
						+ "							</tr></tbody>"
						+ "						</table>"
						+ "					</div>";
		if(!productInfo.getUser_profile().equals("null")) {
			htmlAfter += "					<table class='product_relate_table'><thead><tr>"
					+ "						<td> <label style='color: #a97228'>프로필 </label> </td>"
					+ "					</tr></thead>"
					+ "					<tbody><tr> "
					+ "						<td>  <p class='product_relate_text_p'>"+productInfo.getUser_profile()+"</p>  </td> "
					+ "					</tr></tbody></table>";
		}
		if(!productInfo.getProduct_photo1().equals("null")) {
			htmlAfter += "					<table class='product_relate_table product_relate_photo_table_wrap'><thead><tr>"
					+ "						<td> "
					+ "							<label style='color: #a97228'>여행 사진</label>"
					+ "						</td>"
					+ "					</tr></thead>"
					+ "					<tbody><tr>"
					+ "						<td>"
					+ "							<table class='product_relate_photo_table'>"
					+ "								<thead><tr><td colspan='5'>"
					+ "									<img src='"+request.getContextPath()+productInfo.getProduct_photo1()+"'>"
					+ "								</td></tr></thead>"
					+ "								<tbody>"
					+ "									<tr>";
			if(productInfo.getProduct_photo1().equals("null")) {
				htmlAfter += "<td><img src='"+request.getContextPath()+"uploadfile/product_img/no_image.png' class='blank_image'></td>";
			} else {
				htmlAfter += "<td><img src='"+request.getContextPath()+productInfo.getProduct_photo1()+"'></td>";											
			}
			if(productInfo.getProduct_photo2().equals("null")) {
				htmlAfter += "<td><img src='"+request.getContextPath()+"/uploadfile/product_img/no_image.png' class='blank_image'></td>";
			} else {
				htmlAfter += "<td><img src='"+request.getContextPath()+productInfo.getProduct_photo2()+"'></td>";											
			}
			if(productInfo.getProduct_photo3().equals("null")) {
				htmlAfter += "<td><img src='"+request.getContextPath()+"/uploadfile/product_img/no_image.png' class='blank_image'></td>";
			} else {
				htmlAfter += "<td><img src='"+request.getContextPath()+productInfo.getProduct_photo3()+"'></td>";											
			}
			if(productInfo.getProduct_photo4().equals("null")) {
				htmlAfter += "<td><img src='"+request.getContextPath()+"/uploadfile/product_img/no_image.png' class='blank_image'></td>";
			} else {
				htmlAfter += "<td><img src='"+request.getContextPath()+productInfo.getProduct_photo4()+"'></td>";											
			}
			if(productInfo.getProduct_photo5().equals("null")) {
				htmlAfter += "<td><img src='"+request.getContextPath()+"/uploadfile/product_img/no_image.png' class='blank_image'></td>";
			} else {
				htmlAfter += "<td><img src='"+request.getContextPath()+productInfo.getProduct_photo5()+"'></td>";											
			}
			htmlAfter += "</tr>";
		}
		if(!productInfo.getProduct_photo6().equals("null")) {
			htmlAfter += "								<tr>";
			if(productInfo.getProduct_photo6().equals("null")) {
				htmlAfter += "<td><img src='"+request.getContextPath()+"/uploadfile/product_img/no_image.png' class='blank_image'></td>";
			} else {
				htmlAfter += "<td><img src='"+request.getContextPath()+productInfo.getProduct_photo6()+"'></td>";											
			}
			if(productInfo.getProduct_photo7().equals("null")) {
				htmlAfter += "<td><img src='"+request.getContextPath()+"/uploadfile/product_img/no_image.png' class='blank_image'></td>";
			} else {
				htmlAfter += "<td><img src='"+request.getContextPath()+productInfo.getProduct_photo7()+"'></td>";											
			}
			if(productInfo.getProduct_photo8().equals("null")) {
				htmlAfter += "<td><img src='"+request.getContextPath()+"/uploadfile/product_img/no_image.png' class='blank_image'></td>";
			} else {
				htmlAfter += "<td><img src='"+request.getContextPath()+productInfo.getProduct_photo8()+"'></td>";											
			}
			if(productInfo.getProduct_photo9().equals("null")) {
				htmlAfter += "<td><img src='"+request.getContextPath()+"/uploadfile/product_img/no_image.png' class='blank_image'></td>";
			} else {
				htmlAfter += "<td><img src='"+request.getContextPath()+productInfo.getProduct_photo9()+"'></td>";								
			}
			if(productInfo.getProduct_photo10().equals("null")) {
				htmlAfter += "<td><img src='"+request.getContextPath()+"/uploadfile/product_img/no_image.png' class='blank_image'></td>";
			} else {
				htmlAfter += "<td><img src='"+request.getContextPath()+productInfo.getProduct_photo10()+"'></td>"	;										
			}
			htmlAfter += "</tr>";
		}
		htmlAfter += "								</tbody>"
				+ "							</table>"
				+ "						</td>"
				+ "					</tr></tbody></table>";
		if(!productInfo.getProduct_content().equals("null")) {
			htmlAfter += "					<table class='product_relate_table'><thead><tr>"
					+ "						<td> <label style='color: #a97228'>상품 상세 설명 </label> </td>"
					+ "					</tr></thead>"
					+ "					<tbody><tr>"
					+ "						<td> <p class='product_relate_text_p'>"+productInfo.getProduct_content()+"</p> </td>"
					+ "					</tr></tbody></table>";
		}
		if(!productInfo.getCourse().equals("null")) {
			htmlAfter += "					<table class='product_relate_table'><thead><tr>"
					+ "						<td> <label style='color: #a97228'>코스 상세 설정 </label> </td>"
					+ "					</tr></thead>"
					+ "					<tbody><tr>"
					+ "						<td> <p class='product_relate_text_p'>"+productInfo.getCourse()+"</p> </td>"
					+ "					</tr></tbody></table>";
		}
		if(!productInfo.getProduct_info().equals("null")) {
			htmlAfter += "					<table class='product_relate_table'><thead><tr>"
					+ "						<td> <label style='color: #a97228'>주의 사항 (필수사항) </label> </td>"
					+ "					</tr></thead>"
					+ "					<tbody><tr>"
					+ "						<td> <p class='product_relate_text_p'>"+productInfo.getProduct_info()+"</p> </td>"
					+ "					</tr></tbody></table>";
		}
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("htmlBefore", htmlBefore);
		modelAndView.addObject("htmlAfter", htmlAfter);
		modelAndView.setViewName("layout/productDetaillInfoLayout");
System.out.println("[ProductController findProductDetailInfo] "+ productInfo.toString());	
System.out.println("=============================================================");
		return modelAndView;
	}
	
	/* 상풍 추가하기 */
	@RequestMapping("add1")
	@ResponseBody
	public void addProduct(ProductModel productModel, HttpServletRequest request) throws Exception {
System.out.println("[ProductController addProduct] PRODUCT ADD ACCESS");
System.out.println("[ProductController addProduct] " + productModel.toString());
		productModel.setUser_profile(productModel.getUser_profile().replaceAll("\r\n", "<br>"));
		
		if(productModel.getFile()!=null){
			productModel.setProduct_main_photo("null");
			SimpleDateFormat dayTime = new SimpleDateFormat("yyyymmdd-hhmmss");
			String Time = dayTime.format(new Date(System.currentTimeMillis()));
			String user_id = (String) request.getSession(false).getAttribute("user_id");
			productModel.setUser_id(user_id);
			String file_full_name = productModel.getFile().getOriginalFilename();
			String imgType = file_full_name.substring(file_full_name.length()-3, file_full_name.length());
			String imgName = user_id+"_"+productModel.getProduct_type()+"_"+Time+"_main."+imgType;
System.out.println("[ProductController addProduct] imgName[<== save file name] : " + imgName);
			String path = request.getSession().getServletContext().getRealPath("/") + "uploadfile\\product_img\\"+imgName;
System.out.println("[ProductController addProduct] imgName[<== save file path] : " + path);
			File file = new File(path);
			productModel.getFile().transferTo(file);
			
			String db = "/uploadfile/product_img/"+ imgName;
			productModel.setProduct_main_photo(db);
		} else {
			productModel.setProduct_main_photo("null");
		}
		productService.addProduct(productModel);
System.out.println("[ProductController addProduct] productService.addProduct FINISH");
System.out.println("=============================================================");
	}
	
	/* 상풍 추가하기 */
	@RequestMapping("add2")
	@ResponseBody
	public void addProductPhotoAndContent(PhotoContentModel photoContentModel, HttpServletRequest request) throws Exception {
System.out.println("[ProductController addProductPhotoAndContent] PRODUCT PHOTO AND CONTENT ADD ACCESS");
System.out.println("[ProductController addProductPhotoAndContent] " + photoContentModel.toString());
		photoContentModel.setProduct_content(photoContentModel.getProduct_content().replaceAll("\r\n", "<br>"));
		
		if(photoContentModel.getFile()!=null){
			photoContentModel.setProduct_photo1("null");
			photoContentModel.setProduct_photo2("null");
			photoContentModel.setProduct_photo3("null");
			photoContentModel.setProduct_photo4("null");
			photoContentModel.setProduct_photo5("null");
			photoContentModel.setProduct_photo6("null");
			photoContentModel.setProduct_photo7("null");
			photoContentModel.setProduct_photo8("null");
			photoContentModel.setProduct_photo9("null");
			photoContentModel.setProduct_photo10("null");

			for(int i =0; i<photoContentModel.getFile().size(); i++){			
				SimpleDateFormat dayTime = new SimpleDateFormat("yyyymmdd-hhmmss");
				String Time = dayTime.format(new Date(System.currentTimeMillis()));
				String user_id = (String) request.getSession(false).getAttribute("user_id");
				photoContentModel.setUser_id(user_id);
				String file_full_name = photoContentModel.getFile().get(i).getOriginalFilename();
				String imgType = file_full_name.substring(file_full_name.length()-3, file_full_name.length());
				String imgName = user_id+"_"+Time+"_"+i+"."+imgType;
System.out.println("[ProductController addProduct] imgName[<== save file name] : " + imgName);
				String path = request.getSession().getServletContext().getRealPath("/") + "uploadfile\\product_img\\"+imgName;
System.out.println("[ProductController addProduct] imgName[<== save file path] : " + path);
				File file = new File(path);
				photoContentModel.getFile().get(i).transferTo(file);
				
				String db = "/uploadfile/product_img/"+ imgName;
				switch (i) {
					case 0: photoContentModel.setProduct_photo1(db);  break;
					case 1: photoContentModel.setProduct_photo2(db);  break;
					case 2: photoContentModel.setProduct_photo3(db);  break;
					case 3: photoContentModel.setProduct_photo4(db);  break;
					case 4: photoContentModel.setProduct_photo5(db);  break;
					case 5: photoContentModel.setProduct_photo6(db);  break;
					case 6: photoContentModel.setProduct_photo7(db);  break;
					case 7: photoContentModel.setProduct_photo8(db);  break;
					case 8: photoContentModel.setProduct_photo9(db);   break;
					case 9: photoContentModel.setProduct_photo10(db); break;
				}
			}
		}else{
			photoContentModel.setProduct_photo1("null");
			photoContentModel.setProduct_photo2("null");
			photoContentModel.setProduct_photo3("null");
			photoContentModel.setProduct_photo4("null");
			photoContentModel.setProduct_photo5("null");
			photoContentModel.setProduct_photo6("null");
			photoContentModel.setProduct_photo7("null");
			photoContentModel.setProduct_photo8("null");
			photoContentModel.setProduct_photo9("null");
			photoContentModel.setProduct_photo10("null");
		}

		productService.addProductPhotoAndContent(photoContentModel);
System.out.println("[ProductController addProductPhotoAndContent] productService.addProduct FINISH");
System.out.println("=============================================================");
	}	
	/* 상풍 추가하기 */
	@RequestMapping("add3")
	@ResponseBody
	public void addProductCourse(ProductCourseModel productCouseModel, HttpServletRequest request) throws Exception {
System.out.println("[ProductController addProductCourse] couser ADD ACCESS");
System.out.println("[ProductController addProductCourse] " + productCouseModel.toString());
		productCouseModel.setCourse(productCouseModel.getCourse().replaceAll("\r\n", "<br>"));
		String user_id = (String) request.getSession(false).getAttribute("user_id");
		productCouseModel.setUser_id(user_id);
		productService.addCourse(productCouseModel);
System.out.println("[ProductController addProductCourse] productService.addCourse FINISH");
System.out.println("=============================================================");
	}
	
	/* 상풍 추가하기 */
	@RequestMapping("add4")
	@ResponseBody
	public void addProductSub(ProductSubModel productSubModel, HttpServletRequest request) throws Exception {
System.out.println("[ProductController addProductSub] PRODUCT SUB ADD ACCESS");
System.out.println("[ProductController addProductSub] " + productSubModel.toString());
		String user_id = (String) request.getSession(false).getAttribute("user_id");
		productSubModel.setUser_id(user_id);
		productService.addSub(productSubModel);
System.out.println("[ProductController addProductCourse] productService.addCourse FINISH");
System.out.println("=============================================================");
	}
	
	/* 상품 즐겨찾기 */
	@RequestMapping(value ="addfavoriteProduct", produces = "application/text; charset=utf-8")
	@ResponseBody
	public void addfavoriteProduct(@RequestParam(value="productNo") int product_no, HttpServletRequest request) throws Exception {
System.out.println("[ProductController addfavoriteProduct] ADD FAVORITE PRODUCT ACCESS");
System.out.println("[ProductController addfavoriteProduct] product_no : " + product_no);
		FavoriteProduct favoriteProduct = new FavoriteProduct();
		favoriteProduct.setProduct_no(product_no);
		String user_id = (String) request.getSession(false).getAttribute("user_id");
System.out.println("[ProductController addfavoriteProduct] user_id : " + user_id);
		favoriteProduct.setUser_id(user_id);
		
		productService.addfavoriteProduct(favoriteProduct);
System.out.println("=============================================================");
	}
	
	@RequestMapping(value ="delfavoriteProduct", produces = "application/text; charset=utf-8")
	@ResponseBody
	public void delfavoriteProduct(@RequestParam(value="productNo") int product_no, HttpServletRequest request) throws Exception {
System.out.println("[ProductController delfavoriteProduct] ADD FAVORITE PRODUCT ACCESS");
System.out.println("[ProductController delfavoriteProduct] product_no : " + product_no);
		FavoriteProduct favoriteProduct = new FavoriteProduct();
		favoriteProduct.setProduct_no(product_no);
		String user_id = (String) request.getSession(false).getAttribute("user_id");
System.out.println("[ProductController delfavoriteProduct] user_id : " + user_id);
		favoriteProduct.setUser_id(user_id);
		productService.delfavoriteProduct(favoriteProduct);
System.out.println("=============================================================");
	}
	
	@RequestMapping(value ="chkFavoriteProduct", produces = "application/json; charset=utf8")
	@ResponseBody
	public List<String> chkFavoriteProduct(HttpServletRequest request) throws Exception {
System.out.println("[ProductController chkFavoriteProduct] ADD FAVORITE PRODUCT ACCESS");
		String user_id = (String) request.getSession(false).getAttribute("user_id");
System.out.println("[ProductController chkFavoriteProduct] user_id : " + user_id);
		List<String> favoriteList = new ArrayList<String>();
		favoriteList = productService.chkFavoriteProduct(user_id);
System.out.println("=============================================================");
		return favoriteList;
	}
}
