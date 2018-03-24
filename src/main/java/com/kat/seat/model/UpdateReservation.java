package com.kat.seat.model;

public class UpdateReservation {

	private int file_no; // 좌석 번호
	private String seat_status; // 좌석 상태
	private String reservation_id; // 예약 아이디

	public int getFile_no() {
		return file_no;
	}

	public void setFile_no(int file_no) {
		this.file_no = file_no;
	}

	public String getSeat_status() {
		return seat_status;
	}

	public void setSeat_status(String seat_status) {
		this.seat_status = seat_status;
	}

	public String getReservation_id() {
		return reservation_id;
	}

	public void setReservation_id(String reservation_id) {
		this.reservation_id = reservation_id;
	}

	@Override
	public String toString() {
		return "UpdateReservation [file_no=" + file_no + ", seat_status=" + seat_status + ", reservation_id="
				+ reservation_id + "]";
	}

}
