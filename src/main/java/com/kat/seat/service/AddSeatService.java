package com.kat.seat.service;

import java.util.Date;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kat.seat.dao.SeatDao;
import com.kat.seat.model.Breakdown;
import com.kat.seat.model.BreakdownListView;
import com.kat.seat.model.ReservationBreakdown;
import com.kat.seat.model.SeatInfo;
import com.kat.seat.model.SeatPosition;
import com.kat.seat.model.Shop_re_name_phone;
import com.kat.seat.model.UserBreakdown;
import com.kat.seat.model.UserBreakdownListView;
import com.kat.seat.model.UserReInfo;

public class AddSeatService {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	private SeatDao dao;

	// 좌석 집어넣기
	public void addSeat(SeatInfo seatInfo) {

		dao = sqlSessionTemplate.getMapper(SeatDao.class);

		seatInfo.setCreate_date(new Date());

		dao.insertSeat(seatInfo);
	}

	// 리스트 페이지 //2018.03.28 이은길주석처리
	/*private static final int MESSAGE_COUNT_PER_PAGE = 3; // 한 페이지에 출력할 데이터

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

	}*/

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

	//2018.03.28 이은길주석처리
	/*public SeatInfoListView getSeatListall(String id) {

		dao = sqlSessionTemplate.getMapper(SeatDao.class);

		SeatInfoListView view = new SeatInfoListView();
		List<SeatInfo> seatList = null;
		int firstRow = 0;

		int TotalCount = dao.seatSelectCount(id);

		seatList = dao.seatList(id, firstRow, TotalCount);

		view.setSeatInfoList(seatList);
		view.setPageTotalCount(TotalCount);

		return view;
	}*/

	// 예약할 좌석 리스트 가져오기 //2018.03.28 이은길주석처리
	/*public SeatInfoListView SeatListView(String shop) {
		dao = sqlSessionTemplate.getMapper(SeatDao.class);

		SeatInfoListView view = new SeatInfoListView();
		List<SeatInfo> seatList = null;
		int firstRow = 0;

		int TotalCount = dao.seatSelectCount(shop);

		seatList = dao.seatList(shop, firstRow, TotalCount);

		view.setSeatInfoList(seatList);
		view.setPageTotalCount(TotalCount);

		return view;
	}*/

	// JSON 사용  //2018.03.28 이은길주석처리
	/*public ArrayList<SeatInfo> SeatReservation(String shop) {

		dao = sqlSessionTemplate.getMapper(SeatDao.class);
		ArrayList<SeatInfo> seatList = new ArrayList<SeatInfo>();
		int firstRow = 0;

		int TotalCount = dao.seatSelectCount(shop);

		seatList = dao.seatReservation(shop, firstRow, TotalCount);

		return seatList;
	}*/

	// 선택된 예약 좌석 정보 가져오기
	public SeatInfo paymentView(int shop) {
		dao = sqlSessionTemplate.getMapper(SeatDao.class);

		SeatInfo seatinfo = dao.selectSeat(shop);

		return seatinfo;
	}

	// 좌석 예약 상태확인후 결제
	public int getseatpayment(int seatno) {
		dao = sqlSessionTemplate.getMapper(SeatDao.class);

		String seatPayment = dao.getseatPayment(seatno);

		int result = 0;

		if (seatPayment.equals("예약가능")) {
			result = 1;
		} else if (seatPayment.equals("예약불가")) {
			result = 2;
		} else {
			System.out.println("여기들어연 코딩 잘못했다. 체크해라");
			result = 3;
		}

		return result;
	}

	// 예약 상태 널인지 체크하기
	public int chkReservation_id(int seat) {

		dao = sqlSessionTemplate.getMapper(SeatDao.class);

		int nullcode = 0;
		String chk = dao.nullchk(seat);

		if (chk.equals("비어있음")) {
			nullcode = 1;
		}

		return nullcode;
	}

	// 예약 성공
	public void seatReservationSucess(String userid, int seat) {

		dao = sqlSessionTemplate.getMapper(SeatDao.class);
		ReservationBreakdown reservationBreakdown = new ReservationBreakdown();

		String seat_status = "예약불가";
		Date recentTime = new Date();

		dao.seatReservationSucess(userid, seat_status, recentTime, seat);
		String reservation_phone = dao.reservation_phone(userid); // 예약자 전화번호 가져오기

		reservationBreakdown.setReservation_time(new Date());
		reservationBreakdown.setReservation_id(userid);
		reservationBreakdown.setFile_no(seat);
		reservationBreakdown.setReservation_phone(reservation_phone);

		dao.setBreakdown(reservationBreakdown);

	}

