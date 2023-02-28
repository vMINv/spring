package com.carshop.board;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public class BoardRepositoryImpl implements BoardRepository {
	
	private List<BoardDTO> listOfBoards = new ArrayList<BoardDTO>();
	
	public BoardRepositoryImpl() {
		BoardDTO board1 = new BoardDTO("안녕하세요","처음 뵙겠습니다","작성자1","2023.02.27");
		BoardDTO board2 = new BoardDTO("첫 글","첫 글입니다","작성자2","2023.02.27");
		BoardDTO board3 = new BoardDTO("Hi","Hello","작성자3","2023.02.27");
		
		listOfBoards.add(board1);
		listOfBoards.add(board2);
		listOfBoards.add(board3);
	}
	
	@Override
	public List<BoardDTO> getAllBoardList() {
		return listOfBoards;
	}

}
