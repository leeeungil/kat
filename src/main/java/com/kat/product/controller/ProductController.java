package com.kat.product.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kat.product.model.ProductInfo;

@Controller
@RequestMapping("product")
public class ProductController {

	@RequestMapping("add")
//	public ModelAndView addProduct(@RequestParam(name="multi_product_main") MultipartHttpServletRequest multi_product_main, ProductInfo productInfo, 
//			@RequestParam(name="multi_product_photo") List<MultipartHttpServletRequest> fileList, HttpServletRequest request) throws Exception {
	public ModelAndView addProduct(ProductInfo productInfo, HttpServletRequest request) throws Exception {
System.out.println("[AddProductController addProduct] PRODUCT ADD ACCESS");
System.out.println("[AddProductController addProduct] " + productInfo.toString());
		
		/*if(productInfo.getMulti_product_main()!=null){
			productInfo.setProduct_main_photo("null");
			
				SimpleDateFormat dayTime = new SimpleDateFormat("yyyymmdd-hhmmss");
				String Time = dayTime.format(new Date(System.currentTimeMillis()));
				String user_id = (String) request.getAttribute("user_id");
				productInfo.setUser_id(user_id);
				String imgType[] = productInfo.getMulti_product_main().getOriginalFilename().split(".");
				String imgName = user_id+productInfo.getProduct_type()+Time+imgType[imgType.length];
				String path = request.getSession().getServletContext().getRealPath("/") + "resources\\upload\\"+imgName;
				File file = new File(path);
				productInfo.getMulti_product_main().transferTo(file);
			
				String db = "/resources/upload/"+ imgName;
				productInfo.setProduct_main_photo(db);
		} else {
			productInfo.setProduct_main_photo("null");
		}*/

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
				String user_id = (String) request.getAttribute("user_id");
				productInfo.setUser_id(user_id);
				String file_full_name = productInfo.getFile().get(i).getOriginalFilename();
				System.out.println(file_full_name);
				String imgType = file_full_name.substring(file_full_name.length()-3, file_full_name.length());
				System.out.println(imgType);
				String imgName = user_id+"_"+productInfo.getProduct_type()+"_"+Time+"."+imgType;
				String path = request.getSession().getServletContext().getRealPath("/") + "uploadfile\\product\\"+imgName;
				File file = new File(path);
				productInfo.getFile().get(i).transferTo(file);
			
				String db = "/uploadfile/product/"+ imgName;
				switch (i) {
					case 0: productInfo.setProduct_photo1(db);  break;
					case 1: productInfo.setProduct_photo2(db);  break;
					case 2: productInfo.setProduct_photo3(db);  break;
					case 3: productInfo.setProduct_photo4(db);  break;
					case 4: productInfo.setProduct_photo5(db);  break;
					case 5: productInfo.setProduct_photo6(db);  break;
					case 6: productInfo.setProduct_photo7(db);  break;
					case 7: productInfo.setProduct_photo8(db);  break;
					case 8: productInfo.setProduct_photo9(db);  break;
					case 9: productInfo.setProduct_photo10(db);  break;
				}
			}
		}else{
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
		/*String user_id = (String) request.getSession(false).getAttribute("user_id"); // 로그인한 아이디 집어넣기
		menuInfo.setUser_id(user_id);
		
		long time = System.currentTimeMillis(); // 현재시간 주기
		//업로드 폴더 시스템 물리적 경로 찾기 
		String uploadURI = "/uploadfile/menuphoto";
		String dir = request.getSession().getServletContext().getRealPath(uploadURI);
System.out.println("[AddProductController addProduct] dir : " + dir);

		// 업로드 파일의 물리적 저장
		if (!menuInfo.getMultipart_product_file().isEmpty()) {
System.out.println("[AddProductController addProduct] getMultipart_product_file() : " + menuInfo.getMultipart_product_file().toString());
			menuInfo.getMultipart_product_file().transferTo(new File(dir, user_id + "_menu_" + time+".png"));
			menuInfo.setFile_menu_photo(uploadURI+"/"+user_id + "_menu_" + time+".png");
		} else {
System.out.println("[AddProductController addProduct] getMultipart_product_file() NOT NULL");
		}

		addMenuService.addProduct(menuInfo);
System.out.println("[AddProductController addProduct] addMenuService.addMenu FINISH");*/
		modelAndView.setViewName("redirect:/kat/productForm/productAdd.do");
System.out.println("=============================================================");
		return modelAndView;
	}
}
