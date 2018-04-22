package com.kat.article.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kat.article.dao.BoardDao;
import com.kat.article.dao.ReplyDao;
import com.kat.article.model.Reply;

@Service
public class ReplyServiceImpl implements ReplyService  {

	@Inject
	private ReplyDao replyDao;
	
	//댓글 작성
	public void create(Reply reply) {
		replyDao.create(reply);
		
	}

	//댓글 갯수
	public int count(int bno) {
		return replyDao.count(bno);
	}

	//댓글 목록
	public List<Reply> list(int bno, int start, int end, HttpSession session) {
		List<Reply>items = replyDao.list(bno,start,end);
		
		String user_id = (String)session.getAttribute("user_id");
		for(Reply reply:items) {
			if(reply.getSecretReply().equals("y")) {
				reply.setReplytext("비밀 댓글입니다.");
			}else{
				String writer = reply.getWriter();
				String replyer = reply.getReplyer();
				
				if(!user_id.equals(writer)&&!user_id.equals(replyer)) {
					reply.setReplytext("비밀 댓글입니다.");
				}
			}
		}
		return items;
	}

	@Override
	public void update(Reply reply) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int rno) {
		// TODO Auto-generated method stub
		
	}

}
