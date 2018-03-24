package com.kat.seat.model;

public class PaymentInfo {

	private String chkid; // 매장 아이디
	private int chkno; // 좌석 키

	public String getChkid() {
		return chkid;
	}

	public void setChkid(String chkid) {
		this.chkid = chkid;
	}

	public int getChkno() {
		return chkno;
	}

	public void setChkno(int chkno) {
		this.chkno = chkno;
	}

	@Override
	public String toString() {
		return "PaymentInfo [chkid=" + chkid + ", chkno=" + chkno + "]";
	}

}
