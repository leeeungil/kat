package com.kat.article.model;

import java.util.Date;

public class Reply {
	
	private int rno; //댓글번호
	private int bno; //게시글번호
	private String replytext; //댓글내용
	private String replyer; //댓글작성자
	private String userName; //댓글작성자의 이름(뢰원의이름)
	private Date regdate; //댓글 작성일자
	private Date updatedate; //댓글 수정일자
	private String secretReply; //댓글 숨김유무추가
	private String writer; //게시글의 작성자추가
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getReplytext() {
		return replytext;
	}
	public void setReplytext(String replytext) {
		this.replytext = replytext;
	}
	public String getReplyer() {
		return replyer;
	}
	public void setReplyer(String replyer) {
		this.replyer = replyer;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Date getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}
	public String getSecretReply() {
		return secretReply;
	}
	public void setSecretReply(String secretReply) {
		this.secretReply = secretReply;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	@Override
	public String toString() {
		return "Reply [rno=" + rno + ", bno=" + bno + ", replytext=" + replytext + ", replyer=" + replyer
				+ ", userName=" + userName + ", secretReply=" + secretReply + ", writer=" + writer + "]";
	}
	
	


}
