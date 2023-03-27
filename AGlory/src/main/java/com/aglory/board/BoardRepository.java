package com.aglory.board;

import java.util.List;
import java.util.Map;

public interface BoardRepository {

	//C
	void setNewBoard(Board board);//게시물 작성 
	
	void replynewBoard(Map map);//댓글 작성 

	//R
	List<Board> getAllBoardList();//게시물 전체 목록 
	
	Board getBoardById(String bid);//게시물 하나 
	
	List<Board> getReplyById(String bid);//댓글 전체 목록 

//	//U
//	void updateBoard(Map<String, Object> board);//게시물 수정 
//	
//	void updateReply(Map<String, Object> reply);//댓글 내용 수정 
//	
//	//D
//	void removeBoard(String bid);//게시물 삭제 
	
}
