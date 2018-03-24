package com.kat.seat.model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class SeatInfo {

	private int file_no; // 매장 번호
	private int file_seat; // 좌석 수
	private String file_seatphoto; // DB 저장용 사진
	private MultipartFile seatPhotoFile; // 사진 업로드 처리위한 변수
	private Date create_date; // 업로드 시간
	private String user_id; // 아이디 값
	private String seat_status; // 매장 예약 가능상태
	private String reservation_id; // 예약한 아이디
	private String Delete_seat; // 삭제여부

	public int getFile_no() {
		return file_no;
	}

	public void setFile_no(int file_no) {
		this.file_no = file_no;
	}

	public int getFile_seat() {
		return file_seat;
	}

	public void setFile_seat(int file_seat) {
		this.file_seat = file_seat;
	}

	public String getFile_seatphoto() {
		return file_seatphoto;
	}

	public void setFile_seatphoto(String file_seatphoto) {
		this.file_seatphoto = file_seatphoto;
	}

	public MultipartFile getSeatPhotoFile() {
		return seatPhotoFile;
	}

	public void setSeatPhotoFile(MultipartFile seatPhotoFile) {
		this.seatPhotoFile = seatPhotoFile;
	}

	public Date getCreate_date() {
		return create_date;
	}

	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
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

	public String getDelete_seat() {
		return Delete_seat;
	}

	public void setDelete_seat(String delete_seat) {
		Delete_seat = delete_seat;
	}

	@Override
	public String toString() {
		return "SeatInfo [file_no=" + file_no + ", file_seat=" + file_seat + ", file_seatphoto=" + file_seatphoto
				+ ", seatPhotoFile=" + seatPhotoFile + ", create_date=" + create_date + ", user_id=" + user_id
				+ ", seat_status=" + seat_status + ", reservation_id=" + reservation_id + ", Delete_seat=" + Delete_seat
				+ "]";
	}

}
