package com.kat.partner.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kat.product.dao.ProductDao;
import com.kat.product.model.ProductInfo;
import com.kat.product.model.ProductModel;

@Service
public class PartnerProductService {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	private ProductDao dao;
	
	// FIND USER PROFILE BY PRODUCT NO
	public ProductModel findUserProfile(int product_no) {
System.out.println("[AddProductService findUserProfile] FIND PRODUCT DETAIL INFO ACCESS");
System.out.println("[AddProductService findUserProfile] product_no : " + product_no);
        dao = sqlSessionTemplate.getMapper(ProductDao.class);
        ProductModel productModel = null;
        productModel = dao.findUserProfile(product_no);
System.out.println("[AddProductService findUserProfile] MAPPER(findUserProfile) RETURN");
	return productModel;
	}
	
	public ProductInfo findProductContent(int product_no) {
System.out.println("[AddProductService findPhotoContent] FIND PRODUCT DETAIL INFO ACCESS");
System.out.println("[AddProductService findPhotoContent] product_no : " + product_no);
        dao = sqlSessionTemplate.getMapper(ProductDao.class);
        ProductInfo productInfo = null;
        productInfo = dao.findProductContent(product_no);
System.out.println("[AddProductService findPhotoContent] MAPPER(findProductContent) RETURN");
	return productInfo;
	}
	
	public ProductInfo findProductInfo(int product_no) {
System.out.println("[AddProductService findProductInfo] FIND PRODUCT DETAIL INFO ACCESS");
System.out.println("[AddProductService findProductInfo] product_no : " + product_no);
        dao = sqlSessionTemplate.getMapper(ProductDao.class);
        ProductInfo productInfo = null;
        productInfo = dao.findProductInfo(product_no);
System.out.println("[AddProductService findProductInfo] MAPPER(findProductInfo) RETURN");
	return productInfo;
}
	
	public ProductInfo findProductCourse(int product_no) {
System.out.println("[AddProductService findProductCourse] FIND PRODUCT DETAIL INFO ACCESS");
System.out.println("[AddProductService findProductCourse] product_no : " + product_no);
        dao = sqlSessionTemplate.getMapper(ProductDao.class);
        ProductInfo productInfo = null;
        productInfo = dao.findProductCourse(product_no);
System.out.println("[AddProductService findProductCourse] MAPPER(findProductCourse) RETURN");
	return productInfo;
	}
	
	
	public void updateUserProfile(ProductModel productModel) {
System.out.println("[AddProductService updateUserProfile] FIND PRODUCT DETAIL INFO ACCESS");
System.out.println("[AddProductService updateUserProfile] " + productModel.toString());
		dao = sqlSessionTemplate.getMapper(ProductDao.class);
		dao.updateUserProfile(productModel);
System.out.println("[AddProductService updateUserProfile] USER PROFILE UPDATE SUCCESS");
		dao.reUseFlag(productModel.getProduct_no());
System.out.println("[AddProductService updateUserProfile] RE USE FLAG SUCCESS");
System.out.println("[AddProductService updateUserProfile] MAPPER(userProfileUpdate) FINISH");
	}
	public void updateProductContent(ProductInfo productInfo) {
System.out.println("[AddProductService updateProductContent] FIND PRODUCT DETAIL INFO ACCESS");
System.out.println("[AddProductService updateProductContent] " + productInfo.toString());
		dao = sqlSessionTemplate.getMapper(ProductDao.class);
		dao.updateProductContent(productInfo);
System.out.println("[AddProductService updateProductContent] PRODUCT CONTENT UPDATE SUCCESS");
		dao.reUseFlag(productInfo.getProduct_no());
System.out.println("[AddProductService updateProductContent] RE USE FLAG SUCCESS");
System.out.println("[AddProductService updateProductContent] MAPPER(updateProductContent) FINISH");
		}
	public void updateProductInfo(ProductInfo productInfo) {
System.out.println("[AddProductService updateProductInfo] FIND PRODUCT DETAIL INFO ACCESS");
System.out.println("[AddProductService updateProductInfo] " + productInfo.toString());
		dao = sqlSessionTemplate.getMapper(ProductDao.class);
		dao.updateProductInfo(productInfo);
System.out.println("[AddProductService updateProductInfo] PRODUCT INFO UPDATE SUCCESS");
		dao.reUseFlag(productInfo.getProduct_no());
System.out.println("[AddProductService updateProductInfo] RE USE FLAG SUCCESS");
System.out.println("[AddProductService updateProductInfo] MAPPER(updateProductInfo) FINISH");
		}
	public void updateProductCourse(ProductInfo productInfo) {
System.out.println("[AddProductService updateProductCourse] FIND PRODUCT DETAIL INFO ACCESS");
System.out.println("[AddProductService updateProductCourse] " + productInfo.toString());
		dao = sqlSessionTemplate.getMapper(ProductDao.class);
		dao.updateProductCourse(productInfo);
System.out.println("[AddProductService updateProductCourse] COURSE UPDATE SUCCESS");
		dao.reUseFlag(productInfo.getProduct_no());
System.out.println("[AddProductService updateProductCourse] PRODUCT COURSE SUCCESS");
System.out.println("[AddProductService updateProductCourse] MAPPER(updateProductCourse) FINISH");
	}
}
