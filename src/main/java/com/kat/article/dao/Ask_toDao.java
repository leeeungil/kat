package com.kat.article.dao;

import java.util.List;

import com.kat.article.model.Ask_to;

public interface Ask_toDao {

	//고객문의하기 작성 
	void askInsert(Ask_to ask_to);

	//아이디당 고객문의글 갯수
	int ask_toSelectCount_id(String user_id);
    
	//아이디당 고객문의글 리스트
	List<Ask_to> ask_toList(String user_id, int firstRow, int messageCountPerPage);

	
}
