package com.kat.article.dao;
import java.util.List;

import com.kat.article.model.Reply;

public interface ReplyDao {
	
	public void create(Reply reply);

	public int count(int bno);

	public List<Reply> list(int bno, int start, int end);

	

}
