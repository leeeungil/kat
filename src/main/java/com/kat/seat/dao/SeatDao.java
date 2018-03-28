package com.kat.seat.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.kat.seat.model.Breakdown;
import com.kat.seat.model.ReservationBreakdown;
import com.kat.seat.model.SeatInfo;
import com.kat.seat.model.SeatPosition;
import com.kat.seat.model.Shop_re_name_phone;
import com.kat.seat.model.UpdateReservation;
import com.kat.seat.model.UserBreakdown;
import com.kat.seat.model.UserReInfo;

public interface SeatDao {

	// 좌석 데이터 등록
	public void insertSeat(SeatInfo seatInfo);

	// 데이터 리스트 수 //2018.03.28 이은길주석처리
	/*public int seatSelectCount(String id);*/

	// 좌석 리스트 담기
	public List<SeatInfo> seatList(String id, int firstRow, int messageCountPerPage);

	// 좌석 수정 데이터 가져오기
	public SeatInfo getSeatinfo(int no);

	// 좌석 (수정)업데이트
	public void seatUpdate(SeatInfo seatInfo);

	// 좌석 삭제
	public void seatdelete(String delete, String seat_status, int no);

	// 예약 가능 상태 업데이트
	public void reservationUpdate(UpdateReservation update);
	
	// 예약 가능 상태 업데이트
	public void reservationUpdateopen(UpdateReservation update);

	// 예약 리스트 JSON
	public ArrayList<SeatInfo> seatReservation(String shop, int firstRow, int totalCount);

	// 선택된 좌석 데이터
	public SeatInfo selectSeat(int shop);

	// 좌석 예약 가능 상태 여부 체크
	public String getseatPayment(int seatno);

	// 예약 상태 체크
	public String nullchk(int seat);

	// 좌석 예약 처리
	public void seatReservationSucess(String userid, String seat_status, Date recentTime, int seat);

	// 예약내역 정보 넣기
	public void setBreakdown(ReservationBreakdown reservationBreakdown);

	// 예약리스트 수
	public int BreakdownCount(String userid);
	
	// 예약내역 리스트로 담기
	public List<Breakdown> BreakdownListList(String userid, int firstRow, int messageCountPerPage);

	// 예약자 전화번호 가져오기
	public String reservation_phone(String userid);

	// 예약 정보 가져오기
	public SeatInfo getSeat(int seat);

	// 예약자 예약정보 넣기
	public void insertRe_user(UserReInfo userReInfo);

	// 매장 이름 가져오기
	public Shop_re_name_phone shopName_phone(String shop_id);

	// 예약자 이메일 가져오기
	public String userEmail(String userid);

	// 좌석 최근 예약시간
	public Date retime(int no);

	// 현재 좌석이 예약이 비어있는지 확인후 삭제
	public String getseatEmpty(int no);
	
	// 예약불가 몇개인지 확인
	public int getseatR_size(String userid);

	// 좌석 예약닫기로 했는지 확인 메소드
	public int getseatR_close(String userid);

	// 일반유저 예약내역 수
	public int BreakdownCountUser(String userid);

	// 일반유저 예약내역 정보
	public List<UserBreakdown> BreakdownListListUser(String userid, int firstRow, int userbreakdownPage);

	// 처음 매장 좌석위치 등록
	public void insertPosition(SeatPosition seatPosition);

	// 좌석 등록 여부 확인
	public String Position(String userid);


}
