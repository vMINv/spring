package com.aglory.board;

import java.util.List;
import java.util.Map;

import com.aglory.member.Member;

public interface BoardRepository {

	//C
	void setNewBoard(Board board);//게시물 작성 
	
	void setNewBoardx(Map map);//게시물 작성 
	
	void replynewBoard(Map map);//댓글 작성 

	//R
	List<Board> getAllBoardList();//게시물 전체 목록 
	
	Board getBoardById(String bid);//게시물 하나 
	
	List<Board> getReplyById(String bid);//댓글 전체 목록 

	//U
	void editStatus(Map<String, Object> status);//게시물 상태 수정
	
	void editBoard(Board board);//게시글 수정
	
//	void updateReply(Map<String, Object> reply);//댓글 내용 수정 

	//D
	void removeBoard(String bid);//게시글 삭제 
	
	void removeReply(String bid);//댓글 삭제 
	
}
