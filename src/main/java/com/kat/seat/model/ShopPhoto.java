package com.kat.seat.model;

import org.springframework.web.multipart.MultipartFile;

public class ShopPhoto {
	private int photo_no; // 매장 기본키
	private String user_id; // 매장사진 등록한 아이디
	private String file_shopphoto; // DB 저장용 사진
	private MultipartFile shopPhotoFile; // 사진 업로드 처리위한 변수
	private String create_date; // 업로드 시간

	public int getPhoto_no() {
		return photo_no;
	}
	public void setPhoto_no(int photo_no) {
		this.photo_no = photo_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getFile_shopphoto() {
		return file_shopphoto;
	}
	public void setFile_shopphoto(String file_shopphoto) {
		this.file_shopphoto = file_shopphoto;
	}
	public MultipartFile getShopPhotoFile() {
		return shopPhotoFile;
	}
	public void setShopPhotoFile(MultipartFile shopPhotoFile) {
		this.shopPhotoFile = shopPhotoFile;
	}

	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	@Override
	public String toString() {
		return "ShopPhoto [photo_no=" + photo_no + ", user_id=" + user_id + ", file_shopphoto=" + file_shopphoto
				+ ", shopPhotoFile=" + shopPhotoFile + ", create_date=" + create_date + "]";
	}

}
