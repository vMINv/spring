package com.springmvc.controller;

import java.util.List;
import java.util.Map;

public interface Repository {
	
	void newBoard(Board board);// 게시물 작성
	
	void newReply(Reply reply);// 댓글 작성
	
	List<Board> boardList();// 게시물 목록 
	
	Board boardById(String bid);// 게시물 하나 
	
	void updateViewCnt(String bid);// 조회수 증가 
	
	List<Board> replyList(String bid);// 댓글 목록 
	
	void editBoard(Board board);// 게시물 수정
	
	void editReply(Reply reply);// 댓글 수정 ? 
	void editReply(Map<String, Object> reply);// 댓글 수정 ? ajax 
	
	void removeBoard(String bid);// 게시물 삭제 
		
	void removeReply(String bid);// 댓글 삭제 
}
