package com.kat.master.dao;


import java.util.List;

import com.kat.master.model.Notice;

public interface NoticeDao {

	public void noticeinsert(Notice notice);

	public int noticeselectcount();

	public List<Notice> noticeList(String user_id, int firstRow, int messageCountPerPage);

	public Notice info(int no);

	public void noticeUpdate(Notice notice);

	public Notice getinfo(int no);

	public void noticedelete(Notice notice);

	public List<Notice> noticeListmaster(int firstRow, int messageCountPerPage);

	

}
