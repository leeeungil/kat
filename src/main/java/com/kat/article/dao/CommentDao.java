package com.kat.article.dao;

import java.util.List;

import com.kat.article.model.Comment;


public interface CommentDao {

	//댓글입력
	public void commentInsert(Comment comment);

    //댓글갯수
	public int commentSelectCount(int go_with_no);

	//댓글리스트
	public List<Comment> commentList(int go_with_no,int firstRow, int messageCountPerPage);
	
}
