package com.carshop.board;

import java.util.List;
import java.util.Map;

public interface BoardService {

	//C
	void setNewBoard(Board board);
	
	//R
	List<Board> getAllBoardList();
	
	Board getBoardById(int bid);

	//U
	void updateAuth(Map<String, Object> auth);
	
	void updateEnabled(Map<String, Object> enable);

	//D
	void removeBoard(String username);
	
}
