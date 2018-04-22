package com.kat.article.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.kat.article.model.Reply;

public interface ReplyService {

	 // 댓글 목록
    public List<Reply> list(int bno, int start, int end, HttpSession session);
    // 댓글 입력
    public void create(Reply reply);
    // 댓글 수정
    public void update(Reply reply);
    // 댓글 삭제
    public void delete(int rno);
    // 댓글 갯수
    public int count(int bno);
}
