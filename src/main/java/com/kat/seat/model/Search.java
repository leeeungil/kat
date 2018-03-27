package com.kat.seat.model;

public class Search {

	// 검색 정보 담기
	private String select_area; // 검색 대륙
	private String select_area2; // 검색 국가
	private String select_menu; // 검색 메뉴
	private String select_key; // 검색키워드
	public Search() {
		super();
	}
	public Search(String select_area, String select_area2, String select_menu, String select_key) {
		super();
		this.select_area = select_area;
		this.select_area2 = select_area2;
		this.select_menu = select_menu;
		this.select_key = select_key;
	}
	public String getSelect_area() {
		return select_area;
	}
	public void setSelect_area(String select_area) {
		this.select_area = select_area;
	}
	public String getSelect_area2() {
		return select_area2;
	}
	public void setSelect_area2(String select_area2) {
		this.select_area2 = select_area2;
	}
	public String getSelect_menu() {
		return select_menu;
	}
	public void setSelect_menu(String select_menu) {
		this.select_menu = select_menu;
	}
	public String getSelect_key() {
		return select_key;
	}
	public void setSelect_key(String select_key) {
		this.select_key = select_key;
	}
	@Override
	public String toString() {
		return "Search [select_area=" + select_area + ", select_area2=" + select_area2 + ", select_menu="
				+ select_menu + ", select_key=" + select_key + "]";
	}

	
}
