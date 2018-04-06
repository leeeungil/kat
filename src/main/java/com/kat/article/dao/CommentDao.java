package com.kat.article.dao;

import java.util.List;

import com.kat.article.model.Comment;


public interface CommentDao {

	//댓글입력
	public void commentInsert(Comment comment);

    //댓글갯수
	public int commentSelectCount(int cmt_parent);

	//댓글리스트
	public List<Comment> commentList(int cmt_parent,int firstRow, int messageCountPerPage);
	
}
