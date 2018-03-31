package com.kat.article.dao;

import java.util.List;

import com.kat.article.model.Ask_to;

public interface Ask_toDao {

	//고객문의하기 작성 
	public void askInsert(Ask_to ask_to);

	//아이디당 고객문의글 갯수
	public int ask_toSelectCount_id(String user_id);
    
	//아이디당 고객문의글 리스트
	public List<Ask_to> ask_toList(String user_id, int firstRow, int messageCountPerPage);

	//문의리스트의 해당 글번호의 상세내용 가져오기
	public Ask_to detailInfo(int no);

	//문의리스트의 해당 글번호의 수정할 내용 가져오기
	public Ask_to getaskInfo(int no);

	//문의하기 특정글의 수정할 데이터 입력
	public void askUpdate(Ask_to ask_to);

	
}
