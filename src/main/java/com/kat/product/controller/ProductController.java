package com.kat.product.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kat.product.model.ProductInfo;
import com.kat.product.service.ProductService;

@Controller
@RequestMapping("product")
public class ProductController {

	@Autowired
	private ProductService addProductService;
	
	@RequestMapping("findAllTravelProduct")	
	public ModelAndView findAllTravelProduct(HttpServletRequest request) throws Exception {
System.out.println("[ProductController findAllTravelProduct] FIND ALL PRODUCT ACCESS");
		ModelAndView modelAndView = new ModelAndView();
		List<ProductInfo> ProductList = null;
		ProductList = addProductService.findAllTravelProduct();
System.out.println("[ProductController findAllTravelProduct] ProductList.size() : "+ ProductList.size());		
		
		modelAndView.addObject("ProductAllList",ProductList);
		modelAndView.setViewName("layout/travelProductLayout");
System.out.println("=============================================================");
		return modelAndView;
	}
	
	
	
	
	@RequestMapping("add")
	public ModelAndView addProduct(ProductInfo productInfo, HttpServletRequest request) throws Exception {
System.out.println("[ProductController addProduct] PRODUCT ADD ACCESS");
System.out.println("[ProductController addProduct] " + productInfo.toString());
		
		if(productInfo.getFile()!=null){
			productInfo.setProduct_main_photo("null");
			productInfo.setProduct_photo1("null");
			productInfo.setProduct_photo2("null");
			productInfo.setProduct_photo3("null");
			productInfo.setProduct_photo4("null");
			productInfo.setProduct_photo5("null");
			productInfo.setProduct_photo6("null");
			productInfo.setProduct_photo7("null");
			productInfo.setProduct_photo8("null");
			productInfo.setProduct_photo9("null");
			productInfo.setProduct_photo10("null");

			for(int i =0; i<productInfo.getFile().size(); i++){			
				SimpleDateFormat dayTime = new SimpleDateFormat("yyyymmdd-hhmmss");
				String Time = dayTime.format(new Date(System.currentTimeMillis()));
				String user_id = (String) request.getSession(false).getAttribute("user_id");
				productInfo.setUser_id(user_id);
				String file_full_name = productInfo.getFile().get(i).getOriginalFilename();
				String imgType = file_full_name.substring(file_full_name.length()-3, file_full_name.length());
				String imgName = user_id+"_"+productInfo.getProduct_type()+"_"+Time+"_"+i+"."+imgType;
System.out.println("[ProductController addProduct] imgName[<== save file name] : " + imgName);
				String path = request.getSession().getServletContext().getRealPath("/") + "uploadfile\\product_img\\"+imgName;
System.out.println("[ProductController addProduct] imgName[<== save file path] : " + path);
				File file = new File(path);
				productInfo.getFile().get(i).transferTo(file);
				
				String db = "/uploadfile/product_img/"+ imgName;
				switch (i) {
					case 0: productInfo.setProduct_main_photo(db); break;
					case 1: productInfo.setProduct_photo1(db);  break;
					case 2: productInfo.setProduct_photo2(db);  break;
					case 3: productInfo.setProduct_photo3(db);  break;
					case 4: productInfo.setProduct_photo4(db);  break;
					case 5: productInfo.setProduct_photo5(db);  break;
					case 6: productInfo.setProduct_photo6(db);  break;
					case 7: productInfo.setProduct_photo7(db);  break;
					case 8: productInfo.setProduct_photo8(db);  break;
					case 9: productInfo.setProduct_photo9(db);   break;
					case 10: productInfo.setProduct_photo10(db); break;
				}
			}
		}else{
			productInfo.setProduct_main_photo("null");
			productInfo.setProduct_photo1("null");
			productInfo.setProduct_photo2("null");
			productInfo.setProduct_photo3("null");
			productInfo.setProduct_photo4("null");
			productInfo.setProduct_photo5("null");
			productInfo.setProduct_photo6("null");
			productInfo.setProduct_photo7("null");
			productInfo.setProduct_photo8("null");
			productInfo.setProduct_photo9("null");
			productInfo.setProduct_photo10("null");
		}

		ModelAndView modelAndView = new ModelAndView();

		addProductService.addProduct(productInfo);
System.out.println("[ProductController addProduct] addProductService.addProduct FINISH");
		modelAndView.setViewName("redirect:/kat/seatForm/seatAdd.do");
System.out.println("=============================================================");
		return modelAndView;
	}
}
