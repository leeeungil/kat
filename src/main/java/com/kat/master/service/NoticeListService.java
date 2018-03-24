package com.kat.master.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kat.master.dao.NoticeDao;
import com.kat.master.model.Notice;
import com.kat.master.model.NoticeInfoListView;

public class NoticeListService {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	private NoticeDao dao;
	private static final int MESSAGE_COUNT_PER_PAGE = 5;

	public NoticeInfoListView getnoticeList(String user_id, int pageNumber) {

		dao = sqlSessionTemplate.getMapper(NoticeDao.class);

		NoticeInfoListView view = new NoticeInfoListView();
		List<Notice> noticeList = null;
		int PageNumber;
		int firstRow = 0;

		int TotalCount = dao.noticeselectcount();

		firstRow = (pageNumber - 1) * MESSAGE_COUNT_PER_PAGE;

		noticeList = dao.noticeListmaster(firstRow, MESSAGE_COUNT_PER_PAGE);

		PageNumber = TotalCount / MESSAGE_COUNT_PER_PAGE;

		if (TotalCount % MESSAGE_COUNT_PER_PAGE != 0) {
			PageNumber += 1;
		}

		view.setNoticeList(noticeList);
		view.setPageTotalCount(TotalCount);
		view.setPageNumber(PageNumber);

		return view;
	}

	public Notice getinfoUpdate(int no) {
		dao = sqlSessionTemplate.getMapper(NoticeDao.class);
		Notice info = dao.getinfo(no);
		return info;
	}

	public void delete(Notice notice) {
		dao = sqlSessionTemplate.getMapper(NoticeDao.class);
		dao.noticedelete(notice);

	}

}
