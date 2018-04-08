package com.kat.product.model;

public class CityModel {
	private int city_no;
	private String city;
	private int country_no;
	private int delete_flag;
	public int getCity_no() {
		return city_no;
	}
	public void setCity_no(int city_no) {
		this.city_no = city_no;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getCountry_no() {
		return country_no;
	}
	public void setCountry_no(int country_no) {
		this.country_no = country_no;
	}
	public int getDelete_flag() {
		return delete_flag;
	}
	public void setDelete_flag(int delete_flag) {
		this.delete_flag = delete_flag;
	}
	@Override
	public String toString() {
		return "CityModel [city_no=" + city_no + ", city=" + city + ", country_no=" + country_no + ", delete_flag="
				+ delete_flag + "]";
	}
}
