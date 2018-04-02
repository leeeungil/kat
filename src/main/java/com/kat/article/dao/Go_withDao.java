package com.kat.article.dao;

import java.util.List;

import com.kat.article.model.Go_with;

public interface Go_withDao {

	//동행글 작성하기
	public void go_withInsert(Go_with go_with);

	//전체 동행글 갯수
	public int goWithSelectCount();

	//전체 동행글 리스트
	public List<Go_with> goWithList(int firstRow, int messageCountPerPage);

}
