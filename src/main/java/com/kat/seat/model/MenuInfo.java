package com.kat.seat.model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class MenuInfo {

	private int menu_no; // 메뉴 번호
	private String menu_name; // 메뉴 이름
	private int menu_price; // 메뉴 가격
	private String menu_catagory; // 메뉴 종류
	private int company_no; // 매장 번호
	private String user_id; // 메뉴를 등록한아이디 *
	private String file_menuphoto; // DB 저장용 사진 *
	private MultipartFile menuPhotoFile; // 사진 업로드 처리위한 변수
	private Date create_date; // 업로드 시간 *
	private String menu_loc; //대륙구분
    private String menu_nation; //나라구분
	public MenuInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MenuInfo(int menu_no, String menu_name, int menu_price, String menu_catagory, int company_no, String user_id,
			String file_menuphoto, MultipartFile menuPhotoFile, Date create_date, String menu_loc, String menu_nation) {
		super();
		this.menu_no = menu_no;
		this.menu_name = menu_name;
		this.menu_price = menu_price;
		this.menu_catagory = menu_catagory;
		this.company_no = company_no;
		this.user_id = user_id;
		this.file_menuphoto = file_menuphoto;
		this.menuPhotoFile = menuPhotoFile;
		this.create_date = create_date;
		this.menu_loc = menu_loc;
		this.menu_nation = menu_nation;
	}
	public int getMenu_no() {
		return menu_no;
	}
	public void setMenu_no(int menu_no) {
		this.menu_no = menu_no;
	}
	public String getMenu_name() {
		return menu_name;
	}
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	public int getMenu_price() {
		return menu_price;
	}
	public void setMenu_price(int menu_price) {
		this.menu_price = menu_price;
	}
	public String getMenu_catagory() {
		return menu_catagory;
	}
	public void setMenu_catagory(String menu_catagory) {
		this.menu_catagory = menu_catagory;
	}
	public int getCompany_no() {
		return company_no;
	}
	public void setCompany_no(int company_no) {
		this.company_no = company_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getFile_menuphoto() {
		return file_menuphoto;
	}
	public void setFile_menuphoto(String file_menuphoto) {
		this.file_menuphoto = file_menuphoto;
	}
	public MultipartFile getMenuPhotoFile() {
		return menuPhotoFile;
	}
	public void setMenuPhotoFile(MultipartFile menuPhotoFile) {
		this.menuPhotoFile = menuPhotoFile;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
	public String getMenu_loc() {
		return menu_loc;
	}
	public void setMenu_loc(String menu_loc) {
		this.menu_loc = menu_loc;
	}
	public String getMenu_nation() {
		return menu_nation;
	}
	public void setMenu_nation(String menu_nation) {
		this.menu_nation = menu_nation;
	}
	@Override
	public String toString() {
		return "MenuInfo [menu_no=" + menu_no + ", menu_name=" + menu_name + ", menu_price=" + menu_price
				+ ", menu_catagory=" + menu_catagory + ", company_no=" + company_no + ", user_id=" + user_id
				+ ", file_menuphoto=" + file_menuphoto + ", menuPhotoFile=" + menuPhotoFile + ", create_date="
				+ create_date + ", menu_loc=" + menu_loc + ", menu_nation=" + menu_nation + "]";
	}
	
    
	
}
