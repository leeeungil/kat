package com.kat.product.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kat.product.model.ProductInfo;
import com.kat.seat.service.AddProductService;

@Controller
@RequestMapping("product")
public class ProductController {

	@Autowired
	private AddProductService addProductService;
	
	@RequestMapping("add")
	public ModelAndView addProduct(ProductInfo productInfo, HttpServletRequest request) throws Exception {
System.out.println("[AddProductController addProduct] PRODUCT ADD ACCESS");
System.out.println("[AddProductController addProduct] " + productInfo.toString());
		
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
				System.out.println("user_id : "+user_id);
				String file_full_name = productInfo.getFile().get(i).getOriginalFilename();
				System.out.println("file_full_name" + file_full_name);
				String imgType = file_full_name.substring(file_full_name.length()-3, file_full_name.length());
				System.out.println(imgType);
				String imgName = user_id+"_"+productInfo.getProduct_type()+"_"+Time+"_"+i+"."+imgType;
				System.out.println(imgName);
				String path = request.getSession().getServletContext().getRealPath("/") + "uploadfile\\product\\"+imgName;
				System.out.println(path);
				File file = new File(path);
				productInfo.getFile().get(i).transferTo(file);
			
				String db = "/uploadfile/product/"+ imgName;
				System.out.println(db);
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
System.out.println("[AddProductController addProduct] addProductService.addMenu FINISH");
		modelAndView.setViewName("redirect:/kat/productForm/productAdd.do");
System.out.println("=============================================================");
		return modelAndView;
	}
}
