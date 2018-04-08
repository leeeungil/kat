package com.kat.product.model;

public class ProductTypeModel {
	private int product_type;
	private String product_type_name;
	private int delete_flag;
	
	public int getProduct_type() {
		return product_type;
	}
	public void setProduct_type(int product_type) {
		this.product_type = product_type;
	}
	public String getProduct_type_name() {
		return product_type_name;
	}
	public void setProduct_type_name(String product_type_name) {
		this.product_type_name = product_type_name;
	}
	public int getDelete_flag() {
		return delete_flag;
	}
	public void setDelete_flag(int delete_flag) {
		this.delete_flag = delete_flag;
	}

	@Override
	public String toString() {
		return "ProductTypeModel [product_type=" + product_type + ", product_type_name=" + product_type_name
				+ ", delete_flag=" + delete_flag + "]";
	}
}
