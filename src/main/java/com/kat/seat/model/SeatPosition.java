package com.kat.seat.model;

public class SeatPosition {

	private String user_id; // 매장 아이디
	private String seat_position; // 매장위치 저장 파일이름

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getSeat_position() {
		return seat_position;
	}

	public void setSeat_position(String seat_position) {
		this.seat_position = seat_position;
	}

	@Override
	public String toString() {
		return "SeatPosition [user_id=" + user_id + ", seat_position=" + seat_position + "]";
	}

}
