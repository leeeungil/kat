package com.kat.main.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kat.product.dao.ProductDao;
import com.kat.product.model.ProductInfo;

@Service
public class MainService {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	private ProductDao dao;

	// FIND ALL PRODUCT
	public Map<String, List<ProductInfo>> findMainAdProduct() {
System.out.println("[MainService findMainAdProduct] FIND ALL PRODUCT ACCESS");
        dao = sqlSessionTemplate.getMapper(ProductDao.class);
		List<ProductInfo> productAllInfoList = null;
		
		List<ProductInfo> popularRoomList = new ArrayList<ProductInfo>();
		List<ProductInfo> powerTravelProductList = new ArrayList<ProductInfo>();
		List<ProductInfo> popularTourList = new ArrayList<ProductInfo>();
		List<ProductInfo> popularShuttleList = new ArrayList<ProductInfo>();
		List<ProductInfo> popularTicketList = new ArrayList<ProductInfo>();
		List<ProductInfo> popularSnapList = new ArrayList<ProductInfo>();
		List<ProductInfo> tourInfoList = new ArrayList<ProductInfo>();
		
		productAllInfoList = dao.findMainAdProduct();
System.out.println("[MainService findMainAdProduct] MAPPER(findAllTravelProduct) RETURN");
System.out.println("[MainService findMainAdProduct] " + productAllInfoList.size());
		for(int i=0; i<productAllInfoList.size(); i++) {
			if(productAllInfoList.get(i).getMain_ad_no()==1) {
				popularRoomList.add(productAllInfoList.get(i));
			} else if(productAllInfoList.get(i).getMain_ad_no()==2) {
				powerTravelProductList.add(productAllInfoList.get(i));
			} else if(productAllInfoList.get(i).getMain_ad_no()==3) {
				popularTourList.add(productAllInfoList.get(i));
			} else if(productAllInfoList.get(i).getMain_ad_no()==4) {
				popularShuttleList.add(productAllInfoList.get(i));
			} else if(productAllInfoList.get(i).getMain_ad_no()==5) {
				popularTicketList.add(productAllInfoList.get(i));
			} else if(productAllInfoList.get(i).getMain_ad_no()==6) {
				popularSnapList.add(productAllInfoList.get(i));
			} else if(productAllInfoList.get(i).getMain_ad_no()==7) {
				tourInfoList.add(productAllInfoList.get(i));
			}
		}
		Map<String, List<ProductInfo>> productAllList = new HashMap<String, List<ProductInfo>>();
		productAllList.put("popularRoomList", popularRoomList);
		productAllList.put("powerTravelProductList", powerTravelProductList);
		productAllList.put("popularTourList", popularTourList);
		productAllList.put("popularShuttleList", popularShuttleList);
		productAllList.put("popularTicketList", popularTicketList);
		productAllList.put("popularSnapList", popularSnapList);
		productAllList.put("tourInfoList", tourInfoList);

		return productAllList;
	}
}
