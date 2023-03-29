package com.aglory.board;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardRepository boardRepository;
	
	public void setNewBoard(Board board) {
		boardRepository.setNewBoard(board);
	}
	
	public void setNewBoardx(Map map) {
		boardRepository.setNewBoardx(map);
	}
	
	public List<Board> getAllBoardList() {
		return boardRepository.getAllBoardList();
	}
	
	public Board getBoardById(String bid) {
		return boardRepository.getBoardById(bid);
	}
	
	public void replynewBoard(Map map) {
		boardRepository.replynewBoard(map);
	}
	
	public List<Board> getReplyById(String bid) {
		return boardRepository.getReplyById(bid);
	}

	@Override
	public void removeBoard(String bid) {
		boardRepository.removeBoard(bid);
	}

	@Override
	public void removeReply(String bid) {
		boardRepository.removeReply(bid);
	}

	@Override
	public void editStatus(Map<String, Object> status) {
		boardRepository.editStatus(status);
	}

	@Override
	public void editBoard(Board board) {
		boardRepository.editBoard(board);
	}

}
