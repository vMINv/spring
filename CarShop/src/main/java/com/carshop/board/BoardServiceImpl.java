package com.carshop.board;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardRepository boardRepository;
	
	@Override
	public void setNewBoard(Board board) {
		boardRepository.setNewBoard(board);
	}

	@Override
	public List<Board> getAllBoardList() {
		return boardRepository.getAllBoardList();
	}

	@Override
	public Board getBoardById(int bid) {
		return boardRepository.getBoardById(bid);
	}
	
	@Override
	public void updateAuth(Map<String, Object> auth) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateEnabled(Map<String, Object> enable) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void removeBoard(String username) {
		// TODO Auto-generated method stub
		
	}

	
}