	private static final int BREAKDOWN_PAGE = 10; // 한 페이지에 출력할 예약내역 데이터

	// 예약내역 가져오기
	public BreakdownListView getbreakdown(String userid, int pageNumber) {

		dao = sqlSessionTemplate.getMapper(SeatDao.class);

		BreakdownListView view = new BreakdownListView();
		List<Breakdown> BreakdownList = null;
		int PageNumber;
		int firstRow = 0;

		int TotalCount = dao.BreakdownCount(userid);

		firstRow = (pageNumber - 1) * BREAKDOWN_PAGE;

		BreakdownList = dao.BreakdownListList(userid, firstRow, BREAKDOWN_PAGE);

		PageNumber = TotalCount / BREAKDOWN_PAGE;

		if (TotalCount % BREAKDOWN_PAGE != 0) {
			PageNumber += 1;
		}

		view.setShopInfoList(BreakdownList);
		view.setPageTotalCount(TotalCount);
		view.setPageNumber(PageNumber);

		return view;

	}

	// 예약한 정보 가져오기
	public SeatInfo InfoReservationSeat(int seat) {

		dao = sqlSessionTemplate.getMapper(SeatDao.class);

		SeatInfo seatInfo = new SeatInfo();
		seatInfo = dao.getSeat(seat);

		return seatInfo;
	}

	// 예약자 예약 정보 넣기
	public void setRe_user(UserReInfo userReInfo) {

		dao = sqlSessionTemplate.getMapper(SeatDao.class);
		dao.insertRe_user(userReInfo);

	}

	// 매장 이름 가져오기
	public Shop_re_name_phone shopName(String shop_id) {

		dao = sqlSessionTemplate.getMapper(SeatDao.class);

		Shop_re_name_phone shop_name_phone = dao.shopName_phone(shop_id);

		System.out.println("shop_name_phone =" + shop_name_phone);

		return shop_name_phone;
	}

	// 접속자 이메일 가져오기 메일 보내기 위해서!
	public String userEmail(String userid) {
		dao = sqlSessionTemplate.getMapper(SeatDao.class);
		String email = dao.userEmail(userid);

		return email;
	}

	// 현재 좌석이 예약이 비어있는지 확인후 삭제
	public String seatEmpty(int no) {

		dao = sqlSessionTemplate.getMapper(SeatDao.class);
		String seatEmpty = dao.getseatEmpty(no);

		return seatEmpty;
	}

	private static final int USERBREAKDOWN_PAGE = 10; // 한 페이지에 출력할 예약내역 데이터
	
	
	// 일반회원 예약내역 가져오기
	public UserBreakdownListView getUserbreakdown(String userid, int pageNumber) {

		dao = sqlSessionTemplate.getMapper(SeatDao.class);

		UserBreakdownListView view = new UserBreakdownListView();
		List<UserBreakdown> userBreakdownList = null;
		int PageNumber;
		int firstRow = 0;

		int TotalCount = dao.BreakdownCountUser(userid);

		firstRow = (pageNumber - 1) * USERBREAKDOWN_PAGE;

		userBreakdownList = dao.BreakdownListListUser(userid, firstRow, USERBREAKDOWN_PAGE);

		PageNumber = TotalCount / USERBREAKDOWN_PAGE;

		if (TotalCount % USERBREAKDOWN_PAGE != 0) {
			PageNumber += 1;
		}

		view.setShopInfoList(userBreakdownList);
		view.setPageTotalCount(TotalCount);
		view.setPageNumber(PageNumber);

		return view;
	}

	// 좌석 위치 저장
	public void insertPosition(String userid) {
		dao = sqlSessionTemplate.getMapper(SeatDao.class);
		
		SeatPosition SeatPosition = new SeatPosition();
		SeatPosition.setUser_id(userid);
		SeatPosition.setSeat_position(userid+".html");
		dao.insertPosition(SeatPosition);
	}

	// 좌석위치 등록 여부확인
	public String Position(String userid) {
		dao = sqlSessionTemplate.getMapper(SeatDao.class);
		String po = dao.Position(userid);
		
		return po;
	}
}
