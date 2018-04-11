package com.kat.reserv.model;

public class ReservCountModel {
	private String daily;
	private String reserv_count;
	private int product_no;
	
	public int getProduct_no() {
		return product_no;
	}
	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}
	public String getDaily() {
		return daily;
	}
	public void setDaily(String daily) {
		this.daily = daily;
	}
	public String getReserv_count() {
		return reserv_count;
	}
	public void setReserv_count(String reserv_count) {
		this.reserv_count = reserv_count;
	}
	
	@Override
	public String toString() {
		return "ReservCountModel [daily=" + daily + ", reserv_count=" + reserv_count + ", product_no=" + product_no + "]";
	}
}
