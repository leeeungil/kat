package com.kat.product.model;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class PhotoContentModel {
	private int product_no;
	private int product_content_no;
	private String product_content;
	private String product_photo1;
	private String product_photo2;
	private String product_photo3;
	private String product_photo4;
	private String product_photo5;
	private String product_photo6;
	private String product_photo7;
	private String product_photo8;
	private String product_photo9;
	private String product_photo10;
	private String product_info;
	private String user_id;
	private String delete_flag;
	private String create_date;
	private List<MultipartFile> file;
	
	
	public String getProduct_content() {
		return product_content;
	}
	public void setProduct_content(String product_content) {
		this.product_content = product_content;
	}
	public int getProduct_no() {
		return product_no;
	}
	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}
	public int getProduct_content_no() {
		return product_content_no;
	}
	public void setProduct_content_no(int product_content_no) {
		this.product_content_no = product_content_no;
	}
	public String getProduct_photo1() {
		return product_photo1;
	}
	public void setProduct_photo1(String product_photo1) {
		this.product_photo1 = product_photo1;
	}
	public String getProduct_photo2() {
		return product_photo2;
	}
	public void setProduct_photo2(String product_photo2) {
		this.product_photo2 = product_photo2;
	}
	public String getProduct_photo3() {
		return product_photo3;
	}
	public void setProduct_photo3(String product_photo3) {
		this.product_photo3 = product_photo3;
	}
	public String getProduct_photo4() {
		return product_photo4;
	}
	public void setProduct_photo4(String product_photo4) {
		this.product_photo4 = product_photo4;
	}
	public String getProduct_photo5() {
		return product_photo5;
	}
	public void setProduct_photo5(String product_photo5) {
		this.product_photo5 = product_photo5;
	}
	public String getProduct_photo6() {
		return product_photo6;
	}
	public void setProduct_photo6(String product_photo6) {
		this.product_photo6 = product_photo6;
	}
	public String getProduct_photo7() {
		return product_photo7;
	}
	public void setProduct_photo7(String product_photo7) {
		this.product_photo7 = product_photo7;
	}
	public String getProduct_photo8() {
		return product_photo8;
	}
	public void setProduct_photo8(String product_photo8) {
		this.product_photo8 = product_photo8;
	}
	public String getProduct_photo9() {
		return product_photo9;
	}
	public void setProduct_photo9(String product_photo9) {
		this.product_photo9 = product_photo9;
	}
	public String getProduct_photo10() {
		return product_photo10;
	}
	public void setProduct_photo10(String product_photo10) {
		this.product_photo10 = product_photo10;
	}
	public String getProduct_info() {
		return product_info;
	}
	public void setProduct_info(String product_info) {
		this.product_info = product_info;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getDelete_flag() {
		return delete_flag;
	}
	public void setDelete_flag(String delete_flag) {
		this.delete_flag = delete_flag;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public List<MultipartFile> getFile() {
		return file;
	}
	public void setFile(List<MultipartFile> file) {
		this.file = file;
	}
	@Override
	public String toString() {
		return "PhotoContentModel [product_no=" + product_no + ", product_content_no=" + product_content_no
				+ ", product_content=" + product_content + ", product_photo1=" + product_photo1 + ", product_photo2="
				+ product_photo2 + ", product_photo3=" + product_photo3 + ", product_photo4=" + product_photo4
				+ ", product_photo5=" + product_photo5 + ", product_photo6=" + product_photo6 + ", product_photo7="
				+ product_photo7 + ", product_photo8=" + product_photo8 + ", product_photo9=" + product_photo9
				+ ", product_photo10=" + product_photo10 + ", product_info=" + product_info + ", user_id=" + user_id
				+ ", delete_flag=" + delete_flag + ", create_date=" + create_date + ", file=" + file + "]";
	}
}
