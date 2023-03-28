package com.aglory.board;

import java.util.List;
import java.util.Map;

public interface BoardService {

	void setNewBoard(Board board);
	
	void replynewBoard(Map map);

	List<Board> getAllBoardList();
	
	Board getBoardById(String bid);
	
	List<Board> getReplyById(String bid);
	
	void editStatus(Map<String, Object> status);
	
	void editBoard(Board board);

	//	void updateReply(Map<String, Object> reply);
	
	void removeBoard(String bid);
	
	void removeReply(String bid);
}
