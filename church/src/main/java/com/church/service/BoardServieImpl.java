//작성자 : 심현민
//최초 작성일 : 23.04.04
package com.church.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.church.domain.Board;
import com.church.mapper.BoardMapper;

@Service
public class BoardServieImpl implements BoardService {

	@Autowired
	BoardMapper boardMapper;

	@Override
	public void newBoard(Board board) {
		boardMapper.newBoard(board);
	}

	@Override
	public List<Board> boardList() {
		return boardMapper.boardList();
	}

	@Override
	public Board boardById(String bno) {
		return boardMapper.boardById(bno);
	}

	@Override
	public void editBoard(Map<String, Object> board) {
		boardMapper.editBoard(board);
	}

	@Override
	public void updateView(Map<String, Object> boardView) {
		boardMapper.updateView(boardView);
	}

	@Override
	public void updateReplyCnt(Map<String, Object> replyCnt) {
		boardMapper.updateReplyCnt(replyCnt);
	}

	@Override
	public void removeBoard(String bno) {
		boardMapper.removeBoard(bno);
	}

}
