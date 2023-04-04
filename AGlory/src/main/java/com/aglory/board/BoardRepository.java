package com.aglory.board;

import java.util.List;
import java.util.Map;

public interface BoardRepository {

	//C
	void setNewBoard(Board board);// 게시물 작성 
	
	void setNewBoardx(Map<String, Object> map);// 게시물 작성 AJAX용
	
	void replynewBoard(Map<String, Object> map);// 댓글 작성 

	//R
	List<Board> getAllBoardList();// 게시물 목록 
	
	Board getBoardById(String bid);// 게시물 하나 
	
	List<Board> getReplyById(String bid);// 댓글 목록 

	//U
	void editStatus(Map<String, Object> status);// 게시물 상태 수정
	
	void editBoard(Board board);// 게시물 수정
	
//	void editReply(Map<String, Object> reply);//댓글 내용 수정 

	//D
	void removeBoard(String bid);// 게시물 삭제 
	
	void removeReply(String bid);// 댓글 삭제 
	
}
