package com.kat.article.dao;

import java.util.List;

import com.kat.article.model.Board;

public interface BoardDao {

	public void boardinsert(Board board);

	public int boardselectCount();

	public List<Board> boardList(String user_id, int firstRow, int messageCountPerPage);

	public Board info(int no);

	public Board getinfo(int no);

	public void boardupdate(Board board);

	public void boarddelete(Board board);

	public List<Board> mboardList(int firstRow, int messageCountPerPage);

	public int boardselectCount_id(String user_id);

}
