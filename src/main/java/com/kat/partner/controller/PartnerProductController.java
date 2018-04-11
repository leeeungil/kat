package com.kat.partner.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kat.partner.service.PartnerProductService;
import com.kat.product.model.ProductInfo;
import com.kat.product.model.ProductModel;

@Controller
@RequestMapping("partner")
public class PartnerProductController {

	@Autowired
	private PartnerProductService partnerProductS;
	
	//관리자 user_profile 검색
	@RequestMapping(value ="findUserProfile", produces = "application/json; charset=utf-8")
	@ResponseBody
	public ProductModel findUserProfile(int product_no) throws Exception {
System.out.println("[ProductController findUserProfile] FIND USER PROFILE BY PRODUCT NO ACCESS");
System.out.println("[ProductController findUserProfile] product_no : "+product_no);
		ProductModel productModel = null;
		productModel = partnerProductS.findUserProfile(product_no);
System.out.println("[ProductController findUserProfile] " + productModel.toString());
System.out.println("=============================================================");
		return productModel;
	}
	
	@RequestMapping(value ="findProductContent", produces = "application/json; charset=utf-8")
	@ResponseBody
	public ProductInfo findProductContent(int product_no) throws Exception {
System.out.println("[ProductController findProductContent] FIND PRODUCT CONTENT BY PRODUCT NO ACCESS");
System.out.println("[ProductController findProductContent] product_no : "+product_no);
		ProductInfo productInfo = null;
		productInfo = partnerProductS.findProductContent(product_no);
System.out.println("[ProductController findProductContent] " + productInfo.toString());
System.out.println("=============================================================");
		return productInfo;
	}
	
	@RequestMapping(value ="findProductInfo", produces = "application/json; charset=utf-8")
	@ResponseBody
	public ProductInfo findProductInfo(int product_no) throws Exception {
System.out.println("[ProductController findProductInfo] FIND PRODUCT INFO BY PRODUCT NO ACCESS");
System.out.println("[ProductController findProductInfo] product_no : "+product_no);
		ProductInfo productInfo = null;
		productInfo = partnerProductS.findProductInfo(product_no);
System.out.println("[ProductController findProductInfo] " + productInfo.toString());
System.out.println("=============================================================");
		return productInfo;
	}
	
	@RequestMapping(value ="findProductCourse", produces = "application/json; charset=utf-8")
	@ResponseBody
	public ProductInfo findProductCourse(int product_no) throws Exception {
System.out.println("[ProductController findProductCourse] PRODUCT COURSE BY PRODUCT NO ACCESS");
System.out.println("[ProductController findProductCourse] product_no : "+product_no);
		ProductInfo productInfo = null;
		productInfo = partnerProductS.findProductCourse(product_no);
System.out.println("[ProductController findProductCourse] " + productInfo.toString());
System.out.println("=============================================================");
			return productInfo;
	}	
	
	
	
	
	
	@RequestMapping(value ="updateUserProfile.do", produces = "application/text; charset=utf8")
	public String updateUserProfile (ProductModel productModel, HttpServletRequest request)throws Exception {
System.out.println("[ProductController updateUserProfile] UPDATE USER PROFILE ACCESS");
System.out.println("[ProductController updateUserProfile] "+productModel.toString());
		productModel.setUser_profile(productModel.getUser_profile().replaceAll("\r\n", "<br>"));
System.out.println("[ProductController updateUserProfile] User_profile() : "+productModel.getUser_profile());
		partnerProductS.updateUserProfile(productModel);
System.out.println("[ProductController updateUserProfile] GO =======> redirect:/product/findUserIdProduct.do");	
System.out.println("=============================================================");
		return "redirect:/product/findUserIdProduct.do";
	}
	@RequestMapping(value ="updateProductContent.do", produces = "application/text; charset=utf8")
	public String updateProductContent (ProductInfo productInfo, HttpServletRequest request)throws Exception {
System.out.println("[ProductController updateProductContent] UPDATE PRODUCT CONTENT ACCESS");
System.out.println("[ProductController updateProductContent] "+productInfo.toString());
		productInfo.setProduct_content(productInfo.getProduct_content().replaceAll("\r\n", "<br>"));
System.out.println("[ProductController updateProductContent] User_profile() : "+productInfo.getProduct_content());
		partnerProductS.updateProductContent(productInfo);
System.out.println("[ProductController updateProductContent] GO =======> redirect:/product/findUserIdProduct.do");	
System.out.println("=============================================================");
		return "redirect:/product/findUserIdProduct.do";
	}
	@RequestMapping(value ="updateProductInfo.do", produces = "application/text; charset=utf8")
	public String updateProductInfo (ProductInfo productInfo, HttpServletRequest request)throws Exception {
System.out.println("[ProductController updateProductInfo] UPDATE PRODUCT INFO ACCESS");
System.out.println("[ProductController updateProductInfo] "+productInfo.toString());
		productInfo.setProduct_info(productInfo.getProduct_info().replaceAll("\r\n", "<br>"));
System.out.println("[ProductController updateProductInfo] User_profile() : "+productInfo.getProduct_info());
		partnerProductS.updateProductInfo(productInfo);
System.out.println("[ProductController updateProductInfo] GO =======> redirect:/product/findUserIdProduct.do");		
System.out.println("=============================================================");
		return "redirect:/product/findUserIdProduct.do";
	}
	@RequestMapping(value ="updateProductCourse.do", produces = "application/text; charset=utf8")
	public String updateProductCourse (ProductInfo productInfo, HttpServletRequest request)throws Exception {
System.out.println("[ProductController updateProductCourse] UPDATE PRODUCT COURSE ACCESS");
System.out.println("[ProductController updateProductCourse] "+productInfo.toString());
		productInfo.setCourse(productInfo.getCourse().replaceAll("\r\n", "<br>"));
System.out.println("[ProductController updateProductCourse] User_profile() : "+productInfo.getCourse());
		partnerProductS.updateProductCourse(productInfo);
System.out.println("[ProductController updateProductCourse] GO =======> redirect:/product/findUserIdProduct.do");	
System.out.println("=============================================================");
		return "redirect:/product/findUserIdProduct.do";
	}
}
