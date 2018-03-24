package com.kat.seat.model;

import java.util.Date;

public class ReservationBreakdown {

	private int file_no; // 좌석 기본키
	private String reservation_id; // 예약한 좌석 아이디
	private Date reservation_time; // 예약한 시간
	private String reservation_phone; // 예약자 전화번호

	public int getFile_no() {
		return file_no;
	}

	public void setFile_no(int file_no) {
		this.file_no = file_no;
	}

	public String getReservation_id() {
		return reservation_id;
	}

	public void setReservation_id(String reservation_id) {
		this.reservation_id = reservation_id;
	}

	public Date getReservation_time() {
		return reservation_time;
	}

	public void setReservation_time(Date reservation_time) {
		this.reservation_time = reservation_time;
	}

	public String getReservation_phone() {
		return reservation_phone;
	}

	public void setReservation_phone(String reservation_phone) {
		this.reservation_phone = reservation_phone;
	}

	@Override
	public String toString() {
		return "ReservationBreakdown [file_no=" + file_no + ", reservation_id=" + reservation_id + ", reservation_time="
				+ reservation_time + ", reservation_phone=" + reservation_phone + "]";
	}

}
