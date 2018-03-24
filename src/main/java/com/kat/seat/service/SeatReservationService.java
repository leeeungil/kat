package com.kat.seat.service;

import java.util.Date;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kat.seat.dao.SeatDao;
import com.kat.seat.model.SeatInfo;
import com.kat.seat.model.SeatInfoListView;
import com.kat.seat.model.UpdateReservation;

public class SeatReservationService {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	private SeatDao dao;

	// 좌석 집어넣기
	public void addSeat(SeatInfo seatInfo) {

		dao = sqlSessionTemplate.getMapper(SeatDao.class);

		seatInfo.setCreate_date(new Date());

		dao.insertSeat(seatInfo);
	}

	// 좌석 예약 리스트 페이지
	private static final int MESSAGE_COUNT_PER_PAGE = 5; // 한 페이지에 출력할 데이터

	public SeatInfoListView getSeatList(String id, int pageNumber) {

		dao = sqlSessionTemplate.getMapper(SeatDao.class);

		SeatInfoListView view = new SeatInfoListView();
		List<SeatInfo> seatList = null;
		int PageNumber;
		int firstRow = 0;

		int TotalCount = dao.seatSelectCount(id);

		firstRow = (pageNumber - 1) * MESSAGE_COUNT_PER_PAGE;

		seatList = dao.seatList(id, firstRow, MESSAGE_COUNT_PER_PAGE);

		PageNumber = TotalCount / MESSAGE_COUNT_PER_PAGE;

		if (TotalCount % MESSAGE_COUNT_PER_PAGE != 0) {
			PageNumber += 1;
		}

		view.setSeatInfoList(seatList);
		view.setPageTotalCount(TotalCount);
		view.setPageNumber(PageNumber);

		return view;

	}

	// 업데이트 할 좌석 데이터 가져오기
	public SeatInfo getseatUpdateInfo(int no) {

		dao = sqlSessionTemplate.getMapper(SeatDao.class);
		SeatInfo info = dao.getSeatinfo(no);

		return info;
	}

	// 좌석 수정하기
	public void seatUpdate(SeatInfo seatInfo) {

		dao = sqlSessionTemplate.getMapper(SeatDao.class);
		dao.seatUpdate(seatInfo);
	}

	// 좌석 삭제하기
	public void seatdelete(int no) {

		dao = sqlSessionTemplate.getMapper(SeatDao.class);
		
		String delete = "삭제";
		String seat_status = "예약불가";
		
		dao.seatdelete(delete, seat_status, no);

	}

	// 좌석 리스트 전체 가져오기
	public SeatInfoListView getSeatListall(String id) {

		dao = sqlSessionTemplate.getMapper(SeatDao.class);

		SeatInfoListView view = new SeatInfoListView();
		List<SeatInfo> seatList = null;
		int firstRow = 0;

		int TotalCount = dao.seatSelectCount(id);

		seatList = dao.seatList(id, firstRow, TotalCount);

		view.setSeatInfoList(seatList);
		view.setPageTotalCount(TotalCount);

		return view;
	}

	// 예약 가능 상태 업데이트
	public void reservationUpdate(UpdateReservation update) {

		dao = sqlSessionTemplate.getMapper(SeatDao.class);

		if (update.getSeat_status().equals("close")) {
			update.setSeat_status("예약불가");
			dao.reservationUpdate(update);
		} else if (update.getSeat_status().equals("open")) {
			update.setSeat_status("예약가능");
			update.setReservation_id("비어있음");
			dao.reservationUpdateopen(update);
		} else {
			System.out.println("이상한 값 들어옴");
		}

		System.out.println("여기 들어오냐" + update.toString());

	}

	// 좌석 최근 예약 시간 가져오기
	public Date recentTime(int no) {

		dao = sqlSessionTemplate.getMapper(SeatDao.class);

		Date retime = dao.retime(no);

		return retime;
	}

	// 예약소리 체크를 위한 메소드
	public int getseatR_size(String userid) {
		
		dao = sqlSessionTemplate.getMapper(SeatDao.class);
		
		int seatR_size = dao.getseatR_size(userid);
		
		return seatR_size;
	}

	// 좌석 예약닫기로 했는지 확인 메소드
	public int getseatR_close(String userid) {
		
		dao = sqlSessionTemplate.getMapper(SeatDao.class);
		int seatR_close = dao.getseatR_close(userid);
		
		return seatR_close;
	}
}
