package com.kat.article.dao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kat.article.model.Comment;

public interface CommentDao {

	//댓글입력
	void commentInsert(Comment comment);

	Object execute(HttpServletRequest request, HttpServletResponse response);

}
