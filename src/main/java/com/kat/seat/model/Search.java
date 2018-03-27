package com.kat.seat.model;

public class Search {

	// 검색 정보 담기
	private String select_continent; // 검색 대륙
	private String select_country; // 검색 국가
	private String select_city; // 검색 메뉴
	private String select_product; // 검색키워드
	
	public String getSelect_continent() {
		return select_continent;
	}
	
	public void setSelect_continent(String select_continent) {
		this.select_continent = select_continent;
	}
	public String getSelect_country() {
		return select_country;
	}
	public void setSelect_country(String select_country) {
		this.select_country = select_country;
	}
	public String getSelect_city() {
		return select_city;
	}
	public void setSelect_city(String select_city) {
		this.select_city = select_city;
	}
	public String getSelect_product() {
		return select_product;
	}
	public void setSelect_product(String select_product) {
		this.select_product = select_product;
	}
	@Override
	public String toString() {
		return "Search [select_continent=" + select_continent + ", select_country=" + select_country + ", select_city="
				+ select_city + ", select_product=" + select_product + "]";
	}
}
