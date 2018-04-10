package com.kat.article.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kat.article.dao.CommentDao;
import com.kat.article.model.Comment;
import com.kat.article.model.CommentInfoListView;

public class CommentService {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	private CommentDao dao;

	public void commentInsert(Comment comment) {
System.out.println("[CommentService commentInsert] ACCESS SUCCESS");		
		dao = sqlSessionTemplate.getMapper(CommentDao.class);
System.out.println("[CommentService commentInsert] comment : "+ comment.toString());		
		dao.commentInsert(comment);
	}

	//댓글 리스트 
	private CommentDao commentdao;
	private static final int MESSAGE_COUNT_PER_PAGE = 5;
	
	public CommentInfoListView sendCommentList(int pageNumber) {
System.out.println("[CommentService sendCommentList()] ACCESS SUCCESS");		
		commentdao = sqlSessionTemplate.getMapper(CommentDao.class);
		CommentInfoListView view = new CommentInfoListView();
		List<Comment> commentList = null;
		int PageNumber;
		int firstRow = 0;
		
		int TotalCount = commentdao.commentSelectCount();
System.out.println("[CommentService sendCommentList()] TotalCount :" + TotalCount);
		firstRow = (pageNumber - 1) * MESSAGE_COUNT_PER_PAGE;
		commentList = commentdao.commentList(firstRow,MESSAGE_COUNT_PER_PAGE);
System.out.println("[CommentService sendCommentList()] commentList :" + commentList.toString());		
		PageNumber = TotalCount / MESSAGE_COUNT_PER_PAGE;
System.out.println("[CommentService sendCommentList()] PageNumber :" + PageNumber);	
System.out.println("[CommentService sendCommentList()] TotalCount :" + TotalCount);	
		if(TotalCount % MESSAGE_COUNT_PER_PAGE != 0) {
			PageNumber += 1;
		}
		view.setCommentList(commentList);
		view.setPageTotalCount(TotalCount);
		view.setPageNumber(PageNumber);
		return view;
	}

}
