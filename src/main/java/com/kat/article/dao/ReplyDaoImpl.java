package com.kat.article.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kat.article.model.Reply;

@Repository
public class ReplyDaoImpl implements ReplyDao {
    @Inject
	SqlSession sqlSession;
	
    //댓글작성
	@Override
	public void create(Reply reply) {
		sqlSession.insert("reply.insertReply",reply);
		
	}
    //댓글갯수
	@Override
	public int count(int bno) {
		return sqlSession.selectOne("reply.countReply", bno);
	}

	//댓글목록
	@Override
	public List<Reply> list(int bno, int start, int end) {
		Map<String,Object>map = new HashMap<String,Object>();
		map.put("bno", bno);
		map.put("start", start);
		map.put("end", end);
		return sqlSession.selectList("reply.listReply",map);
	}
	
	

}
