//작성자 : 심현민
//최초 작성일 : 23.04.04
package com.church.service;

import java.util.List;
import java.util.Map;

import com.church.domain.Board;

public interface BoardService {
	
	void newBoard(Board board);
	
	List<Board> boardList();
	
	Board boardById(String bno);

	void editBoard(Map<String, Object> board);
	
	void updateView(Map<String, Object> boardView);
	
	void updateReplyCnt(Map<String, Object> replyCnt);
	
	void removeBoard(String bno); 
}
