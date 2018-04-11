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

	//특정번호의 동행글 가져오기
	public Go_with gowithInfo(int go_with_no);

	//특정번호의 수정할 내용 가져오기
	public Go_with sendgowithUpdateInfo(int no);

	//특정번호의 수정글 작성하기
	public void gowithUpdate(Go_with go_with);

	//특정번호의 글 삭제하기
	public void go_withDelete(Go_with go_with);

}
