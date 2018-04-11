package com.kat.article.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kat.article.dao.CommentDao;
import com.kat.article.model.Comment;
import com.kat.article.model.CommentInfoListView;

public class CommentListService {

    @Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	//댓글 리스트 
	private CommentDao commentdao;
	private static final int MESSAGE_COUNT_PER_PAGE = 5;
	
	public CommentInfoListView sendCommentList(int pageNumber,int go_with_no) {
System.out.println("[CommentListService sendCommentList()] ACCESS SUCCESS");		
		commentdao = sqlSessionTemplate.getMapper(CommentDao.class);
		CommentInfoListView commentInfoListView = new CommentInfoListView();
		List<Comment> commentList = null;
		int PageNumber;
		int firstRow = 0;
System.out.println("[CommentListService sendCommentList()] go_with_no :" + go_with_no);		
		int TotalCount = commentdao.commentSelectCount(go_with_no);
System.out.println("[CommentListService sendCommentList()] TotalCount :" + TotalCount);
		firstRow = (pageNumber - 1) * MESSAGE_COUNT_PER_PAGE;
		commentList = commentdao.commentList(go_with_no,firstRow,MESSAGE_COUNT_PER_PAGE);
System.out.println("[CommentListService sendCommentList()] commentList :" + commentList.toString());		
		PageNumber = TotalCount / MESSAGE_COUNT_PER_PAGE;
System.out.println("[CommentListService sendCommentList()] PageNumber :" + PageNumber);	
System.out.println("[CommentListService sendCommentList()] TotalCount :" + TotalCount);	
		if(TotalCount % MESSAGE_COUNT_PER_PAGE != 0) {
			PageNumber += 1;
		}
		commentInfoListView.setCommentList(commentList);
		commentInfoListView.setPageTotalCount(TotalCount);
		commentInfoListView.setPageNumber(PageNumber);
		return commentInfoListView;
	}

}
