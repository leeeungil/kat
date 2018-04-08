package com.kat.product.model;

public class ContinentModel {
	private int continent_no;
	private String continent;
	int delete_flag;

	public int getContinent_no() {
		return continent_no;
	}
	public void setContinent_no(int continent_no) {
		this.continent_no = continent_no;
	}
	public String getContinent() {
		return continent;
	}
	public void setContinent(String continent) {
		this.continent = continent;
	}
	public int getDelete_flag() {
		return delete_flag;
	}
	public void setDelete_flag(int delete_flag) {
		this.delete_flag = delete_flag;
	}
	
	@Override
	public String toString() {
		return "ContinentModel [continent_no=" + continent_no + ", continent=" + continent + ", delete_flag="
				+ delete_flag + "]";
	}
}
