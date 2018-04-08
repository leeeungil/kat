package com.kat.product.model;

public class CountryModel {
	private int country_no;
	private String country;
	private int continent_no;
	private int delete_flag;
	public int getCountry_no() {
		return country_no;
	}
	public void setCountry_no(int country_no) {
		this.country_no = country_no;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public int getContinent_no() {
		return continent_no;
	}
	public void setContinent_no(int continent_no) {
		this.continent_no = continent_no;
	}
	public int getDelete_flag() {
		return delete_flag;
	}
	public void setDelete_flag(int delete_flag) {
		this.delete_flag = delete_flag;
	}
	@Override
	public String toString() {
		return "CountryModel [country_no=" + country_no + ", country=" + country + ", continent_no=" + continent_no
				+ ", delete_flag=" + delete_flag + "]";
	}
	
	
	
	
}
