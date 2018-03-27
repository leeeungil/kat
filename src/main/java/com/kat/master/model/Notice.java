package com.kat.master.model;

public class Notice {
	private int notice_no;
	private String notice_title;
	private String notice_content;
	private String master_no;
	private String create_date;
	private String delete_flag;
	
	public int getNotice_no() {
		return notice_no;
	}

	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	public String getMaster_no() {
		return master_no;
	}

	public void setMaster_no(String master_no) {
		this.master_no = master_no;
	}

	public String getCreate_date() {
		return create_date;
	}

	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}

	public String getDelete_flag() {
		return delete_flag;
	}

	public void setDelete_flag(String delete_flag) {
		this.delete_flag = delete_flag;
	}

	@Override
	public String toString() {
		return "Notice [notice_no=" + notice_no + ", notice_title=" + notice_title + ", notice_content="
				+ notice_content + ", master_no=" + master_no + ", create_date=" + create_date + ", delete_flag="
				+ delete_flag + "]";
	}


}